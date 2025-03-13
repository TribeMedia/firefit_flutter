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

  Future<Either<Failure, AuthUser>> register({
    required String email,
    required String password,
    required String handle,
    required String stationCode,
    String? firstName,
    String? lastName,
  }) async {
    try {
      state = const AsyncValue.loading();
      final station = await stationRepository.getStationByCode(
        id: stationCode,
      );

      return station.fold(
        (l) => left(l),
        (r) async {
          final authResult = await authenticationService.register(
            email: email,
            password: password,
            firstName: firstName ?? '',
            lastName: lastName ?? '',
            handle: handle,
            stationId: r.id,
          );
          return authResult.fold(
            (l) {
              state = AsyncValue.data(
                UserState(
                  user: null,
                  isLoading: false,
                  isLoggedIn: false,
                  error: l.error,
                  station: r,
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
                  station: state.value?.station,
                ),
              );
              return right(r);
            },
          );
        },
      );
    } catch (err, stackTrace) {
      state = AsyncValue.error(err, stackTrace);
      return left(Failure.unprocessableEntity(message: err.toString()));
    }
  }

  Future<bool> validateStationCode(String code) async {
    final logging = ref.read(loggingProvider);
    final stationRepository = ref.read(stationRepositoryProvider);

    try {
      state = const AsyncValue.loading();
      logging.debug('Validating station code: $code');

      final stationResult = await stationRepository.getStationByCode(
        id: code,
      );

      return stationResult.fold(
        (l) => false,
        (r) {
          state = AsyncValue.data(
            UserState(
              user: state.value?.user,
              isLoading: false,
              isLoggedIn: state.value?.isLoggedIn ?? false,
              station: r,
            ),
          );
          return true;
        },
      );
    } catch (err, stackTrace) {
      logging.error('Failed to validate station code');
      logging.debug('Error: $err\nStackTrace: $stackTrace');
      state = AsyncValue.error(err, stackTrace);
    }
    return false;
  }
}

final userNotifierProvider = AsyncNotifierProvider<UserNotifier, UserState>(() {
  return UserNotifier();
});
