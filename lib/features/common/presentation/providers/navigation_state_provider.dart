import 'package:hooks_riverpod/hooks_riverpod.dart';

final navigationStateProvider =
    StateNotifierProvider<NavigationStateNotifier, Map<int, List<String>>>(
        (ref) {
  return NavigationStateNotifier();
});

class NavigationStateNotifier extends StateNotifier<Map<int, List<String>>> {
  NavigationStateNotifier() : super({});

  void updateNavigationStack(int index, List<String> stack) {
    state = {...state, index: stack};
  }

  List<String> getNavigationStack(int index) {
    return state[index] ?? [];
  }
}
