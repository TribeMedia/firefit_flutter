import 'package:firefit/features/commerce/presentation/providers/shopping_cart_provider.dart';
import 'package:flutter/material.dart';
import 'package:forui/forui.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

class ShoppingCartScreen extends HookConsumerWidget {
  const ShoppingCartScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final modelValue = ref.watch(cartProvider);

    return FScaffold(
      header: FHeader(
        title: Text('Shopping Cart'),
      ),
      content: modelValue.when(
        data: (model) {
          if (model.items.isEmpty) {
            return Center(child: Text('Your cart is empty'));
          }

          final cartItems = model.items;

          return ListView.builder(
            itemCount: cartItems.length,
            itemBuilder: (context, index) {
              final item = cartItems[index];
              return FCard(
                child: ListTile(
                  title: Text(item.name),
                  subtitle: Text('\$${item.price.toStringAsFixed(2)}'),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      ShadButton(
                        icon: Icon(Icons.remove),
                        onPressed: () {
                          if (item.quantity > 1) {
                            ref
                                .read(cartProvider.notifier)
                                .updateQuantity(item.id, item.quantity - 1);
                          } else {
                            ref.read(cartProvider.notifier).removeItem(item.id);
                          }
                        },
                      ),
                      Text('${item.quantity}'),
                      ShadButton(
                        icon: Icon(Icons.add),
                        onPressed: () {
                          ref
                              .read(cartProvider.notifier)
                              .updateQuantity(item.id, item.quantity + 1);
                        },
                      ),
                    ],
                  ),
                ),
              );
            },
          );
        },
        loading: () => Center(child: CircularProgressIndicator()),
        error: (error, stack) => Center(child: Text('Error: $error')),
      ),
      footer: modelValue.when(
        data: (model) {
          if (model.items.isEmpty) return SizedBox.shrink();

          final cartItems = model.items;
          final totalAmount = cartItems.fold(
              0.0, (sum, item) => sum + (item.price * item.quantity));

          return Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Total:',
                        style: Theme.of(context).textTheme.titleLarge),
                    Text('\$${totalAmount.toStringAsFixed(2)}',
                        style: Theme.of(context).textTheme.titleLarge),
                  ],
                ),
                SizedBox(height: 16),
                ShadButton(
                  onPressed: () =>
                      _showCheckoutDialog(context, ref, totalAmount),
                  child: Text('Proceed to Checkout'),
                ),
              ],
            ),
          );
        },
        loading: () => SizedBox.shrink(),
        error: (_, __) => SizedBox.shrink(),
      ),
    );
  }

  void _showCheckoutDialog(
      BuildContext context, WidgetRef ref, double totalAmount) {
    // Checkout dialog implementation (unchanged)
  }
}
