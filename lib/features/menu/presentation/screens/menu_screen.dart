import 'package:core/core.dart';
import 'package:firefit/features/commerce/domain/entities/cart_item.dart';
import 'package:firefit/features/commerce/presentation/providers/shopping_cart_notifier.dart';
import 'package:firefit/features/common/presentation/screens/error_screen.dart';
import 'package:firefit/features/common/presentation/widgets/empty_view_state.dart';
import 'package:firefit/features/menu/providers.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

final processingItemProvider = StateProvider<String?>((ref) => null);
final errorItemProvider = StateProvider<String?>((ref) => null);

class MenuScreen extends HookConsumerWidget {
  const MenuScreen({super.key});

  static const double kPagePadding = 16.0;
  static const double kSectionSpacing = 24.0;
  static const double kItemSpacing = 12.0;
  static const double kImageSize = 64.0;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final menuController = ref.watch(menuControllerProvider(globalProviderId));
    final processingItem = ref.watch(processingItemProvider);
    final errorItem = ref.watch(errorItemProvider);

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Menu',
          style: ShadTheme.of(context).textTheme.h1.copyWith(
                fontWeight: FontWeight.w600,
                fontSize: 24,
              ),
        ),
        elevation: 0,
      ),
      body: menuController.when(
        loading: () => const SafeArea(
          child: Center(
            child: CircularProgressIndicator(),
          ),
        ),
        error: (error, _) => SafeArea(
          child: ErrorScreen(
            errorMessage: error.toString(),
            onRetry: () =>
                ref.refresh(menuControllerProvider(globalProviderId)),
          ),
        ),
        data: (menuViewModel) => menuViewModel.menus.isEmpty
            ? const EmptyViewState(
                title: 'No Menu Items Available',
                message: 'There are currently no items on the menu.',
                lottieAssetFile: 'empty_menu.json',
              )
            : SafeArea(
                child: ListView.builder(
                  padding: const EdgeInsets.all(kPagePadding),
                  itemCount: menuViewModel.menus.length,
                  itemBuilder: (context, index) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        if (index > 0) SizedBox(height: kSectionSpacing),
                        _buildMealTypeSection(
                          context,
                          ref,
                          menuViewModel.menus[index],
                        ),
                      ],
                    );
                  },
                ),
              ),
      ),
    );
  }

  Widget _buildMealTypeSection(BuildContext context, WidgetRef ref, Menu menu) {
    final theme = Theme.of(context);

    return ShadCard(
      title: Text(
        menu.name,
        style: theme.textTheme.titleLarge?.copyWith(
          fontWeight: FontWeight.bold,
          color: theme.colorScheme.primary,
        ),
      ),
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ...menu.menuItemCollection?.edges
                  .map((e) => Padding(
                        padding: const EdgeInsets.only(bottom: 16),
                        child: _buildMenuItem(context, ref, e.node),
                      ))
                  .toList() ??
              [],
        ],
      ),
    );
  }

  Widget _buildMenuItem(BuildContext context, WidgetRef ref, MenuItem item) {
    final theme = Theme.of(context);
    final cartNotifier = ref.watch(shoppingCartProvider.notifier);
    final cartState = ref.watch(shoppingCartProvider);
    final processingItem = ref.watch(processingItemProvider);
    final errorItem = ref.watch(errorItemProvider);

    return cartState.when(
      data: (cartModel) {
        final itemInCart = cartModel.items
            .where((cartItem) => cartItem.id == item.id)
            .isNotEmpty;
        final isProcessing = processingItem == item.id;
        final hasError = errorItem == item.id;

        return GestureDetector(
          onTap: () => _handleItemTap(context, ref, item),
          child: ShadCard(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Top section with image, name, and description
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    if (item.imageUrl != null)
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.network(
                          item.imageUrl!,
                          width: kImageSize,
                          height: kImageSize,
                          fit: BoxFit.cover,
                          errorBuilder: (context, error, stackTrace) =>
                              Container(
                            width: kImageSize,
                            height: kImageSize,
                            color: theme.colorScheme.surfaceVariant,
                            child: Icon(
                              Icons.image_not_supported,
                              color: theme.colorScheme.onSurfaceVariant,
                            ),
                          ),
                        ),
                      ),
                    const SizedBox(width: 16),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            item.name,
                            style: theme.textTheme.titleMedium?.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          if (item.notes != null) ...[
                            const SizedBox(height: 4),
                            Text(
                              item.notes!,
                              style: theme.textTheme.bodyMedium,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ],
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                // Bottom row with price and add button
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '\$${item.price.toStringAsFixed(2)}',
                      style: theme.textTheme.titleMedium?.copyWith(
                        color: theme.colorScheme.primary,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    if (itemInCart)
                      ShadButton.outline(
                        onPressed: null,
                        child: const Icon(Icons.shopping_cart_checkout),
                      )
                    else if (isProcessing)
                      const SizedBox(
                        width: 24,
                        height: 24,
                        child: CircularProgressIndicator(),
                      )
                    else if (hasError)
                      ShadButton.destructive(
                        onPressed: () => _handleAddToCart(
                          context,
                          ref,
                          cartNotifier,
                          item,
                        ),
                        child: const Icon(Icons.add_shopping_cart),
                      )
                    else
                      ShadButton(
                        onPressed: () => _handleAddToCart(
                          context,
                          ref,
                          cartNotifier,
                          item,
                        ),
                        child: const Icon(Icons.add_shopping_cart),
                      ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
      loading: () => const Center(
        child: CircularProgressIndicator(),
      ),
      error: (error, stack) {
        // Only show loading indicator for initial load errors
        return const Center(
          child: CircularProgressIndicator(),
        );
      },
    );
  }

  Future<void> _handleAddToCart(
    BuildContext context,
    WidgetRef ref,
    ShoppingCartNotifier cartNotifier,
    MenuItem item,
  ) async {
    try {
      ref.read(processingItemProvider.notifier).state = item.id;
      ref.read(errorItemProvider.notifier).state = null;

      await cartNotifier.addItem(CartItem(
        id: item.id,
        name: item.name,
        price: item.price,
        quantity: 1,
        imageUrl: item.imageUrl,
      ));

      if (context.mounted) {
        ShadToaster.of(context).show(
          ShadToast(
            title: Text('Added to Cart'),
            description: Text('${item.name} has been added to your cart.'),
            duration: const Duration(seconds: 2),
          ),
        );
      }
    } catch (e) {
      ref.read(errorItemProvider.notifier).state = item.id;
      if (context.mounted) {
        ShadToaster.of(context).show(
          ShadToast.destructive(
            title: Text('Error'),
            description: Text('Failed to add ${item.name} to cart'),
            duration: const Duration(seconds: 2),
          ),
        );
      }
    } finally {
      ref.read(processingItemProvider.notifier).state = null;
    }
  }

  void _handleItemTap(BuildContext context, WidgetRef ref, MenuItem item) {
    try {
      context.go('/menu/item/${item.id}');
    } catch (e) {
      if (context.mounted) {
        ShadToaster.of(context).show(
          ShadToast.destructive(
            title: Text('Error'),
            description:
                Text('Failed to navigate to item details: ${e.toString()}'),
            duration: const Duration(seconds: 2),
          ),
        );
      }
    }
  }
}
