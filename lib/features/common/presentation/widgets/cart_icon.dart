import 'package:firefit/features/common/presentation/widgets/cart_badge.dart';
import 'package:firefit/features/menu/providers.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class CartIcon extends ConsumerWidget {
  const CartIcon({
    super.key,
    this.onPressed,
    this.count = 0,
  });

  final VoidCallback? onPressed;
  final int count;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final cartAsync = ref.watch(productCartProvider);

    return cartAsync.when(
      data: (model) => Stack(
        alignment: Alignment.center,
        children: [
          IconButton(
            icon: count > 0
                ? Badge(
                    label: Text(count.toString()),
                    child: Icon(
                      Icons.shopping_cart,
                    ))
                : Icon(
                    Icons.shopping_cart,
                  ),
            onPressed: () {
              if (onPressed != null) {
                onPressed!();
              }
            },
          ),
          if (model.shoppingCartItems.isNotEmpty)
            Positioned(
              right: 8,
              top: 8,
              child: CartBadge(itemCount: model.shoppingCartItems.length),
            ),
        ],
      ),
      loading: () => SizedBox.shrink(),
      error: (_, __) => SizedBox.shrink(),
    );
  }
}
