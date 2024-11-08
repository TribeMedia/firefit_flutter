import 'package:core/core.dart';
import 'package:firefit/config/providers.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class UserState {
  final User? user;
  final FirstResponder? firstResponder;
  final String? error;
  final bool isLoading;
  final bool isLoggedIn;

  const UserState(
      {this.user,
      this.firstResponder,
      this.error,
      required this.isLoading,
      required this.isLoggedIn});
}

final initialUser = User(
  id: 'b61ab1a0-a65e-42e8-9f3a-57d62fe1d91c',
  email: 'travis@tribemedia.io',
  lastName: 'James',
  firstName: 'Travis',
  displayName: 'Travis James',
  avatarUrl: 'https://ipfs.tribemedia.io/ipfs/QmewGTYVkaHVAsynxF7x8CPeRH8iZUBQ7PTYj8Ab9shXpj',
);

class UserNotifier extends AsyncNotifier<UserState> {
  @override
  Future<UserState> build() async {
    state = const AsyncValue.loading();
    final logging = ref.read(loggingProvider);

    logging.debug('UserNotifier initializing...');

    // Immediately return the initial user state without any delay
    //logging.debug('UserNotifier initialized with user: ${initialUser.id}');
    final userState = UserState(
      user: initialUser,
      isLoading: false,
      isLoggedIn: true,
    );
    state = AsyncValue.data(userState);

    return userState;
  }

  Future<void> updateUser(User updatedUser) async {
    final logging = ref.read(loggingProvider);

    try {
      state = const AsyncValue.loading();
      logging.debug('Updating user state...');

      // Simulate any async work needed for updating the user
      await Future.delayed(const Duration(milliseconds: 100));

      state = AsyncValue.data(
        UserState(
          user: updatedUser,
          isLoading: false,
          isLoggedIn: true,
        ),
      );
      logging.debug('User state updated successfully');
    } catch (err, stackTrace) {
      logging.error('Failed to update user');
      logging.debug('Error: $err\nStackTrace: $stackTrace');
      state = AsyncValue.error(err, stackTrace);
    }
  }
}

final userNotifierProvider = AsyncNotifierProvider<UserNotifier, UserState>(() {
  return UserNotifier();
});
