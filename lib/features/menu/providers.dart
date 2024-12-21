import 'package:collection/collection.dart';
import 'package:core/core.dart';
import 'package:firefit/config/providers.dart';
import 'package:firefit/env/env.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'providers.g.dart';

final globalProviderId = '9944860d-6de0-421a-a409-9fd169913480';

final menuRepositoryProvider = Provider<MenuRepositoryInterface>((ref) {
  final talker = ref.watch(loggingProvider);
  return MenuRepository(talker: talker, env: Environment());
});

class MenuViewModel {
  final String? error;
  final bool isLoading;
  final List<Menu> menus;
  final String providerId;

  MenuViewModel({
    this.error,
    this.isLoading = false,
    this.menus = const [],
    required this.providerId,
  });
}

@Riverpod(keepAlive: true)
class MenuController extends _$MenuController {
  @override
  FutureOr<MenuViewModel> build(String providerId) async {
    state = const AsyncLoading();
    return await load(providerId);
  }

  FutureOr<MenuViewModel> load(String providerId) async {
    final menuRepository = ref.read(menuRepositoryProvider);
    final menuResult = await menuRepository.queryMenus(
      filter: Input$MenuFilter(
        providerId: Input$UUIDFilter(eq: providerId),
      ),
      orderBy: [Input$MenuOrderBy(index: Enum$OrderByDirection.AscNullsLast)],
    );
    return menuResult.fold(
      (l) {
        final viewModel = MenuViewModel(providerId: providerId, error: l.error);
        state = AsyncData(viewModel);
        return viewModel;
      },
      (r) {
        final viewModel = MenuViewModel(providerId: providerId, menus: r);
        state = AsyncData(viewModel);
        return viewModel;
      },
    );
  }

  List<Menu> get breakfastMenus {
    if (!state.hasValue) {
      return [];
    }
    return state.value!.menus
        .where((menu) => menu.menuType.key == 'breakfast')
        .toList();
  }

  List<Menu> get lunchMenus {
    if (!state.hasValue) {
      return [];
    }
    return state.value!.menus
        .where((menu) => menu.menuType.key == 'lunch')
        .toList();
  }

  List<Menu> get dinnerMenus {
    if (!state.hasValue) {
      return [];
    }
    return state.value!.menus
        .where((menu) => menu.menuType.key == 'dinner')
        .toList();
  }

  List<MenuItem> get breakfastMenuItems {
    if (!state.hasValue) {
      return [];
    }
    final menu = state.value!.menus
        .firstWhereOrNull((menu) => menu.menuType.key == 'breakfast');
    if (menu == null ||
        menu.menuItemCollection == null ||
        menu.menuItemCollection!.edges.isEmpty) {
      return [];
    }
    return menu.menuItemCollection!.edges.map((edge) => edge.node).toList();
  }

  List<MenuItem> get lunchMenuItems {
    if (!state.hasValue) {
      return [];
    }
    final menu = state.value!.menus
        .firstWhereOrNull((menu) => menu.menuType.key == 'lunch');
    if (menu == null ||
        menu.menuItemCollection == null ||
        menu.menuItemCollection!.edges.isEmpty) {
      return [];
    }
    return menu.menuItemCollection!.edges.map((edge) => edge.node).toList();
  }

  List<MenuItem> get dinnerMenuItems {
    if (!state.hasValue) {
      return [];
    }
    final menu = state.value!.menus
        .firstWhereOrNull((menu) => menu.menuType.key == 'dinner');
    if (menu == null ||
        menu.menuItemCollection == null ||
        menu.menuItemCollection!.edges.isEmpty) {
      return [];
    }
    return menu.menuItemCollection!.edges.map((edge) => edge.node).toList();
  }

  List<MenuItem> get featuredMenuItems {
    if (!state.hasValue) {
      return [];
    }
    return state.value!.menus
        .where((menu) =>
            menu.menuItemCollection?.edges
                .any((edge) => edge.node.isFeatured == true) ??
            false)
        .map((menu) =>
            menu.menuItemCollection!.edges.map((edge) => edge.node).toList())
        .expand((x) => x)
        .toList();
  }
}
