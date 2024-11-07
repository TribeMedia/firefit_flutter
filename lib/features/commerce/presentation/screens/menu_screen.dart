import 'package:core/core.dart';
import 'package:firefit/features/commerce/domain/entities/cart_item.dart';
import 'package:firefit/features/commerce/domain/entities/shopping_cart_model.dart';
import 'package:firefit/features/commerce/presentation/providers/shopping_cart_notifier.dart';
import 'package:firefit/features/commerce/presentation/widgets/menu_item_list_tile.dart';
import 'package:firefit/features/common/presentation/screens/error_screen.dart';
import 'package:firefit/features/meals/providers/providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

class MenuScreen extends HookConsumerWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final menuAsyncValue = ref.watch(menuNotifierProvider);
    final cart = ref.watch(shoppingCartProvider);
    final cartNotifier = ref.read(shoppingCartProvider.notifier);

    return cart.when(
      data: (cartModel) {
        final cartEmpty = cartModel.items.isEmpty;
        return Scaffold(
          appBar: AppBar(
            leading: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () => Navigator.pop(context),
            ),
            title: Text('Menu'),
            actions: [
              IconButton(
                icon: cartEmpty
                    ? Icon(Icons.shopping_cart)
                    : Badge(
                        label: Text(cartModel.items.length.toString()),
                        child: Icon(Icons.shopping_cart),
                      ),
                onPressed: () {
                  context.go('/shopping-cart');
                },
              ),
            ],
          ),
          body: menuAsyncValue.when(
            data: (menuViewModel) => CustomScrollView(
              slivers: [
                SliverPadding(
                  padding: const EdgeInsets.all(16.0),
                  sliver:
                      _buildListView(menuViewModel, cartModel, cartNotifier),
                ),
              ],
            ),
            loading: () => Center(child: CircularProgressIndicator()),
            error: (error, stack) => Center(child: Text('Error: $error')),
          ),
        );
      },
      error: (error, stack) => ErrorScreen(
        errorMessage: 'Error: $error',
        onRetry: () {},
      ),
      loading: () => const Center(child: CircularProgressIndicator()),
    );
  }

  Widget _buildListView(
    MenuScreenViewModel menuViewModel,
    ShoppingCartModel cartModel,
    ShoppingCartNotifier cartNotifier,
  ) {
    final allMenus = [
      ...menuViewModel.breakfastMenus,
      ...menuViewModel.lunchMenus,
      ...menuViewModel.dinnerMenus,
    ];
    final allItems = allMenus
        .expand(
            (menu) => menu.menuItemCollection?.edges.map((e) => e.node) ?? [])
        .toList() as List<MenuItem>;

    int getItemQuantity(String itemId) {
      return cartModel.items.where((item) => item.id == itemId).length;
    }

    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) => Padding(
          padding: const EdgeInsets.only(bottom: 16.0),
          child: MenuItemListTile(
            menuItem: allItems[index],
            onAddToCart: () => cartNotifier.addItem(CartItem(
              id: allItems[index].id,
              name: allItems[index].name,
              price: allItems[index].price,
            )),
            onRemoveFromCart: () => cartNotifier.removeItem(allItems[index].id),
            quantity: getItemQuantity(allItems[index].id),
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
