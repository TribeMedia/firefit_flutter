// cart_overlay.dart
import 'package:core/auth/domain/models/auth.dart';
import 'package:core/commerce/graphql/orders.graphql.dart';
import 'package:core/core.dart';
import 'package:firefit/features/common/presentation/screens/error_screen.dart';
import 'package:firefit/features/common/presentation/widgets/empty_view_state.dart';
import 'package:flutter/material.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

class CartOverlay extends StatelessWidget {
  static const double kImageSize = 64.0;
  final ScrollController scrollController = ScrollController();

  final Fragment$ShoppingCart cart;
  final User user;
  final bool isLoading;
  final String? errorMessage;
  final Function(String itemId, int quantity) onUpdateQuantity;
  final Function() onCheckout;
  final Function() onClose;

  CartOverlay({
    super.key,
    required this.cart,
    required this.user,
    this.isLoading = false,
    this.errorMessage,
    required this.onUpdateQuantity,
    required this.onCheckout,
    required this.onClose,
  });

  @override
  Widget build(BuildContext context) {
    final theme = ShadTheme.of(context);
    final items =
        cart.shoppingCartItemsCollection?.edges.map((e) => e.node).toList() ??
            [];
    final cartIsEmpty = items.isEmpty;

    // Calculate total
    final total = items.fold(
      0.0,
      (sum, item) => sum + (item.unitPrice * item.quantity),
    );

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
                    icon: const Icon(Icons.close),
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
                          ...items.map((item) => Padding(
                                padding: const EdgeInsets.only(bottom: 12),
                                child: ShadCard(
                                  child: Padding(
                                    padding: const EdgeInsets.all(12),
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        if (item.product.photoUrl != null)
                                          ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(8),
                                            child: Image.network(
                                              item.product.photoUrl!,
                                              width: kImageSize,
                                              height: kImageSize,
                                              fit: BoxFit.cover,
                                              errorBuilder: (context, error,
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
                                            ),
                                          ),
                                        const SizedBox(width: 12),
                                        Expanded(
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                item.product.name,
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

class QuantitySelector extends StatelessWidget {
  final int value;
  final ValueChanged<int> onChanged;

  const QuantitySelector({
    super.key,
    required this.value,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ShadButton(
          icon: const Icon(Icons.remove),
          onPressed: value > 1 ? () => onChanged(value - 1) : null,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Text(
            value.toString(),
            style: Theme.of(context).textTheme.titleMedium,
          ),
        ),
        ShadButton(
          icon: const Icon(Icons.add),
          onPressed: () => onChanged(value + 1),
        ),
      ],
    );
  }
}
