import 'package:core/commerce/domain/models/order.dart';
import 'package:core/commerce/tax/domain/services/stripe_payment_service_interface.dart';
import 'package:firefit/features/auth/providers/user_notifier.dart';
import 'package:firefit/features/commerce/domain/entities/shopping_cart_view_model.dart';
import 'package:firefit/features/commerce/presentation/providers/shopping_cart_notifier.dart';
import 'package:firefit/features/commerce/providers/providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:forui/forui.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

class ShoppingCartScreen extends HookConsumerWidget {
  const ShoppingCartScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final modelValue = ref.watch(shoppingCartProvider);

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
                  title: Text(item.product.name),
                  subtitle: Text('\$${item.unitPrice.toStringAsFixed(2)}'),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      ShadButton(
                        icon: Icon(Icons.remove),
                        onPressed: () {
                          if (item.quantity > 1) {
                            ref
                                .read(shoppingCartProvider.notifier)
                                .updateQuantity(item.id, item.quantity - 1);
                          } else {
                            ref
                                .read(shoppingCartProvider.notifier)
                                .removeItem(item.id);
                          }
                        },
                      ),
                      Text('${item.quantity}'),
                      ShadButton(
                        icon: Icon(Icons.add),
                        onPressed: () {
                          ref
                              .read(shoppingCartProvider.notifier)
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
              0.0, (sum, item) => sum + (item.unitPrice * item.quantity));

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

  Future<void> _showCheckoutDialog(
      BuildContext context, WidgetRef ref, double totalAmount) async {
    try {
      // Show loading indicator
      await showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) => const AlertDialog(
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              CircularProgressIndicator(),
              SizedBox(height: 16),
              Text('Preparing checkout...'),
            ],
          ),
        ),
      );

      // Add a mounted check here
      if (!context.mounted) return;

      // Get the user information
      final userState = await ref.read(userNotifierProvider.future);

      // Add a mounted check before using context
      if (!context.mounted) return;

      if (userState.user == null) {
        // Close loading dialog
        Navigator.pop(context);
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('You need to be logged in to checkout')),
        );
        return;
      }

      final userId = userState.user!.user.id;

      // Get the shopping cart
      final cartState = await ref.read(shoppingCartProvider.future);

      // Add a mounted check
      if (!context.mounted) return;

      // Format items for metadata
      List<Map<String, dynamic>> lineItems = [];
      for (var item in cartState.items) {
        lineItems.add({
          'price': item.product.stripeProductId,
          'productId': item.productId,
          'quantity': item.quantity,
        });
      }

      // Check if we need to add clearCart method
      if (!cartState.shoppingCarts
          .any((cart) => cart.id == cartState.currentCartId)) {
        // Log error but continue with payment
        print('Warning: Could not find current cart in shopping carts list');
      }

      // Create payment intent request
      final paymentIntentRequest = PaymentIntentRequest(
        currency: 'usd',
        amount: (totalAmount * 100).toInt().toDouble(), // Convert to cents
        metadata: {
          'userId': userId,
          'items': lineItems,
        },
      );

      // Create payment intent
      final paymentIntentResponse = await ref
          .read(stripePaymentIntentProvider(paymentIntentRequest).future);

      // Add a mounted check before using context
      if (!context.mounted) return;

      // Close loading dialog
      Navigator.pop(context);

      if (paymentIntentResponse.success == null ||
          !paymentIntentResponse.success!) {
        // Show error message
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
              content: Text(
                  'Error: ${paymentIntentResponse.errorMessage ?? "Unknown error creating payment intent"}')),
        );
        return;
      }

      // Initialize the payment sheet
      await Stripe.instance.initPaymentSheet(
        paymentSheetParameters: SetupPaymentSheetParameters(
          merchantDisplayName: 'FireFit Store',
          paymentIntentClientSecret: paymentIntentResponse.clientSecret,
          customerId: userId,
          style: ThemeMode.system,
        ),
      );

      // Add a mounted check
      if (!context.mounted) return;

      // Present the payment sheet
      await Stripe.instance.presentPaymentSheet();

      // Add a mounted check
      if (!context.mounted) return;

      // Handle successful payment - get current cart from the shopping cart state
      if (cartState.currentCartId != null) {
        // Find the current cart from shopping carts list
        ShoppingCartViewModel? currentCart;
        try {
          currentCart = cartState.shoppingCarts.firstWhere(
            (cart) => cart.id == cartState.currentCartId,
          );
        } catch (_) {
          // Cart not found
          currentCart = null;
        }

        if (currentCart != null) {
          // Create a ShoppingCart instance for createOrder with required fields
          final cart = ShoppingCart(
            id: currentCart.id,
            userId: userId,
            createdAt: DateTime.now(),
          );

          final orderController =
              ref.read(orderControllerProvider(userId).notifier);
          final result = await orderController.createOrder(cart);

          // Add a mounted check before using context
          if (!context.mounted) return;

          result.fold(
            (failure) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                    content: Text('Error creating order: ${failure.error}')),
              );
            },
            (order) {
              // Clear the cart using the method in ShoppingCartNotifier
              ref.read(shoppingCartProvider.notifier).clearCart();

              // Show success message
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                    content: Text('Payment successful! Order created.')),
              );

              // Navigate to orders screen or home
              Navigator.of(context).pop();
            },
          );
        } else {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
                content: Text('Error: Could not find shopping cart')),
          );
        }
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Error: No active shopping cart')),
        );
      }
    } catch (e) {
      // Check if mounted before using context
      if (!context.mounted) return;

      // Close loading dialog if open
      if (Navigator.canPop(context)) {
        Navigator.pop(context);
      }

      // Handle errors from Stripe
      if (e is StripeException) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Payment error: ${e.error.localizedMessage}')),
        );
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Error: $e')),
        );
      }
    }
  }
}
