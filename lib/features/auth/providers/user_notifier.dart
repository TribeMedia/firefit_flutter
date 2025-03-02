import 'package:core/core.dart';
import 'package:core/users/graphql/users.graphql.dart';
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

  const UserState({
    this.user,
    this.error,
    required this.isLoading,
    required this.isLoggedIn,
  });
}

class UserNotifier extends AsyncNotifier<UserState> {
  late final UserRepositoryInterface userRepository;
  late final AuthenticationServiceInterface authenticationService;
  late final StationRepositoryInterface stationRepository;

  @override
  Future<UserState> build() async {
    userRepository = ref.read(userRepositoryProvider);
    authenticationService = ref.read(authenticationServiceProvider);
    stationRepository = ref.read(stationRepositoryProvider);

    state = const AsyncValue.loading();
    final logging = ref.read(loggingProvider);

    logging.debug('UserNotifier initializing...');

    // Immediately return the initial user state without any delay
    //logging.debug('UserNotifier initialized with user: ${initialUser.id}');
    final userState = UserState(user: null, isLoading: false, isLoggedIn: true);
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

    try {
      state = const AsyncValue.loading();
      logging.debug('Validating station code: $code');

      // Simulate API call to validate station code
      await Future.delayed(const Duration(seconds: 1));

      // For demo purposes, only accept 'STATION6'
      if (code != 'STATION6') {
        state = AsyncValue.data(
          UserState(
            user: state.value?.user,
            isLoading: false,
            isLoggedIn: true,
            error: 'Invalid station code',
          ),
        );
        return true;
      }

      state = AsyncValue.data(
        UserState(user: state.value?.user, isLoading: false, isLoggedIn: true),
      );
      logging.debug('Station code validated successfully');
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
