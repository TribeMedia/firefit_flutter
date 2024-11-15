// cart_overlay.dart
import 'package:firefit/features/commerce/presentation/providers/providers.dart';
import 'package:firefit/features/commerce/presentation/providers/shopping_cart_notifier.dart';
import 'package:firefit/features/commerce/presentation/providers/shopping_cart_provider.dart';
import 'package:firefit/features/common/presentation/widgets/empty_view_state.dart';
import 'package:firefit/features/menu/providers.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

class CartOverlay extends HookConsumerWidget {
  final ScrollController scrollController = ScrollController();

  CartOverlay({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final cartAsync = ref.watch(shoppingCartProvider);
    final theme = ShadTheme.of(context);
    final orderController = ref.watch(orderControllerProvider(globalProviderId));

    return Column(
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
                  onPressed: () => Navigator.pop(context),
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
              cartAsync.when(
                data: (cart) => cart.items.isNotEmpty
                    ? Column(
                        children: [
                          ...cart.items.map((item) => Padding(
                                padding: const EdgeInsets.only(bottom: 12),
                                child: ShadCard(
                                  child: Padding(
                                    padding: const EdgeInsets.all(12),
                                    child: Row(
                                      children: [
                                        ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(8),
                                          child: ShadImage.square(
                                            item.imageUrl ?? '',
                                            size: 80,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        const SizedBox(width: 12),
                                        Expanded(
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                item.name,
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .titleMedium,
                                              ),
                                              Text(
                                                '\$${item.price.toStringAsFixed(2)}',
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .bodyMedium,
                                              ),
                                              const SizedBox(height: 8),
                                              QuantitySelector(
                                                value: item.quantity,
                                                onChanged: (value) => ref
                                                    .read(cartProvider.notifier)
                                                    .updateQuantity(
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
                      )
                    : const EmptyViewState(
                        lottieAssetFile: 'empty_cart.json',
                        title: 'Your Cart is Empty',
                        message: 'There are currently no items in your cart.',
                      ),
                loading: () => const Center(
                  child: CircularProgressIndicator(),
                ),
                error: (error, _) => ShadCard(
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Text('Error: $error'),
                  ),
                ),
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
                    const Text('Total'),
                    Consumer(
                      builder: (ctx, ref, child) {
                        final cartValue = ref.watch(shoppingCartProvider);
                        return cartValue.when(
                          data: (cm) {
                            return Text(
                              '\$${cm.totalPrice.toStringAsFixed(2)}',
                              style: Theme.of(context).textTheme.titleLarge,
                            );
                          },
                          loading: () {
                            return Text(
                              '\$${cartAsync.value?.totalPrice.toStringAsFixed(2)}',
                              style: Theme.of(context).textTheme.titleLarge,
                            );
                          },
                          error: (error, stackTrace) {
                            return Text(
                              '\$${cartAsync.value?.totalPrice.toStringAsFixed(2)}',
                              style: Theme.of(context).textTheme.titleLarge,
                            );
                          },
                        );
                      },
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                orderController.when(
                  data: (orderModel) {
                    return ShadButton(
                      onPressed: !orderModel.isLoading &&  cartAsync.value?.items.isNotEmpty == true
                          ? () => _handleCheckout(context, ref)
                          : null,
                      child: orderModel.isLoading ? const Center( child: CircularProgressIndicator()) : const Text('Proceed to Checkout'),
                    );
                  },
                  loading: () => const SizedBox.shrink(),
                  error: (error, stackTrace) {
                    ShadToaster.of(context).show(
                      ShadToast.destructive(
                        title: Text('Error'),
                        description: Text(error.toString()),
                        duration: const Duration(seconds: 2),
                      ),
                    );
                    return ShadButton(
                      onPressed: cartAsync.value?.items.isNotEmpty == true
                          ? () => _handleCheckout(context, ref)
                          : null,
                      child: const Text('Proceed to Checkout'),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  void _handleCheckout(BuildContext context, WidgetRef ref) async {
    final cart = ref.read(shoppingCartProvider.notifier).cart;
    try {
      await ref
          .read(orderControllerProvider(globalProviderId).notifier)
          .createOrder(cart!);
      ref.invalidate(shoppingCartProvider);
      // Navigate to confirmation
    } catch (e) {
      // Handle error
    }
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
          icon: Icon(Icons.remove),
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
          icon: Icon(Icons.add),
          onPressed: () => onChanged(value + 1),
        ),
      ],
    );
  }
}
