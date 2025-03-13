import 'package:core/core.dart';
import 'package:firefit/features/menu/presentation/widgets/menu_product_card.dart';
import 'package:firefit/features/menu/providers.dart';
import 'package:flutter/material.dart';
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
    required this.productId,
  });

  final String productId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final product = ref.watch(productFutureProvider(productId));
    return product.when(
      data: (productMenuItem) {
        if (productMenuItem == null) {
          return Center(child: Text('Product not found'));
        }
        return MenuProductCard(
            productMenuItem: productMenuItem,
            onBackPressed: () {
              context.pop();
            },
          );
      },
      error: (error, stackTrace) => Center(child: Text(error.toString())),
      loading: () => const Center(child: CircularProgressIndicator()),
    );
  }
}
