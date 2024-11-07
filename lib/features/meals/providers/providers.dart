import 'package:core/core.dart';
import 'package:firefit/config/providers.dart';
import 'package:firefit/env/env.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

const globalProviderId = '9944860d-6de0-421a-a409-9fd169913480';

final menuRepositoryProvider = Provider((ref) =>
    MenuRepository(talker: ref.read(loggingProvider), env: Environment()));

class MenuScreenViewModel {
  final List<Menu> breakfastMenus;
  final List<Menu> lunchMenus;
  final List<Menu> dinnerMenus;
  final List<MenuItem> menuItems;
  final bool isLoading;
  final String? error;

  MenuScreenViewModel(
      {required this.breakfastMenus,
      required this.lunchMenus,
      required this.dinnerMenus,
      required this.menuItems,
      required this.isLoading,
      required this.error});
}

class MenuNotifier extends AsyncNotifier<MenuScreenViewModel> {
  @override
  Future<MenuScreenViewModel> build() async {
    state = const AsyncLoading();
    final menuRepository = ref.read(menuRepositoryProvider);
    final providerMenusResult = await menuRepository.queryMenus(
      filter:
          Input$MenuFilter(providerId: Input$UUIDFilter(eq: globalProviderId)),
    );

    return providerMenusResult.fold(
      (l) {
        final viewModel = MenuScreenViewModel(
            breakfastMenus: [],
            lunchMenus: [],
            dinnerMenus: [],
            menuItems: [],
            isLoading: false,
            error: l.error);
        state = AsyncData(viewModel);
        return viewModel;
      },
      (r) {
        final viewModel = MenuScreenViewModel(
            breakfastMenus:
                r.where((menu) => menu.menuType.key == 'breakfast').toList(),
            lunchMenus:
                r.where((menu) => menu.menuType.key == 'lunch').toList(),
            dinnerMenus:
                r.where((menu) => menu.menuType.key == 'dinner').toList(),
            menuItems: r
                .map((menu) =>
                    menu.menuItemCollection?.edges
                        .map((edge) => edge.node)
                        .toList() ??
                    [])
                .toList()
                .expand((x) => x)
                .toList(),
            isLoading: false,
            error: null);
        state = AsyncData(viewModel);
        return viewModel;
      },
    );
  }
}

final menuNotifierProvider =
    AsyncNotifierProvider<MenuNotifier, MenuScreenViewModel>(
        () => MenuNotifier());
