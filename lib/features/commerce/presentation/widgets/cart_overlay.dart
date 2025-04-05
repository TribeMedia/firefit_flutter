// cart_overlay.dart
import 'package:cached_network_image/cached_network_image.dart';
import 'package:core/core.dart';

import 'package:firefit/features/commerce/domain/database/database.dart';
import 'package:firefit/features/commerce/presentation/providers/delivery_location_provider.dart';
import 'package:firefit/features/common/presentation/screens/error_screen.dart';
import 'package:firefit/features/common/presentation/widgets/empty_view_state.dart';
import 'package:firefit/features/menu/providers.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:fpdart/fpdart.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

final productsMapProvider =
    FutureProvider.family<Either<Failure, Map<int, Product>>, List<CartItem>>(
        (ref, items) async {
  // Skip if cart is empty
  if (items.isEmpty) {
    return right(<int, Product>{});
  }

  // Extract unique productIds from cart items
  final productIds = items.map((item) => item.productId).toSet().toList();

  // Query all products - we'll filter them in memory
  // This approach is used as the GraphQL API might not support direct 'in' filters
  final repository = ref.read(productRepositoryProvider);
  final result = await repository.queryProducts();

  return result.fold(
    (failure) => left(failure),
    (products) {
      // Filter products that match our cart item productIds
      final matchingProducts =
          products.where((product) => productIds.contains(product.id)).toList();

      // Create a map of productId -> Product for faster lookup
      final productByIdMap = {
        for (var product in matchingProducts) product.id: product
      };

      // Create the final map of cartItemId -> Product
      final cartItemProductMap = <int, Product>{};
      for (var item in items) {
        final product = productByIdMap[item.productId];
        if (product != null) {
          cartItemProductMap[item.id] = product;
        }
      }

      return right(cartItemProductMap);
    },
  );
});

class CartOverlay extends ConsumerWidget {
  static const double kImageSize = 64.0;
  final ScrollController scrollController = ScrollController();
  final User user;
  final bool isLoading;
  final String? errorMessage;
  final Function(int itemId, int quantity) onUpdateQuantity;
  final Function()? onCheckout;
  final Function() onClose;

  CartOverlay({
    super.key,
    required this.user,
    this.isLoading = false,
    this.errorMessage,
    required this.onUpdateQuantity,
    this.onCheckout,
    required this.onClose,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final deliveryLocations = ref.watch(siteDeliveryLocationProvider);
    final cartsAsync = ref.watch(productCartProvider);
    final theme = ShadTheme.of(context);

    return deliveryLocations.when(
        data: (locations){
          return locations.fold(
            (l) {
              return ErrorScreen(errorMessage: l.error, onRetry: () {});
            },
            (r) {
              if (r.isEmpty) {
                return ErrorScreen(errorMessage: 'No delivery locations available', onRetry: () {
                  Navigator.of(context).pop();
                });
              }
              return cartsAsync.when(
                data: (cart) {
                  final productsAsync =
                  ref.watch(productsMapProvider(cart.shoppingCartItems));

                  // Calculate total
                  final total = cart.shoppingCartItems.fold(
                    0.0,
                        (sum, item) => sum + (item.unitPrice * item.quantity),
                  );

                  return productsAsync.when(
                    data: (products) {
                      return products.fold(
                            (l) => const SizedBox.shrink(),
                            (r) => _buildCartOverlay(context, theme, r, cart, total),
                      );
                    },
                    error: (e, s) =>
                        ErrorScreen(errorMessage: e.toString(), onRetry: () {}),
                    loading: () => const Center(child: CircularProgressIndicator()),
                  );
                },
                error: (e, s) => ErrorScreen(errorMessage: e.toString(), onRetry: () {}),
                loading: () => const Center(child: CircularProgressIndicator()),
              );
            },
          );
        },
      error: (e, s) =>
          ErrorScreen(errorMessage: e.toString(), onRetry: () {}),
      loading: () => const Center(child: CircularProgressIndicator()),
    );
  }

  Widget _buildCartOverlay(BuildContext context, ShadThemeData theme,
      Map<int, Product> products, ProductCartModel cart, double total) {
    Product? productForItem(int itemId) => products[itemId];

    final cartIsEmpty = cart.shoppingCartItems.isEmpty;

    return Container(
      color: theme.colorScheme.background,
      child: Column(
        children: [
          // Fixed Header
          ShadCard(
            child: Container(
              padding: const EdgeInsets.all(16),
              child: Row(
                children: [
                  Text('Your Cart', style: theme.textTheme.h1),
                  const Spacer(),
                  ShadButton.outline(
                    leading: const Icon(Icons.close),
                    onPressed: onClose,
                  ),
                ],
              ),
            ),
          ),

          // Scrollable Content
          Expanded(
            child: ListView(
              controller: scrollController,
              padding: const EdgeInsets.all(16),
              children: [
                cartIsEmpty
                    ? const EmptyViewState(
                        lottieAssetFile: 'empty_cart.json',
                        title: 'Your Cart is Empty',
                        message: 'There are currently no items in your cart.',
                      )
                    : Column(
                        children: [
                          ...cart.shoppingCartItems.map((item) => Padding(
                                padding: const EdgeInsets.only(bottom: 12),
                                child: ShadCard(
                                  child: Padding(
                                    padding: const EdgeInsets.all(12),
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        // Delete button
                                        IconButton(
                                          icon: Icon(
                                            Icons.delete_outline,
                                            color: theme.colorScheme.destructive,
                                            size: 20,
                                          ),
                                          onPressed: () => onUpdateQuantity(item.id, 0 - item.quantity),
                                          tooltip: 'Remove from cart',
                                          padding: EdgeInsets.zero,
                                          constraints: const BoxConstraints(),
                                        ),
                                        const SizedBox(width: 8),
                                        if (productForItem(item.id)?.photoUrl !=
                                            null)
                                          ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(8),
                                            child: CachedNetworkImage(
                                              imageUrl: productForItem(item.id)!
                                                  .photoUrl!,
                                              width: kImageSize,
                                              height: kImageSize,
                                              fit: BoxFit.cover,
                                              placeholder: (context, url) => Container(
                                                width: kImageSize,
                                                height: kImageSize,
                                                color: theme.colorScheme.muted,
                                                child: Center(
                                                  child: SizedBox(
                                                    width: 20,
                                                    height: 20,
                                                    child: CircularProgressIndicator(
                                                      strokeWidth: 2,
                                                      color: theme.colorScheme.primary,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              errorWidget: (context, error,
                                                      stackTrace) =>
                                                  Container(
                                                width: kImageSize,
                                                height: kImageSize,
                                                color: theme.colorScheme.muted,
                                                child: Icon(
                                                  Icons.image_not_supported,
                                                  color:
                                                      theme.colorScheme.muted,
                                                ),
                                              ),
                                              memCacheWidth: kImageSize.toInt(),
                                              memCacheHeight: kImageSize.toInt(),
                                            ),
                                          ),
                                        const SizedBox(width: 12),
                                        Expanded(
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                productForItem(item.id)!.name,
                                                style:
                                                    theme.textTheme.p.copyWith(
                                                  fontWeight: FontWeight.bold,
                                                ),
                                                overflow: TextOverflow.ellipsis,
                                              ),
                                              const SizedBox(height: 4),
                                              Text(
                                                '\$${item.unitPrice.toStringAsFixed(2)}',
                                                style:
                                                    theme.textTheme.p.copyWith(
                                                  color:
                                                      theme.colorScheme.primary,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              const SizedBox(height: 8),
                                              QuantitySelector(
                                                cartItem: item,
                                                value: item.quantity,
                                                onChanged: (value) =>
                                                    onUpdateQuantity(
                                                        item.id, value),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              )),
                        ],
                      ),
              ],
            ),
          ),

          // Fixed Footer
          ShadCard(
            child: Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(
                    color: Theme.of(context).dividerColor,
                  ),
                ),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Total',
                        style: theme.textTheme.p.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        '\$${total.toStringAsFixed(2)}',
                        style: theme.textTheme.p.copyWith(
                          color: theme.colorScheme.primary,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  if (errorMessage != null)
                    Padding(
                      padding: const EdgeInsets.only(bottom: 8.0),
                      child: Text(
                        errorMessage!,
                        style: theme.textTheme.p.copyWith(
                          color: theme.colorScheme.destructive,
                        ),
                      ),
                    ),
                  ShadButton(
                    onPressed: !isLoading && !cartIsEmpty ? onCheckout : null,
                    child: isLoading
                        ? const Center(child: CircularProgressIndicator())
                        : const Text('Proceed to Checkout'),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class QuantitySelector extends ConsumerWidget {
  final int value;
  final ValueChanged<int> onChanged;
  final CartItem cartItem;

  const QuantitySelector({
    super.key,
    required this.value,
    required this.onChanged,
    required this.cartItem,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Row(
      children: [
        ShadButton(
          leading: const Icon(Icons.remove),
          onPressed: () {
            final targetQuantity = value - 1;
            if (targetQuantity < 1) {
              Fluttertoast.showToast(
                msg: 'Quantity must be greater than 1',
                toastLength: Toast.LENGTH_SHORT,
                gravity: ToastGravity.BOTTOM,
                timeInSecForIosWeb: 1,
                backgroundColor: Colors.red,
                textColor: Colors.white,
              );
              return;
            }
            // Call the onChanged callback instead of directly calling the notifier
            onChanged(-1);
          },
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Text(
            value.toString(),
            style: Theme.of(context).textTheme.titleMedium,
          ),
        ),
        ShadButton(
          leading: const Icon(Icons.add),
          onPressed: () {
            // Call the onChanged callback instead of directly calling the notifier
            onChanged(1);
          },
        ),
      ],
    );
  }
}
