// cart_overlay.dart
import 'package:firefit/features/commerce/presentation/providers/shopping_cart_provider.dart';
import 'package:firefit/features/commerce/presentation/widgets/cart_item_tile.dart';
import 'package:firefit/features/commerce/presentation/widgets/order_summary.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

class CartOverlay extends HookConsumerWidget {
  const CartOverlay({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final cartModelValue = ref.watch(cartProvider);
    return cartModelValue.when(
      data: (cartModel) {
        final cartItems = cartModel.items;

        final total = cartItems.map((item) => item.price * item.quantity).reduce((a, b) => a + b);

        return ShadSheet(
          child: Container(
            height: MediaQuery.of(context).size.height * 0.8,
            padding: EdgeInsets.all(16),
            child: Column(
              children: [
                Text('Your Order'),
                Expanded(
                  child: ListView.builder(
                    itemCount: cartItems.length,
                    itemBuilder: (context, index) {
                      return CartItemTile(item: cartItems[index]);
                    },
                  ),
                ),
                OrderSummary(total: total),
                ShadButton(
                  onPressed: () => _handleCheckout(ref),
                  child: Text('Checkout \$$total'),
                ),
              ],
            ),
          ),
        );
      },
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (error, stack) => Center(child: Text('Error: $error')),
    );
  }

  void _handleCheckout(WidgetRef ref) async {
    final cart = ref.read(cartProvider);

    try {
      //await ref.read(orderMutationProvider.notifier).createOrder(cart);
      ref.invalidate(cartProvider);
      // Navigate to confirmation
    } catch (e) {
      // Handle error
    }
  }
}