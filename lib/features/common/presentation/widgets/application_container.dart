import 'package:cached_network_image/cached_network_image.dart';
import 'package:core/commerce/graphql/orders.graphql.dart';
import 'package:core/commerce/tax/domain/services/stripe_payment_service_interface.dart';
import 'package:core/core.dart';
import 'package:firefit/features/commerce/domain/database/database.dart';
import 'package:firefit/features/commerce/presentation/widgets/cart_overlay.dart';
import 'package:firefit/features/commerce/presentation/widgets/delivery_location_selector.dart';
import 'package:firefit/features/commerce/providers/providers.dart';
import 'package:firefit/features/common/presentation/screens/error_screen.dart';
import 'package:firefit/features/common/presentation/widgets/cart_icon.dart';
import 'package:firefit/features/home/presentation/providers/home_state.dart';
import 'package:firefit/features/menu/providers.dart';
import 'package:firefit/theme/dark_theme.dart';
import 'package:firefit/theme/light_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:go_router/go_router.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

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

    // Use select() for more granular rebuilds - only rebuild when relevant parts change
    final homeStateValue =
        ref.watch(homeStateProvider.select((value) => value));

    return homeStateValue.when(
      data: (homeState) {
        final user = homeState.user!.user;
        final asyncProductCart = ref.watch(productCartProvider);

        return asyncProductCart.when(
          data: (cartModel) {
            // Default to no items if no event data yet
            int cartItemCount = cartModel.shoppingCartItems.length;

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
                        // Only show cart icon when there are items
                        cartItemCount > 0
                            ? CartIcon(
                                onPressed: () {
                                  _showCart(
                                    context,
                                    cartModel.shoppingCartItems,
                                    user,
                                  );
                                },
                                count: cartItemCount,
                              )
                            : const SizedBox.shrink(),
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
                                backgroundColor: Color.fromRGBO(
                                    Theme.of(context)
                                        .colorScheme
                                        .primary
                                        .r
                                        .toInt(),
                                    Theme.of(context)
                                        .colorScheme
                                        .primary
                                        .g
                                        .toInt(),
                                    Theme.of(context)
                                        .colorScheme
                                        .primary
                                        .b
                                        .toInt(),
                                    0.1),
                                backgroundImage:
                                    homeState.user!.profile.avatar != null
                                        ? CachedNetworkImageProvider(
                                            homeState.user!.profile.avatar!,
                                            maxWidth:
                                                150, // Constrain max size for memory efficiency
                                            maxHeight: 150,
                                            cacheKey:
                                                'avatar_${homeState.user!.user.id}',
                                          )
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
          loading: () => const Center(child: CircularProgressIndicator()),
          error: (error, stack) => ErrorScreen(
            errorMessage: error.toString(),
            onRetry: () => context.go('/'),
          ),
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

  // Modified to fetch cart data when needed instead of requiring it upfront
  void _showCart(
    BuildContext context,
    List<CartItem> items,
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
            user: user,
            onUpdateQuantity: (int itemId, int quantity) {
              debugPrint('CartOverlay - onUpdateQuantity: $itemId, $quantity');
              // Actually update the quantity in the cart - the stream will handle UI updates
              ref
                  .read(productCartProvider.notifier)
                  .updateCartItemQuantity(itemId, quantity);
              final refresh = ref.refresh(productCartProvider);
              refresh.whenData((data) {
                debugPrint(data.toString());
              });
            },
            onCheckout: () {
              // Create a separate method to handle checkout to avoid BuildContext issues
              _handleCheckout(context, items, user);
            },
            onClose: () {
              Navigator.pop(context);
            },
          ),
        ),
      ),
    );
  }

  // Separate method to handle checkout logic
  Future<void> _handleCheckout(
      BuildContext context, List<CartItem> items, User user) async {
    final productsMap = ref.read(productsMapProvider(items));
    final productCartNotifier = ref.read(productCartProvider.notifier);

    final chosenLocation = await showShadDialog<Fragment$DeliveryLocation?>(
      context: context,
      builder: (context) {
        return DeliveryLocationSelector(onDeliveryLocationSelected: (location) {
          Navigator.of(context).pop(location);
        });
      },
      barrierDismissible: false,
    );

    if (chosenLocation == null) {
      Fluttertoast.showToast(
        msg: 'Please select a delivery location',
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        backgroundColor: Colors.red,
      );
      return;
    }

    productsMap.whenData((data) async {
      if (data.isLeft()) {
        return;
      }

      final products = data.getRight().toNullable();

      if (products == null) {
        return;
      }

      // Capture current context for later use
      final currentContext = context;

      try {
        // Store the dialog context before async operation
        if (!mounted) return;

        // Use a local variable to store the dialog context
        final dialogContext = currentContext;

        // Show loading indicator
        showDialog(
          context: dialogContext,
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

        if (!mounted) return;

        // Calculate subtotal from cart items
        final subtotal = items.fold(
          0.0,
          (sum, item) => sum + (item.unitPrice * item.quantity),
        );

        // Get zip code from the chosen delivery location
        final zipCode = chosenLocation.address.zip;

        // Calculate tax using the sales tax service
        final taxResponse = await ref.read(salesTaxProvider(zipCode).future);
        final taxRate = taxResponse.totalRate;
        final tax = subtotal * taxRate;

        // Calculate total with tax
        final totalAmount = subtotal + tax;

        // Format items for metadata
        List<Map<String, dynamic>> lineItems = [];
        for (var item in items) {
          final product = products[item.id];
          if (product == null) {
            continue;
          }
          lineItems.add({
            'price': product.stripeProductId,
            'productId': product.id,
            'quantity': item.quantity,
          });
        }

        // Create payment intent request - amount is already in dollars, no need to multiply by 100
        final paymentIntentRequest = PaymentIntentRequest(
          currency: 'usd',
          amount: totalAmount,
          metadata: {
            'order_type': 'meal_payment',
          },
        );

        // Create payment intent
        final paymentIntentResponse = await ref
            .read(stripePaymentIntentProvider(paymentIntentRequest).future);

        // Add a mounted check before using context
        if (!mounted) return;

        // Close loading dialog
        if (Navigator.canPop(dialogContext)) {
          Navigator.pop(dialogContext);
        }

        if (paymentIntentResponse.success == null ||
            paymentIntentResponse.success == false) {
          // Show error message
          if (currentContext.mounted) {
            Fluttertoast.showToast(
              msg:
                  'Error: ${paymentIntentResponse.errorMessage ?? "Unknown error creating payment intent"}',
              toastLength: Toast.LENGTH_LONG,
              gravity: ToastGravity.BOTTOM,
              timeInSecForIosWeb: 3,
              backgroundColor: Colors.red,
              textColor: Colors.white,
              fontSize: 16.0,
            );
          }
          return;
        }

        // Initialize the payment sheet
        await Stripe.instance.initPaymentSheet(
          paymentSheetParameters: SetupPaymentSheetParameters(
            merchantDisplayName: 'FireFit Store',
            paymentIntentClientSecret: paymentIntentResponse.clientSecret,
            customerId: user.id,
            style: ThemeMode.system,
          ),
        );

        // Add a mounted check
        if (!mounted) return;

        // Present the payment sheet
        final options = await Stripe.instance.presentPaymentSheet();

        // Add a mounted check
        if (!mounted) return;

        // Handle payment result
        if (options == null) {
          Fluttertoast.showToast(
            msg: 'Payment cancelled',
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.BOTTOM,
            backgroundColor: Colors.red,
          );

          // Close the "Preparing" popup if it's still open
          if (Navigator.canPop(dialogContext)) {
            Navigator.pop(dialogContext);
          }

          // Close the cart overlay
          if (currentContext.mounted) {
            Navigator.pop(currentContext);
          }

          return;
        }

        // Close the "Preparing" popup if it's still open after successful payment
        if (Navigator.canPop(dialogContext)) {
          Navigator.pop(dialogContext);
        }

        final result = await productCartNotifier.createOrder(chosenLocation);

        // Add a mounted check before using context
        if (!mounted) return;

        result.fold(
          (failure) {
            Fluttertoast.showToast(
              msg: 'Error creating order: ${failure.error}',
              toastLength: Toast.LENGTH_SHORT,
              gravity: ToastGravity.BOTTOM,
              backgroundColor: Colors.red,
            );
          },
          (order) {
            // Clear the cart using the method in ShoppingCartNotifier
            ref.read(productCartProvider.notifier).clearCart();
            final res = ref.refresh(productCartProvider);
            res.whenData((data) {
              debugPrint(data.toString());
            });

            Fluttertoast.showToast(
              msg: 'Payment successful! Order created.',
              toastLength: Toast.LENGTH_SHORT,
              gravity: ToastGravity.BOTTOM,
              backgroundColor: Colors.green,
            );

            // Close the cart overlay
            if (currentContext.mounted) {
              Navigator.of(currentContext).pop();
            }
          },
        );
      } catch (e) {
        // Check if mounted before using context
        if (!mounted) return;

        // Close loading dialog if open
        if (Navigator.canPop(currentContext)) {
          Navigator.pop(currentContext);
        }

        // Handle errors
        Fluttertoast.showToast(
          msg: 'An error occurred: $e',
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
          backgroundColor: Colors.red,
        );
      }
    });
  }
}
