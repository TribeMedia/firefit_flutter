import 'package:core/core.dart';
import 'package:firefit/features/menu/presentation/widgets/menu_product_card.dart';
import 'package:firefit/features/menu/providers.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final productFutureProvider =
    FutureProvider.family<Product?, String>((ref, productId) async {
  final productRepository = ref.read(productRepositoryProvider);
  final result = await productRepository.queryProducts(
    filter: Input$ProductsFilter(
      id: Input$UUIDFilter(eq: productId),
    ),
  );
  return result.fold(
    (failure) => null,
    (menuItems) {
      if (menuItems.isEmpty) {
        return null;
      }
      return menuItems.first;
    },
  );
});

class MenuProductScreen extends ConsumerWidget {
  const MenuProductScreen({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MenuProductCard(
      productMenuItem: product,
      onAddToCart: (product, quantity) {
        // Show loading indicator
        debugPrint(
            'Adding to cart: ${product.name}\nQuantity: $quantity\nProduct ID: ${product.id}');

        // Add to cart in the background - don't await
        ref
            .read(productCartProvider.notifier)
            .addProductToCart(product: product, quantity: quantity);
        final res = ref.refresh(productCartProvider);
        res.whenData((cart) {
          debugPrint(
              'Adding item to cart: ${cart.shoppingCartItems.length}, UI will update automatically via stream');
        });

        // Show confirmation immediately
        Fluttertoast.showToast(
          msg: '${product.name} added to cart ($quantity items)!',
          toastLength: Toast.LENGTH_LONG,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIosWeb: 2,
          backgroundColor: Theme.of(context).colorScheme.secondary,
          textColor: Theme.of(context).colorScheme.onSecondary,
          fontSize: 16.0,
        );

        // Navigate back immediately
        context.pop();
      },
      onBackPressed: () {
        context.pop();
      },
    );
  }
}
