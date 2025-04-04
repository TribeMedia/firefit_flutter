import 'package:core/core.dart';
import 'package:firefit/features/common/presentation/screens/error_screen.dart';
import 'package:firefit/features/home/presentation/providers/home_state.dart';
import 'package:firefit/features/home/presentation/widgets/home_sliver_app_bar.dart';
import 'package:firefit/features/menu/providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'home_screen.g.dart';

final featuredMenuItemsProvider =
    FutureProvider.autoDispose<List<Product>>((ref) async {
  final productRepository = ref.read(productRepositoryProvider);
  final result = await productRepository.queryProducts(
    first: 4,
    orderBy: [
      Input$ProductsOrderBy(createdAt: Enum$OrderByDirection.DescNullsLast)
    ],
  );
  return result.fold(
    (failure) => [],
    (menuItems) {
      return menuItems;
    },
  );
});

@riverpod
class HomeAppBarScrollController extends _$HomeAppBarScrollController {
  @override
  ScrollController build() {
    final controller = ScrollController();
    ref.onDispose(() {
      controller.dispose();
    });
    return controller;
  }
}

class HomeScreen extends HookConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final homeState = ref.watch(homeStateProvider);
    final menuState = ref.watch(menuControllerProvider);

    return homeState.when(
      data: (homeStateModel) {
        if (homeStateModel.isLoading) {
          return const Scaffold(
            body: Center(child: CircularProgressIndicator()),
          );
        }

        if (homeStateModel.error != null) {
          return Scaffold(
            body: Center(child: Text('Error: ${homeStateModel.error}')),
          );
        }

        return menuState.when(
          data: (menuScreenViewModel) {
            if (menuScreenViewModel.isLoading) {
              return const Scaffold(
                body: Center(child: CircularProgressIndicator()),
              );
            }

            if (menuScreenViewModel.error != null) {
              return Scaffold(
                body:
                    Center(child: Text('Error: ${menuScreenViewModel.error}')),
              );
            }

            return Scaffold(
              body: HomeContent(
                homeStateModel: homeStateModel,
                menuScreenViewModel: menuScreenViewModel,
              ),
            );
          },
          loading: () => const Scaffold(
            body: Center(child: CircularProgressIndicator()),
          ),
          error: (error, stackTrace) => Scaffold(
            body: Center(child: Text('Error: $error')),
          ),
        );
      },
      loading: () => const Scaffold(
        body: Center(child: CircularProgressIndicator()),
      ),
      error: (error, stackTrace) => Scaffold(
        body: Center(child: Text('Error: $error')),
      ),
    );
  }
}

class HomeContent extends HookConsumerWidget {
  const HomeContent({
    super.key,
    required this.homeStateModel,
    required this.menuScreenViewModel,
  });

  final HomeStateModel homeStateModel;
  final MenuViewModel menuScreenViewModel;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.watch(menuControllerProvider.notifier);
    final featuredMenuItemsValue = ref.watch(featuredMenuItemsProvider);

    // Just listen to cart state directly in build (this is allowed)
    final cartState = ref.watch(productCartProvider);

    // Debug logging when cart state changes
    cartState.whenData((cart) {
      debugPrint(
          '🔄 Home screen cart has ${cart.shoppingCartItems.length} items');
    });

    // Use a standard hook to perform one-time initialization
    // This will only run once when the widget is first built
    final isInitialized = useState(false);
    useEffect(() {
      if (!isInitialized.value) {
        debugPrint(
            '🛒 Home screen initialized - no manual refresh needed with reactive streams');
        // No need for manual refresh - the stream will handle cart updates
        isInitialized.value = true;
      }
      return null;
    }, []);

    return featuredMenuItemsValue.when(
      data: (featuredMenuItems) {
        if (homeStateModel.user == null) {
          return ErrorScreen(
            errorMessage: 'No first responder found',
            onRetry: () => context.go('/'),
          );
        }

        if (homeStateModel.user!.user.primaryStation == null) {
          return ErrorScreen(
            errorMessage: 'No current station found',
            onRetry: () => context.go('/'),
          );
        }

        final ScrollController scrollController =
            ref.watch(homeAppBarScrollControllerProvider);

        return CustomScrollView(
          controller: scrollController,
          slivers: [
            HomeSliverAppBar(
              station: homeStateModel.user!.user.primaryStation!,
              user: homeStateModel.user!,
              parentScrollController: scrollController,
            ),
            SliverPadding(
              padding: const EdgeInsets.all(16.0),
              sliver: SliverList(
                delegate: SliverChildListDelegate([
                  _buildFeaturedMenuItems(context, featuredMenuItems),
                  const SizedBox(height: 24),
                  _buildTeamUpdates(context, ref),
                ]),
              ),
            ),
          ],
        );
      },
      error: (error, stackTrace) => Center(child: Text('Error: $error')),
      loading: () => const Center(child: CircularProgressIndicator()),
    );
  }

  void _handleMenuTap(BuildContext context, Product product) {
    debugPrint(
        '🔍 Navigating to menu item: ${product.id}: ${product.name} ${product.shortDescription}');
    context.go('/menu/item/${product.id}', extra: {'product': product});
  }

  Widget _buildFeaturedMenuItems(
      BuildContext context, List<Product> featuredItems) {
    if (featuredItems.isEmpty) {
      return const Center(
        child: Text('No featured items found'),
      );
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Featured Menu Items',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        const SizedBox(height: 16),
        ListView.separated(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: featuredItems.length,
          separatorBuilder: (BuildContext context, int index) =>
              const SizedBox(height: 16),
          itemBuilder: (BuildContext context, int index) {
            final Product menuItem = featuredItems[index];
            return GestureDetector(
              onTap: () => _handleMenuTap(context, menuItem),
              child: Container(
                height: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.black,
                ),
                clipBehavior: Clip.hardEdge,
                child: Stack(
                  fit: StackFit.expand,
                  children: [
                    Image.network(
                      menuItem.photoUrl ?? '',
                      fit: BoxFit.cover,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Colors.transparent,
                            Theme.of(context)
                                .colorScheme
                                .primary
                                .withAlpha((255 * 0.1).round()),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      left: 16,
                      right: 16,
                      bottom: 16,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            menuItem.name,
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 4),
                          Text(
                            menuItem.shortDescription ?? '',
                            style: TextStyle(
                              color:
                                  Colors.white.withAlpha((255 * 0.8).round()),
                              fontSize: 14,
                            ),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                          const SizedBox(height: 8),
                          Text(
                            '\$${menuItem.unitPrice.toStringAsFixed(2)}',
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ],
    );
  }

  Widget _buildTeamUpdates(BuildContext context, WidgetRef ref) {
    return Container();
    /*final stationController = ref.watch(
      stationControllerProvider(homeStateModel.user!.user.id),
    );

    return stationController.when(
      data: (stationViewModel) {
        if (stationViewModel.teamUpdates.isEmpty) {
          return const Center(
            child: Text('No team updates found'),
          );
        }

        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Team Updates',
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            const SizedBox(height: 16),
            ListView.separated(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: stationViewModel.teamUpdates.length.clamp(0, 5),
              separatorBuilder: (BuildContext context, int index) =>
              const SizedBox(height: 8),
              itemBuilder: (BuildContext context, int index) {
                return TeamUpdateCard(
                  teamUpdate: stationViewModel.teamUpdates[index],
                );
              },
            ),
          ],
        );
      },
      loading: () => const Center(
        child: CircularProgressIndicator(),
      ),
      error: (error, stackTrace) => Center(
        child: Text('Error: $error'),
      ),
    );*/
  }
}
