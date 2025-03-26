import 'package:core/commerce/domain/models/order.dart';
import 'package:core/commerce/graphql/orders.graphql.dart';
import 'package:core/commerce/tax/domain/services/stripe_payment_service_interface.dart';
import 'package:core/core.dart';
import 'package:firefit/features/commerce/presentation/providers/shopping_cart_notifier.dart';
import 'package:firefit/features/commerce/presentation/widgets/cart_overlay.dart';
import 'package:firefit/features/commerce/providers/providers.dart';
import 'package:firefit/features/common/presentation/screens/error_screen.dart';
import 'package:firefit/features/common/presentation/widgets/cart_icon.dart';
import 'package:firefit/features/home/presentation/providers/home_state.dart';
import 'package:firefit/theme/dark_theme.dart';
import 'package:firefit/theme/light_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:go_router/go_router.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final scaffoldKeyProvider = Provider.family<GlobalKey<ScaffoldState>, String>(
    (ref, name) => GlobalKey<ScaffoldState>(debugLabel: name));

class ApplicationContainer extends ConsumerStatefulWidget {
  final Widget child;
  final String name;

  const ApplicationContainer({
    super.key,
    required this.child,
    required this.name,
  });

  @override
  ConsumerState<ApplicationContainer> createState() =>
      _ApplicationContainerState();
}

class _ApplicationContainerState extends ConsumerState<ApplicationContainer> {
  int _getCurrentIndex(BuildContext context) {
    final String location =
        GoRouter.of(context).routerDelegate.currentConfiguration.uri.path;
    switch (location) {
      case '/':
        return 0;
      case '/menu':
        return 1;
      case '/orders':
        return 2;
      case '/settings':
        return 3;
      default:
        return 0;
    }
  }

  @override
  Widget build(BuildContext context) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;
    final scaffoldKey = ref.watch(scaffoldKeyProvider(widget.name));
    int currentIndex = _getCurrentIndex(context);
    final homeStateValue = ref.watch(homeStateProvider);

    return homeStateValue.when(
      data: (homeState) {
        final user = homeState.user!.user;
        final cart = user.shoppingCartsCollection?.edges.first.node;
        final cartItemCount =
            cart?.shoppingCartItemsCollection?.edges.length ?? 0;

        return Scaffold(
          key: scaffoldKey,
          appBar: currentIndex != 0
              ? AppBar(
                  leading: Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: GestureDetector(
                      onTap: () {
                        scaffoldKey.currentState?.openDrawer();
                      },
                      child: ColorFiltered(
                        colorFilter: isDarkMode
                            ? const ColorFilter.mode(
                                Colors.white, BlendMode.srcATop)
                            : const ColorFilter.mode(
                                Colors.transparent, BlendMode.srcATop),
                        child: IconButton(
                          onPressed: () {},
                          icon: Image.asset(
                            'assets/images/fots-logo-favicon-100x100.png',
                            height: 60,
                            width: 60,
                          ),
                        ),
                      ),
                    ),
                  ),
                  title: Text(
                    homeState.user!.user.firstName,
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
                          fontFamily: 'Geist Mono',
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  actions: [
                    cart != null
                        ? CartIcon(
                            onPressed: () {
                              showCart(
                                context,
                                cart,
                                user,
                              );
                            },
                            count: cartItemCount,
                          )
                        : SizedBox.shrink(),
                    IconButton(
                      icon: const Icon(Icons.notifications),
                      onPressed: () {
                        // Handle notifications
                      },
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: GestureDetector(
                        onTap: () => context.push('/profile'),
                        child: Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: Theme.of(context).colorScheme.surface,
                              width: 2,
                            ),
                          ),
                          child: CircleAvatar(
                            radius: 18,
                            backgroundColor: Theme.of(context)
                                .colorScheme
                                .primary
                                .withOpacity(0.1),
                            backgroundImage: homeState.user!.profile.avatar !=
                                    null
                                ? NetworkImage(homeState.user!.profile.avatar!)
                                : null,
                            child: homeState.user!.profile.avatar == null
                                ? Text(
                                    homeState.user!.profile.displayName?[0]
                                            .toUpperCase() ??
                                        '',
                                    style: Theme.of(context)
                                        .textTheme
                                        .titleMedium
                                        ?.copyWith(
                                          color: Theme.of(context)
                                              .colorScheme
                                              .primary,
                                        ),
                                  )
                                : null,
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              : null,
          bottomNavigationBar: Container(
            padding: const EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 30.0),
            color: Theme.of(context).scaffoldBackgroundColor,
            child: GNav(
              selectedIndex: _getCurrentIndex(context),
              gap: 8.0,
              activeColor: Theme.of(context).colorScheme.primary,
              iconSize: 24.0,
              padding: const EdgeInsets.symmetric(
                horizontal: 20.0,
                vertical: 10.0,
              ),
              duration: const Duration(milliseconds: 400),
              tabBackgroundColor: isDarkMode
                  ? DarkThemeData.surfaceContainer
                  : LightThemeData.surfaceContainer,
              color: Theme.of(context)
                  .colorScheme
                  .onSurface
                  .withAlpha((0.6 * 255).round()),
              tabs: [
                GButton(
                  icon: Icons.home,
                  text: 'Home',
                  onPressed: () => context.go('/'),
                ),
                GButton(
                  icon: Icons.restaurant_menu,
                  text: 'Menu',
                  onPressed: () => context.go('/menu'),
                ),
                GButton(
                  icon: Icons.receipt,
                  text: 'Orders',
                  onPressed: () => context.go('/orders'),
                ),
                GButton(
                  icon: Icons.settings,
                  text: 'Settings',
                  onPressed: () => context.go('/settings'),
                ),
              ],
            ),
          ),
          body: widget.child,
        );
      },
      loading: () => const Scaffold(
        body: Center(child: CircularProgressIndicator()),
      ),
      error: (error, stack) => ErrorScreen(
        errorMessage: error.toString(),
        onRetry: () => context.go('/'),
      ),
    );
  }

  void showCart(
    BuildContext context,
    Fragment$ShoppingCart cart,
    User user,
  ) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      enableDrag: true,
      backgroundColor: Colors.transparent,
      transitionAnimationController: AnimationController(
        vsync: Navigator.of(context),
        duration: const Duration(milliseconds: 300),
      ),
      builder: (context) => DraggableScrollableSheet(
        initialChildSize: 0.85,
        minChildSize: 0.5,
        maxChildSize: 0.95,
        builder: (context, scrollController) => AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeInOut,
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
          ),
          child: CartOverlay(
            cart: cart,
            user: user,
            onUpdateQuantity: (String itemId, int quantity) {},
            onCheckout: () async {
              // Capture current context for later use
              final currentContext = context;

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
                if (!mounted) return;

                // Get cart items from the Fragment$ShoppingCart structure
                final items = cart.shoppingCartItemsCollection?.edges
                        .map((e) => e.node)
                        .toList() ??
                    [];

                // Calculate total amount from cart items
                final totalAmount = items.fold(
                  0.0,
                  (sum, item) => sum + (item.unitPrice * item.quantity),
                );

                // Format items for metadata
                List<Map<String, dynamic>> lineItems = [];
                for (var item in items) {
                  lineItems.add({
                    'price': item.product.stripeProductId,
                    'productId': item.productId,
                    'quantity': item.quantity,
                  });
                }

                // Create payment intent request
                final paymentIntentRequest = PaymentIntentRequest(
                  currency: 'usd',
                  amount: (totalAmount * 100)
                      .toInt()
                      .toDouble(), // Convert to cents
                  metadata: {
                    'userId': user.id,
                    'items': lineItems,
                  },
                );

                // Create payment intent
                final paymentIntentResponse = await ref.read(
                    stripePaymentIntentProvider(paymentIntentRequest).future);

                // Add a mounted check before using context
                if (!mounted) return;

                // Close loading dialog
                Navigator.pop(context);

                if (paymentIntentResponse.success == null ||
                    !paymentIntentResponse.success!) {
                  // Show error message
                  ScaffoldMessenger.of(currentContext).showSnackBar(
                    SnackBar(
                      content: Text(
                          'Error: ${paymentIntentResponse.errorMessage ?? "Unknown error creating payment intent"}'),
                    ),
                  );
                  return;
                }

                // Initialize the payment sheet
                await Stripe.instance.initPaymentSheet(
                  paymentSheetParameters: SetupPaymentSheetParameters(
                    merchantDisplayName: 'FireFit Store',
                    paymentIntentClientSecret:
                        paymentIntentResponse.clientSecret,
                    customerId: user.id,
                    style: ThemeMode.system,
                  ),
                );

                // Add a mounted check
                if (!mounted) return;

                // Present the payment sheet
                await Stripe.instance.presentPaymentSheet();

                // Add a mounted check
                if (!mounted) return;

                // Handle successful payment
                // Create a ShoppingCart instance for createOrder with required fields
                final cartForOrder = ShoppingCart(
                  id: cart.id,
                  userId: user.id,
                  createdAt: DateTime.now(),
                );

                final orderController =
                    ref.read(orderControllerProvider(user.id).notifier);
                final result = await orderController.createOrder(cartForOrder);

                // Add a mounted check before using context
                if (!mounted) return;

                result.fold(
                  (failure) {
                    ScaffoldMessenger.of(currentContext).showSnackBar(
                      SnackBar(
                        content: Text('Error creating order: ${failure.error}'),
                      ),
                    );
                  },
                  (order) {
                    // Clear the cart using the method in ShoppingCartNotifier
                    ref.read(shoppingCartProvider.notifier).clearCart();

                    // Show success message
                    ScaffoldMessenger.of(currentContext).showSnackBar(
                      const SnackBar(
                        content: Text('Payment successful! Order created.'),
                      ),
                    );

                    // Close the cart overlay
                    Navigator.of(currentContext).pop();
                  },
                );
              } catch (e) {
                // Check if mounted before using context
                if (!mounted) return;

                // Close loading dialog if open
                if (Navigator.canPop(context)) {
                  Navigator.pop(context);
                }

                // Handle errors
                ScaffoldMessenger.of(currentContext).showSnackBar(
                  SnackBar(
                    content: Text('An error occurred: $e'),
                  ),
                );
              }
            },
            onClose: () {
              Navigator.pop(context);
            },
          ),
        ),
      ),
    );
  }
}
