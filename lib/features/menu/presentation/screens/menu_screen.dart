import 'package:core/core.dart';
import 'package:firefit/features/commerce/domain/entities/cart_item.dart';
import 'package:firefit/features/commerce/presentation/providers/shopping_cart_notifier.dart';
import 'package:firefit/features/common/presentation/widgets/shad_list_item.dart';
import 'package:firefit/features/menu/providers.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

class MenuScreen extends HookConsumerWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final menuController = ref.watch(menuControllerProvider(globalProviderId));
    final theme = ShadTheme.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Menu', style: theme.textTheme.h1),
      ),
      body: menuController.when(
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error, _) => Center(
          child: Text('Error loading menu', style: theme.textTheme.p),
        ),
        data: (menuViewModel) => ListView.builder(
          padding: const EdgeInsets.all(16.0),
          itemCount:
          menuViewModel.menus.length, // Assuming _ is a list of menu sections or items
          itemBuilder: (context, index) {
            // Assuming each item is a MenuSection
            return _buildMealTypeSection(context, ref,
                menuViewModel.menus.elementAt(index));
          },
        ),
      ),
    );
  }

  Widget _buildMealTypeSection(BuildContext context, WidgetRef ref, Menu menu) {
    //final theme = ShadTheme.of(context);

    return Padding(
      padding:
      const EdgeInsets.symmetric(vertical: 8.0), // Adjusted for better spacing
      child: ShadCard(
        child: Padding(
          padding:
          const EdgeInsets.all(16.0), // Consistent padding inside the card
          child:
          Column(crossAxisAlignment: CrossAxisAlignment.start, children:
          menu.menuItemCollection?.edges.map((e) {
            return _buildMenuItem(context, ref, e.node);
          }).toList() ??
              []),
        ),
      ),
    );
  }

  Widget _buildMenuItem(BuildContext context, WidgetRef ref, MenuItem item) {
    final theme = ShadTheme.of(context);
    final cartNotifier = ref.watch(shoppingCartProvider.notifier);
    final cartState = ref.watch(shoppingCartProvider);
    final itemInCart = cartState.value?.items.any((cartItem) => cartItem.id == item.id) ?? false;

    return ShadListItem(
      leading:
      Image.network(item.imageUrl ?? '', width: 72, height: 72, fit: BoxFit.cover),
      title:
      Text(item.name, style: theme.textTheme.h4),
      subtitle:
      Text(item.notes ?? '', maxLines: 2, overflow: TextOverflow.ellipsis),
      price:
      Text('\$${item.price.toStringAsFixed(2)}', style:
      theme.textTheme.h4.copyWith(color:
      theme.colorScheme.primary)),
      actionButton:
      IconButton(icon:
      Icon(itemInCart ? Icons.remove_shopping_cart : Icons.add_shopping_cart),
          onPressed:
              () {
            if (itemInCart) {
              cartNotifier.removeItem(item.id);
            } else {
              cartNotifier.addItem(CartItem(
                  imageUrl: item.imageUrl,
                  id:
              item.id, name:
              item.name, price:
              item.price, quantity:
              1));
            }
          }),
      onTap:
          () => _handleItemTap(context, ref, item),
    );
  }

  Future<void> _handleItemTap(BuildContext context, WidgetRef ref, MenuItem item) async {
    // Handle navigation or other actions when an item is tapped
    context.go('/menu/item/${item.id}');
  }
}