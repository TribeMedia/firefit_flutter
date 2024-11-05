import 'package:firefit/features/commerce/presentation/providers/shopping_cart_provider.dart';
import 'package:firefit/features/common/presentation/widgets/cart_badge.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class CartIcon extends ConsumerWidget {
  const CartIcon({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final cartAsync = ref.watch(cartProvider);

    return cartAsync.when(
      data: (model) => Stack(
        alignment: Alignment.center,
        children: [
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {
              context.go('/shopping-cart');
            },
          ),
          if (model.items.isNotEmpty)
            Positioned(
              right: 8,
              top: 8,
              child: CartBadge(itemCount: model.items.length),
            ),
        ],
      ),
      loading: () => SizedBox.shrink(),
      error: (_, __) => SizedBox.shrink(),
    );
  }
}
