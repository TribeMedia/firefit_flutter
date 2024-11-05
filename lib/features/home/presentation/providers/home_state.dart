import 'dart:async';

import 'package:firefit/config/providers.dart';
import 'package:firefit/features/home/domain/models/mock_models.dart';
import 'package:firefit/features/home/domain/models/mock_types.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

sealed class HomeStateData {
  const HomeStateData();
}

class HomeStateLoading extends HomeStateData {
  const HomeStateLoading();
}

class HomeStateError extends HomeStateData {
  final String message;
  final StackTrace? stackTrace;

  const HomeStateError(this.message, [this.stackTrace]);
}

class HomeStateLoaded extends HomeStateData {
  final List<Map<String, dynamic>> teamUpdates;
  final List<Map<String, dynamic>> mealSchedule;
  final Map<String, dynamic> nutritionSummary;
  final List<Map<String, dynamic>> localProviders;

  const HomeStateLoaded({
    required this.teamUpdates,
    required this.mealSchedule,
    required this.nutritionSummary,
    required this.localProviders,
  });
}

class HomeStateNotifier extends AsyncNotifier<HomeStateData> {
  Future<void> refreshData() async {
    await load();
  }

  FutureOr<HomeStateData> load() async {
    final logging = ref.read(loggingProvider);
    logging.debug('HomeStateNotifier loading data...');

    try {
      final loadedState = HomeStateLoaded(
        teamUpdates: MockData.getTeamUpdates(),
        mealSchedule: MockData.getMealSchedule(),
        nutritionSummary: MockData.getNutritionSummary(),
        localProviders: MockData.getLocalProviders(),
      );
      logging.debug('HomeStateNotifier data loaded successfully');
      return loadedState;
    } catch (e, stackTrace) {
      logging.error('Error loading data in HomeStateNotifier: $e');
      return HomeStateError(e.toString(), stackTrace);
    }
  }

  void updateShiftStatus(ShiftStatus status) {
    state = AsyncValue.data(HomeStateLoaded(
      teamUpdates: MockData.getTeamUpdates(),
      mealSchedule: MockData.getMealSchedule(),
      nutritionSummary: MockData.getNutritionSummary(),
      localProviders: MockData.getLocalProviders(),
    ));
  }

  @override
  FutureOr<HomeStateData> build() async {
    return await load();
  }
}

final homeStateProvider =
    AsyncNotifierProvider<HomeStateNotifier, HomeStateData>(() {
  return HomeStateNotifier();
});
