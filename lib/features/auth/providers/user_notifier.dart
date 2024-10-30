

import 'dart:async';

import 'package:core/models/user_model.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:uuid/uuid.dart';

final UserModel user = UserModel(
  id: Uuid().v4(),
  kratosUserId: '',
  identifier: 'test@test.com',
  email: 'test@test.com',
  data: {},
  createdAt: DateTime.now(),
);

class UserState {
  final UserModel user;

  UserState({required this.user});
}

class UserNotifier extends AsyncNotifier<UserState> {
  @override
  FutureOr<UserState> build() {
    state = AsyncValue.data(UserState(user: user));
    return state.value!;
  }

}

final userNotifierProvider = AsyncNotifierProvider<UserNotifier, UserState>(() {
  return UserNotifier();
});