import 'package:core/core.dart';
import 'package:firefit/features/commerce/domain/entities/cart_item.dart';
import 'package:firefit/features/commerce/domain/entities/shopping_cart_model.dart';
import 'package:firefit/features/commerce/presentation/providers/shopping_cart_notifier.dart';
import 'package:firefit/features/menu/providers.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

final menuItemProvider = FutureProvider.family<MenuItem?, String>(
        (ref, id) async {
          final repository = ref.read(menuRepositoryProvider);
          final result = await repository.queryMenuItems(
            filter: Input$MenuItemFilter(
              id: Input$UUIDFilter(eq: id),
            ),
          );

          return result.fold(
            (failure) => null,
            (menuItems) {
              if (menuItems.isEmpty) {
                return null;
              }
              return menuItems.first;
            },
          );
        });

class MenuItemDetailPage extends HookConsumerWidget {
  final String menuItemId;

  const MenuItemDetailPage({super.key, required this.menuItemId});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final shadTheme = ShadTheme.of(context);
    final cartNotifier = ref.watch(shoppingCartProvider.notifier);
    final cartState = ref.watch(shoppingCartProvider);
    final menuItemValue = ref.watch(menuItemProvider(menuItemId));

    return menuItemValue.when(
      data: (menuItem) {
        if (menuItem == null) {
          return Center(child: Text('Menu item not found'));
        }
        return Scaffold(
          appBar: AppBar(
            title: Text(menuItem.name, style: shadTheme.textTheme.h3),
          ),
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.network(
                  menuItem.imageUrl ?? 'https://via.placeholder.com/400x200',
                  width: double.infinity,
                  height: 200,
                  fit: BoxFit.cover,
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(menuItem.name, style: shadTheme.textTheme.h2),
                      SizedBox(height: 8),
                      Text(
                        menuItem.notes ?? 'No description available',
                        style: shadTheme.textTheme.p,
                      ),
                      SizedBox(height: 16),
                      Text(
                        'Price: \$${menuItem.price.toStringAsFixed(2)}',
                        style: shadTheme.textTheme.h4.copyWith(
                          color: shadTheme.colorScheme.primary,
                        ),
                      ),
                      SizedBox(height: 24),
                      _buildCartButtons(context, ref, menuItem, cartNotifier, cartState),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (error, stackTrace) => Center(child: Text('Error: $error')),
    );


  }

  Widget _buildCartButtons(
      BuildContext context,
      WidgetRef ref,
      MenuItem item,
      ShoppingCartNotifier cartNotifier,
      AsyncValue<ShoppingCartModel> cartState,
      ) {
    final shadTheme = ShadTheme.of(context);
    final itemInCart = cartState.value?.items.firstWhere(
          (cartItem) => cartItem.id == item.id,
      orElse: () => CartItem(id: '', name: '', price: 0, quantity: 0),
    );
    final itemCount = itemInCart?.quantity ?? 0;

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ShadButton(
          onPressed: () {
            cartNotifier.addItem(CartItem(
              id: item.id,
              name: item.name,
              price: item.price,
              quantity: 1,
            ));
          },
          child: Row(
            children: [
              Icon(Icons.add_shopping_cart, color: shadTheme.colorScheme.background),
              SizedBox(width: 8),
              Text('Add to Cart'),
              if (itemCount > 0) ...[
                SizedBox(width: 8),
                ShadBadge(
                  backgroundColor: shadTheme.colorScheme.primary,
                  child: Text(
                    itemCount.toString(),
                    style: TextStyle(color: shadTheme.colorScheme.background),
                  ),
                ),
              ],
            ],
          ),
        ),
        if (itemCount > 0) ...[
          SizedBox(width: 16),
          ShadButton.destructive(
            onPressed: () {
              cartNotifier.removeItem(item.id);
            },
            child: Icon(Icons.delete, color: shadTheme.colorScheme.background),
          ),
        ],
      ],
    );
  }
}