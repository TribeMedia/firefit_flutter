import 'package:core/core.dart';
import 'package:firefit/features/commerce/domain/entities/cart_item.dart';
import 'package:firefit/features/commerce/domain/entities/shopping_cart_model.dart';
import 'package:firefit/features/commerce/presentation/providers/shopping_cart_notifier.dart';
import 'package:firefit/features/common/presentation/widgets/shad_list_item.dart';
import 'package:firefit/features/menu/providers.dart';
import 'package:flutter/material.dart';
import 'package:forui/forui.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

class MenuScreen extends HookConsumerWidget {
  const MenuScreen({super.key});

  static const int IndexValue = 1;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final menuController = ref.watch(menuControllerProvider(globalProviderId));
    final shadTheme = ShadTheme.of(context);

    return FScaffold(
      header: FHeader(
        title: Text('Menu', style: shadTheme.textTheme.h2),
      ),
      content: SingleChildScrollView(
        child: menuController.when(
          loading: () => const Center(child: CircularProgressIndicator()),
          error: (error, _) => Center(
            child: Text('Error: $error', style: shadTheme.textTheme.p),
          ),
          data: (viewModel) => _buildMenuContent(context, ref),
        ),
      ),
    );
  }

  Widget _buildMenuContent(BuildContext context, WidgetRef ref) {
    final controller = ref.watch(menuControllerProvider(globalProviderId).notifier);
    final breakfastItems = controller.breakfastMenus;
    final lunchItems = controller.lunchMenus;
    final dinnerItems = controller.dinnerMenus;

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        if (breakfastItems.isNotEmpty)
          _buildMealTypeSection(context, ref, 'Breakfast', breakfastItems),
        if (lunchItems.isNotEmpty)
          _buildMealTypeSection(context, ref, 'Lunch', lunchItems),
        if (dinnerItems.isNotEmpty)
          _buildMealTypeSection(context, ref, 'Dinner', dinnerItems),
      ],
    );
  }

  Widget _buildMealTypeSection(
      BuildContext context,
      WidgetRef ref,
      String mealType,
      List<Menu> menus,
      ) {
    final shadTheme = ShadTheme.of(context);

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: ShadCard(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(16),
              child: Text(mealType, style: shadTheme.textTheme.h3),
            ),
            ...menus.map((menu) => _buildMenuItems(context, ref, menu)).toList(),
          ],
        ),
      ),
    );
  }

  Widget _buildMenuItems(BuildContext context, WidgetRef ref, Menu menu) {
    final items = menu.menuItemCollection?.edges.map((e) => e.node).toList() ?? [];

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: items.map((item) =>
          _buildMenuItem(context, ref, menu, item)
      ).toList(),
    );
  }

  Widget _buildMenuItem(
      BuildContext context,
      WidgetRef ref,
      Menu menu,
      MenuItem item,
      ) {
    final shadTheme = ShadTheme.of(context);
    final cartNotifier = ref.watch(shoppingCartProvider.notifier);
    final cartState = ref.watch(shoppingCartProvider);

    return ShadListItem(
      leading: ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: Image.network(
          item.imageUrl ?? 'https://via.placeholder.com/60x60',
          width: 60,
          height: 60,
          fit: BoxFit.cover,
          errorBuilder: (context, error, stackTrace) => Container(
            width: 60,
            height: 60,
            color: shadTheme.colorScheme.muted,
            child: Icon(
              Icons.broken_image,
              color: shadTheme.colorScheme.mutedForeground,
            ),
          ),
        ),
      ),
      title: Text(item.name, style: shadTheme.textTheme.h4),
      subtitle: Text(
        item.notes ?? 'No description available',
        style: shadTheme.textTheme.small,
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
      ),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Expanded(
            child: Text(
              '\$${item.price.toStringAsFixed(2)}',
              style: shadTheme.textTheme.h4.copyWith(
                color: shadTheme.colorScheme.primary,
              ),
            ),
          ),
          const SizedBox(width: 8),
          _buildCartButton(context, ref, item, cartNotifier, cartState),
        ],
      ),
    );
  }

  Widget _buildCartButton(
      BuildContext context,
      WidgetRef ref,
      MenuItem item,
      ShoppingCartNotifier cartNotifier,
      AsyncValue<ShoppingCartModel> cartState,
      ) {
    final shadTheme = ShadTheme.of(context);
    final itemInCart = cartState.value?.items.any(
          (cartItem) => cartItem.id == item.id,
    ) ?? false;

    return ShadButton(
      onPressed: () {
        if (itemInCart) {
          cartNotifier.removeItem(item.id);
        } else {
          cartNotifier.addItem(CartItem(
            id: item.id,
            name: item.name,
            price: item.price,
            quantity: 1,
          ));
        }
      },
      child: Icon(
        itemInCart ? Icons.remove_shopping_cart : Icons.add_shopping_cart,
        color: shadTheme.colorScheme.background,
      ),
    );
  }
}