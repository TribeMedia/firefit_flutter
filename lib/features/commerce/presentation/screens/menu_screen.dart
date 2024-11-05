import 'package:firefit/features/commerce/domain/entities/cart_item.dart';
import 'package:firefit/features/commerce/domain/entities/shopping_cart_model.dart';
import 'package:firefit/features/commerce/presentation/providers/shopping_cart_notifier.dart';
import 'package:firefit/features/commerce/presentation/widgets/menu_item_card.dart';
import 'package:firefit/features/commerce/presentation/widgets/menu_item_list_tile.dart';
import 'package:firefit/features/common/presentation/screens/error_screen.dart';
import 'package:firefit/features/meals/providers/providers.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

final isGridViewProvider = StateProvider<bool>((ref) => true);

class MenuScreen extends HookConsumerWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final menuAsyncValue = ref.watch(menuNotifierProvider);
    final isGridView = ref.watch(isGridViewProvider);
    final shoppingCartModelValue = ref.watch(shoppingCartProvider);
    final cartNotifier = ref.read(shoppingCartProvider.notifier);

    return shoppingCartModelValue.when(
      data: (ShoppingCartModel shoppingCartModel) {
        return Scaffold(
          appBar: AppBar(
            title: Text('Menu'),
            actions: [
              IconButton(
                icon: Badge(
                  label: Text(shoppingCartModel.items.length.toString()),
                  child: Icon(Icons.shopping_cart),
                ),
                onPressed: () {
                  // TODO: Navigate to cart screen
                },
              ),
            ],
          ),
          body: menuAsyncValue.when(
            data: (menuViewModel) => CustomScrollView(
              slivers: [
                SliverToBoxAdapter(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Menu Items',
                          style: Theme.of(context).textTheme.headlineSmall,
                        ),
                        ShadButton(
                          icon: Icon(isGridView ? Icons.list : Icons.grid_view),
                          onPressed: () => ref
                              .read(isGridViewProvider.notifier)
                              .update((state) => !state),
                        ),
                      ],
                    ),
                  ),
                ),
                SliverPadding(
                  padding: const EdgeInsets.all(16.0),
                  sliver: isGridView
                      ? _buildGridView(
                          menuViewModel, ref, shoppingCartModel, cartNotifier)
                      : _buildListView(
                          menuViewModel, shoppingCartModel, ref, cartNotifier),
                ),
              ],
            ),
            loading: () => Center(child: CircularProgressIndicator()),
            error: (error, stack) => Center(child: Text('Error: $error')),
          ),
        );
      },
      loading: () => Center(child: CircularProgressIndicator()),
      error: (error, stack) =>
          ErrorScreen(errorMessage: error.toString(), onRetry: () {}),
    );
  }

  Widget _buildGridView(MenuScreenViewModel menuViewModel, WidgetRef ref,
      ShoppingCartModel shoppingCartModel, ShoppingCartNotifier cartNotifier) {
    final allMenus = [
      ...menuViewModel.breakfastMenus,
      ...menuViewModel.lunchMenus,
      ...menuViewModel.dinnerMenus,
    ];
    final allItems = allMenus.expand((menu) => menu.items).toList();

    int quantityForId(String id) {
      if (shoppingCartModel.items.isEmpty) {
        return 0;
      }
      return shoppingCartModel.items
          .firstWhere((item) => item.id == id)
          .quantity;
    }

    return SliverGrid(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 0.75,
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
      ),
      delegate: SliverChildBuilderDelegate(
        (context, index) => MenuItemCard(
          menuItem: allItems[index],
          onAddToCart: () => cartNotifier.addItem(
            CartItem(
              id: allItems[index].id,
              name: allItems[index].name,
              price: allItems[index].price!,
            ),
          ),
          onRemoveFromCart: () => cartNotifier.removeItem(allItems[index].id),
          quantity: quantityForId(allItems[index].id),
        )
            .animate()
            .fadeIn(duration: 300.ms, delay: 50.ms * index)
            .slideY(begin: 0.1, end: 0),
        childCount: allItems.length,
      ),
    );
  }

  Widget _buildListView(
      MenuScreenViewModel menuViewModel,
      ShoppingCartModel shoppingCartModel,
      WidgetRef ref,
      ShoppingCartNotifier cartNotifier) {
    final allMenus = [
      ...menuViewModel.breakfastMenus,
      ...menuViewModel.lunchMenus,
      ...menuViewModel.dinnerMenus,
    ];
    final allItems = allMenus.expand((menu) => menu.items).toList();

    int quantityForId(String id) {
      return shoppingCartModel.items
          .firstWhere((item) => item.id == id)
          .quantity;
    }

    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) => Padding(
          padding: const EdgeInsets.only(bottom: 16.0),
          child: MenuItemListTile(
            menuItem: allItems[index],
            onAddToCart: () => cartNotifier.addItem(
              CartItem(
                id: allItems[index].id,
                name: allItems[index].name,
                price: allItems[index].price!,
              ),
            ),
            onRemoveFromCart: () => cartNotifier.removeItem(allItems[index].id),
            quantity: quantityForId(allItems[index].id),
          )
              .animate()
              .fadeIn(duration: 300.ms, delay: 50.ms * index)
              .slideX(begin: 0.1, end: 0),
        ),
        childCount: allItems.length,
      ),
    );
  }
}
