import 'package:core/models/user_model.dart';
import 'package:firefit/config/providers.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:uuid/uuid.dart';

final UserModel initialUser = UserModel(
  id: const Uuid().v4(),
  kratosUserId: '',
  identifier: 'test@test.com',
  email: 'test@test.com',
  data: {},
  createdAt: DateTime.now(),
);

class UserState {
  final UserModel user;

  const UserState({required this.user});

  @override
  String toString() => 'UserState(user: ${user.id})';
}

class UserNotifier extends AsyncNotifier<UserState> {
  @override
  Future<UserState> build() async {
    final logging = ref.read(loggingProvider);

    logging.debug('UserNotifier initializing...');

    // Immediately return the initial user state without any delay
    logging.debug('UserNotifier initialized with user: ${initialUser.id}');
    return UserState(user: initialUser);
  }

  Future<void> updateUser(UserModel updatedUser) async {
    final logging = ref.read(loggingProvider);

    try {
      state = const AsyncValue.loading();
      logging.debug('Updating user state...');

      // Simulate any async work needed for updating the user
      await Future.delayed(const Duration(milliseconds: 100));

      state = AsyncValue.data(UserState(user: updatedUser));
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
