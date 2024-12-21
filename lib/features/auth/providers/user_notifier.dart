import 'package:core/core.dart';
import 'package:core/users/graphql/users.graphql.dart';
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
  avatarUrl:
      'https://ipfs.tribemedia.io/ipfs/QmewGTYVkaHVAsynxF7x8CPeRH8iZUBQ7PTYj8Ab9shXpj',
  firstResponderCollection: Fragment$User$firstResponderCollection(
    edges: [
      Fragment$User$firstResponderCollection$edges(
        node: FirstResponder(
          id: '036adc2b-abe7-4037-b61c-9fb54046718f',
          userId: 'b61ab1a0-a65e-42e8-9f3a-57d62fe1d91c',
          firstResponderTypeId: 'b61ab1a0-a65e-42e8-9f3a-57d62fe1d91c',
          firstResponderType: Fragment$FirstResponderType(
            id: '231324ab-38a2-42c7-a22f-849d195f42d1',
            key: 'firefighter',
            name: 'Firefighter',
            schema: null,
            createdAt: DateTime.parse('2023-04-20T18:00:00.000Z'),
          ),
          currentStationId: 'a7a36d7a-7d97-4c02-8ccf-4ff1cbe8b7d2',
          currentStation: Fragment$Station(
            id: 'a7a36d7a-7d97-4c02-8ccf-4ff1cbe8b7d2',
            name: 'Engine Company',
            number: 6,
            description: 'DC Fire & EMS Department',
            longDescriptionMarkdown: '',
            address: '2000 14th Street, NW',
            address1: '5th Floor',
            city: 'Washington',
            state: 'DC',
            zip: '20001',
            registrationCode: 'STATION6',
            iconUrl: 'https://ipfs.tribemedia.io/ipfs/QmWM3Dp8D4NjQxco8P3RPpb6eDwVkhYe9jKkRubPs1BCoR',
            coverUrl: 'https://ipfs.tribemedia.io/ipfs/QmbWBc8tRN6fBP5Y6BMZm1TmAzzj3bSWQvz6C1dQQA7jug',
            createdAt: DateTime.parse('2023-04-20T18:00:00.000Z'),
        ), createdAt: DateTime.parse('2023-04-20T18:00:00.000Z'),
      ),
      ),
    ],
  ),
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
