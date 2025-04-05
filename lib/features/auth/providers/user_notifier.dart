import 'package:core/core.dart';
import 'package:firefit/config/providers.dart';
import 'package:firefit/env/env.dart';
import 'package:firefit/features/auth/providers/authentication_service_provider.dart';
import 'package:firefit/features/common/providers/providers.dart';
import 'package:fpdart/fpdart.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final userRepositoryProvider = Provider<UserRepositoryInterface>((ref) {
  return UserRepository(talker: ref.read(loggingProvider), env: Environment());
});

class UserState {
  final String? error;
  final bool isLoading;
  final bool isLoggedIn;
  final AuthUser? user;
  final Station? station;

  const UserState({
    this.user,
    this.error,
    this.station,
    required this.isLoading,
    required this.isLoggedIn,
  });

  UserState copyWith({
    String? error,
    bool? isLoading,
    bool? isLoggedIn,
    AuthUser? user,
    Station? station,
  }) {
    return UserState(
      user: user ?? this.user,
      error: error ?? this.error,
      isLoading: isLoading ?? this.isLoading,
      isLoggedIn: isLoggedIn ?? this.isLoggedIn,
      station: station ?? this.station,
    );
  }
}

class UserNotifier extends AsyncNotifier<UserState> {
  late final UserRepositoryInterface userRepository;
  late final AuthenticationServiceInterface authenticationService;
  late final StationRepositoryInterface stationRepository;

  /// Returns whether the user is currently authenticated
  bool get isAuthenticated => state.value?.isLoggedIn ?? false;

  @override
  Future<UserState> build() async {
    userRepository = ref.read(userRepositoryProvider);
    authenticationService = ref.read(authenticationServiceProvider);
    stationRepository = ref.read(stationRepositoryProvider);

    state = const AsyncValue.loading();
    final logging = ref.read(loggingProvider);

    logging.debug('UserNotifier initializing...');

    final authUser = await authenticationService.getCurrentUser();

    // Immediately return the initial user state without any delay
    //logging.debug('UserNotifier initialized with user: ${initialUser.id}');
    final userState = UserState(
      user: authUser,
      isLoading: false,
      isLoggedIn: authUser != null,
      station: authUser?.user.primaryStation,
    );
    state = AsyncValue.data(userState);

    return userState;
  }

  Future<void> updateUser(AuthUser updatedUser) async {
    final logging = ref.read(loggingProvider);

    try {
      state = const AsyncValue.loading();
      logging.debug('Updating user state...');

      // Simulate any async work needed for updating the user
      await Future.delayed(const Duration(milliseconds: 100));

      state = AsyncValue.data(
        UserState(user: updatedUser, isLoading: false, isLoggedIn: true),
      );
      logging.debug('User state updated successfully');
    } catch (err, stackTrace) {
      logging.error('Failed to update user');
      logging.debug('Error: $err\nStackTrace: $stackTrace');
      state = AsyncValue.error(err, stackTrace);
    }
  }

  Future<Either<Failure, AuthUser>> login({
    required String email,
    required String password,
  }) async {
    try {
      state = const AsyncValue.loading();
      final authResult = await authenticationService.login(
        identifier: email,
        password: password,
      );
      return authResult.fold(
        (l) {
          state = AsyncValue.data(
            UserState(
              user: null,
              isLoading: false,
              isLoggedIn: false,
              error: l.error,
              station: state.value?.station,
            ),
          );
          return left(l);
        },
        (r) {
          state = AsyncValue.data(
            UserState(
              user: r,
              isLoading: false,
              isLoggedIn: true,
              error: null,
              station: r.user.primaryStation,
            ),
          );
          return right(r);
        },
      );
    } catch (err, stackTrace) {
      state = AsyncValue.error(err, stackTrace);
      return left(Failure.unprocessableEntity(message: err.toString()));
    }
  }

  Future<UserState> register({
    required String email,
    required String password,
    required String handle,
    String? firstName,
    String? lastName,
  }) async {
    try {
      return await update((previousState) async {
        if (previousState.station == null) {
          return previousState.copyWith(
            error: 'No station found',
            isLoading: false,
            isLoggedIn: false,
            user: null,
            station: null,
          );
        }

        final authResult = await authenticationService.register(
            email: email,
            password: password,
            firstName: firstName ?? '',
            lastName: lastName ?? '',
            handle: handle,
            stationId: previousState.station!.id,
          );
          return authResult.fold(
            (l) {          
              return previousState.copyWith(
                error: l.error,
                isLoading: false,
                isLoggedIn: false,
                user: null,
                station: previousState.station,
              );
            },
            (r) {
              // Ensure the user has the station associated with them
              return UserState(
                  user: r,
                  isLoading: false,
                  isLoggedIn: true,
                  error: null,
                  station: previousState.station, // Use the validated station
                );
            },
          );
      });
    } catch (err, _) {
      return UserState(
          isLoading: false, 
          isLoggedIn: false,
          user: null,
          error: err.toString(),
          station: state.value?.station,
        );
    }
  }

  Future<void> logout() async {
    final logging = ref.read(loggingProvider);
    try {
      state = const AsyncValue.loading();
      await authenticationService.logout();
      state = const AsyncValue.data(UserState(
        isLoggedIn: false,
        isLoading: false,
        user: null,
        station: null,
        error: null,
      ));
    } catch (err, stackTrace) {
      logging.error('Failed to logout');
      logging.debug('Error: $err\nStackTrace: $stackTrace');
      state = AsyncValue.error(err, stackTrace);
    }
  }

  Future<String?> validateStationCode(String code) async {
    final logging = ref.read(loggingProvider);
    final stationRepository = ref.read(stationRepositoryProvider);

    try {
      state = const AsyncValue.loading();
      logging.debug('Validating station code: $code');

      final stationResult = await stationRepository.getStationByCode(
        id: code,
      );

      return stationResult.fold(
        (l) {
          state = AsyncValue.data(
            UserState(
              user: state.value?.user,
              error: 'Invalid station code. Please try again.',
              isLoading: false,
              isLoggedIn: state.value?.isLoggedIn ?? false,
              station: null,
            ),
          );
          return null;
        },
        (r) {
          state = AsyncValue.data(
            UserState(
              user: state.value?.user,
              error: null,
              isLoading: false,
              isLoggedIn: state.value?.isLoggedIn ?? false,
              station: r,
            ),
          );
          return r.id;
        },
      );
    } catch (err, stackTrace) {
      logging.error('Failed to validate station code');
      logging.debug('Error: $err\nStackTrace: $stackTrace');
      state = AsyncValue.error(err, stackTrace);
    }
    return null;
  }
}

final userNotifierProvider = AsyncNotifierProvider<UserNotifier, UserState>(() {
  return UserNotifier();
});
