import 'package:auto_size_text/auto_size_text.dart';
import 'package:core/commerce/graphql/orders.graphql.dart';
import 'package:core/commerce/tax/domain/services/stripe_payment_service_interface.dart';
import 'package:core/core.dart';
import 'package:firefit/features/commerce/domain/database/database.dart';
import 'package:firefit/features/commerce/presentation/widgets/cart_overlay.dart';
import 'package:firefit/features/commerce/presentation/widgets/delivery_location_selector.dart';
import 'package:firefit/features/commerce/providers/providers.dart';
import 'package:firefit/features/common/presentation/screens/error_screen.dart';
import 'package:firefit/features/common/presentation/widgets/cart_badge.dart';
import 'package:firefit/features/common/presentation/widgets/initials_avatar.dart';
import 'package:firefit/features/menu/providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

part 'home_sliver_app_bar.g.dart';

class HomeAppBarState {
  HomeAppBarState({
    required this.scrollController,
    required this.constraints,
    required this.currentTextColor,
    required this.startTextColor,
    required this.endTextColor,
  }) {
    textColorTween = ColorTween(
      begin: startTextColor,
      end: endTextColor,
    );
  }

  final ScrollController scrollController;
  final Color currentTextColor;
  final Color startTextColor;
  final Color endTextColor;
  final SliverConstraints constraints;
  late final ColorTween textColorTween;

  HomeAppBarState copyWith({
    ScrollController? scrollController,
    Color? startTextColor,
    Color? currentTextColor,
    Color? endTextColor,
    SliverConstraints? constraints,
  }) {
    return HomeAppBarState(
      scrollController: scrollController ?? this.scrollController,
      currentTextColor: currentTextColor ?? this.currentTextColor,
      endTextColor: endTextColor ?? this.endTextColor,
      constraints: constraints ?? this.constraints,
      startTextColor: startTextColor ?? this.startTextColor,
    );
  }
}

class HomeAppBarInput {
  const HomeAppBarInput({
    required this.startTextColor,
    required this.endTextColor,
    required this.constraints,
    required this.scrollController,
  });

  final Color startTextColor;
  final Color endTextColor;
  final SliverConstraints constraints;
  final ScrollController scrollController;
}

@riverpod
class HomeAppBar extends _$HomeAppBar {
  static const double expandedHeight = 200.0;

  @override
  FutureOr<HomeAppBarState> build(HomeAppBarInput input) {
    // Remove any existing listeners first
    input.scrollController.removeListener(() {});

    // Add the scroll listener directly
    input.scrollController.addListener(() {
      if (!state.hasValue || !input.scrollController.hasClients) return;

      final double scrollPercentage =
          (input.scrollController.offset / (expandedHeight - kToolbarHeight))
              .clamp(0.0, 1.0);

      final Color newTextColor = Color.lerp(
            input.startTextColor,
            input.endTextColor,
            scrollPercentage,
          ) ??
          input.startTextColor;

      // Only update if color has changed
      if (state.value!.currentTextColor != newTextColor) {
        state = AsyncValue.data(state.value!.copyWith(
          currentTextColor: newTextColor,
        ));
      }
    });

    // Calculate initial color based on current scroll position
    final double initialScrollPercentage = input.scrollController.hasClients
        ? (input.scrollController.offset / (expandedHeight - kToolbarHeight))
            .clamp(0.0, 1.0)
        : 0.0;

    final Color initialColor = Color.lerp(
          input.startTextColor,
          input.endTextColor,
          initialScrollPercentage,
        ) ??
        input.startTextColor;

    return HomeAppBarState(
      scrollController: input.scrollController,
      startTextColor: input.startTextColor,
      currentTextColor: initialColor,
      endTextColor: input.endTextColor,
      constraints: input.constraints,
    );
  }
}

class HomeSliverAppBar extends HookConsumerWidget {
  const HomeSliverAppBar({
    super.key,
    required this.station,
    required this.user,
    required this.parentScrollController,
  });

  final Station station;
  final AuthUser user;
  final ScrollController parentScrollController;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final Brightness brightness = Theme.of(context).brightness;

    // Always start with white for expanded state
    final Color startTextColor = Colors.white;
    // End color depends on brightness mode
    final Color endTextColor = brightness == Brightness.dark
        ? Colors.white // Stay white in dark mode
        : Colors.black; // Transition to black in light mode

    // Watch the cart status for changes - this is a lightweight provider
    // that only contains the minimal information needed for the cart badge
    final cartResult = ref.watch(productCartProvider);

    return cartResult.when(
      data: (cartModel) {
        debugPrint('🛒 Cart model: $cartModel showing in home sliver app bar');
        final cart = cartModel.currentCart;
        final items = cartModel.shoppingCartItems;

        // Get the cart information directly from the status
        final cartItemCount = items.length;
        final hasItems = items.isNotEmpty;
        final cartId = cart.id;

        // Debug the items list
        debugPrint('🛒 Items in cart: $cartItemCount, hasCart: $cartId');

        // When there are no items, don't show any cart widget
        Widget cartWidget = const SizedBox.shrink();

        // Only show cart when there are items
        if (hasItems && cartItemCount > 0) {
          cartWidget = Stack(
            clipBehavior: Clip.none,
            children: [
              IconButton(
                key: const Key('cart_icon_button'),
                onPressed: () {
                  showCartDrawer(
                    context,
                    user.user,
                    ref,
                  );
                },
                icon: const Icon(Icons.shopping_cart_outlined),
                tooltip: 'Shopping Cart',
                style: IconButton.styleFrom(
                  foregroundColor: Theme.of(context).colorScheme.onSurface,
                ),
              ),
              Positioned(
                right: 8,
                top: 8,
                child: CartBadge(itemCount: cartItemCount),
              ),
            ],
          );
        } else {
          // For debugging: Show where the cart would be, but transparent - remove in production
          cartWidget = Opacity(
            opacity: 0.0,
            child: IconButton(
              key: const Key('invisible_cart_icon'),
              onPressed: null,
              icon: const Icon(Icons.shopping_cart_outlined),
            ),
          );
        }

        return SliverLayoutBuilder(
          builder: (BuildContext context, SliverConstraints constraints) {
            final homeAppBarState = ref.watch(
              homeAppBarProvider(
                HomeAppBarInput(
                  scrollController: parentScrollController,
                  startTextColor: startTextColor,
                  endTextColor: endTextColor,
                  constraints: constraints,
                ),
              ),
            );

            return homeAppBarState.when(
              data: (HomeAppBarState state) => SliverAppBar(
                actions: [
                  cartWidget,
                  IconButton(
                    icon: const Icon(Icons.notifications),
                    onPressed: () {},
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 8),
                    child: GestureDetector(
                      onTap: () => context.push('/profile'),
                      child: user.profile.avatar != null
                          ? ShadAvatar(user.profile.avatar!)
                          : InitialsAvatar(
                              name: user.profile.displayName!,
                            ),
                    ),
                  ),
                ],
                leading: Padding(
                  padding: const EdgeInsets.fromLTRB(12.0, 0, 0, 0),
                  child: ColorFiltered(
                    colorFilter: ColorFilter.mode(
                      Theme.of(context)
                          .colorScheme
                          .primary
                          .withAlpha((255 * 0.1).round()),
                      BlendMode.srcATop,
                    ),
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
                expandedHeight: 200.0,
                floating: false,
                pinned: true,
                flexibleSpace: FlexibleSpaceBar(
                  title: AutoSizeText(
                    station.name,
                    style: TextStyle(
                      color: state.currentTextColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  background: Stack(
                    fit: StackFit.expand,
                    children: [
                      Image.network(
                        station.coverUrl ?? '',
                        fit: BoxFit.cover,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Colors.transparent,
                              Colors.black.withAlpha((255 * 0.7).round()),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              loading: () => SliverAppBar(
                expandedHeight: 200.0,
                floating: false,
                pinned: true,
                flexibleSpace: FlexibleSpaceBar(
                  title: Text(
                    station.name,
                    style: TextStyle(
                      color: startTextColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              error: (Object error, StackTrace stackTrace) =>
                  SliverToBoxAdapter(
                child: ErrorScreen(
                  errorMessage: error.toString(),
                  onRetry: () => context.go('/'),
                ),
              ),
            );
          },
        );
      },
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (error, stackTrace) => Center(
        child: Text(error.toString()),
      ),
    );
  }
}

// Separate method to handle checkout logic
Future<void> _handleCheckout(BuildContext context, List<CartItem> items,
    User user, WidgetRef ref) async {
  final productsMap = ref.read(productsMapProvider(items));
  final productCartNotifier = ref.read(productCartProvider.notifier);

  final chosenLocation = await showShadDialog<Fragment$DeliveryLocation?>(
      context: context, 
      builder: (context) {
        return DeliveryLocationSelector(onDeliveryLocationSelected: (location){
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
      //Navigator.of(context).pop();
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
      if (!context.mounted) return;

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

      if (!context.mounted) return;

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
      if (!context.mounted) return;

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
      if (!context.mounted) return;

      // Present the payment sheet
      final options = await Stripe.instance.presentPaymentSheet();

      // Add a mounted check
      if (!context.mounted) return;

      // Handle payment result
      if (options == null) {
        Fluttertoast.showToast(
          msg: 'Payment failed',
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
          backgroundColor: Colors.red,
        );
        return;
      }

      final result = await productCartNotifier.createOrder(chosenLocation);

      // Add a mounted check before using context
      if (!context.mounted) return;

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
      if (!context.mounted) return;

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

// Modified to fetch cart data when needed instead of requiring it upfront
void showCartDrawer(
  BuildContext context,
  User user,
  WidgetRef ref,
) {
  // Get the cart items from the provider
  final cartResult = ref.read(productCartProvider);

  cartResult.whenData((cartModel) {
    final items = cartModel.shoppingCartItems;

    // Show cart overlay with the fetched cart
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (context) => DraggableScrollableSheet(
        initialChildSize: 0.7,
        minChildSize: 0.5,
        maxChildSize: 0.9,
        builder: (_, controller) => CartOverlay(
          user: user,
          onUpdateQuantity: (int itemId, int quantity) {
            // Call the notifier to update the quantity
            ref
                .read(productCartProvider.notifier)
                .updateCartItemQuantity(itemId, quantity);
            final refresh = ref.refresh(productCartProvider);
            refresh.whenData((data) {
              debugPrint(data.toString());
            });
          },
          onCheckout: () {
            _handleCheckout(context, items, user, ref);
          },
          onClose: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  });
}
