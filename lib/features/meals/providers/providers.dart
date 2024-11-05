import 'package:core/meals/domain/models/menu.dart';
import 'package:core/meals/domain/repositories/meal_repository.dart';
import 'package:core/meals/domain/repositories/mock_meal_repository.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

const globalProviderId = '9944860d-6de0-421a-a409-9fd169913480';

final mealRepositoryProvider = Provider((ref) => MockMealRepository());

class MenuScreenViewModel {
  final List<Menu> breakfastMenus;
  final List<Menu> lunchMenus;
  final List<Menu> dinnerMenus;
  final bool isLoading;
  final String? error;

  MenuScreenViewModel(
      {required this.breakfastMenus,
      required this.lunchMenus,
      required this.dinnerMenus,
      required this.isLoading,
      required this.error});
}

class MenuNotifier extends AsyncNotifier<MenuScreenViewModel> {
  late final MealRepository _mealRepository;
  @override
  Future<MenuScreenViewModel> build() async {
    state = const AsyncLoading();
    _mealRepository = ref.read(mealRepositoryProvider);
    final providerMenusResult =
        await _mealRepository.getProviderMenus(globalProviderId);

    final viewModel = providerMenusResult.fold(
      (l) => MenuScreenViewModel(
          breakfastMenus: [],
          lunchMenus: [],
          dinnerMenus: [],
          isLoading: false,
          error: l.error),
      (r) => MenuScreenViewModel(
          breakfastMenus: r
              .where((menu) => menu.type == getMenuTypeByKey('breakfast')!)
              .toList(),
          lunchMenus: r
              .where((menu) => menu.type == getMenuTypeByKey('lunch')!)
              .toList(),
          dinnerMenus: r
              .where((menu) => menu.type == getMenuTypeByKey('dinner')!)
              .toList(),
          isLoading: false,
          error: null),
    );
    state = AsyncData(viewModel);
    return viewModel;
  }
}

final menuNotifierProvider =
    AsyncNotifierProvider<MenuNotifier, MenuScreenViewModel>(
        () => MenuNotifier());
