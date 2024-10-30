import 'package:hooks_riverpod/hooks_riverpod.dart';

final homeStateProvider = Provider<HomeState>((ref) {
  // Implement your home state logic here
  return HomeState(caloriesRemaining: 2000, calorieProgress: 0.5);
});

class HomeState {
  final int caloriesRemaining;
  final double calorieProgress;

  HomeState({required this.caloriesRemaining, required this.calorieProgress});
}
