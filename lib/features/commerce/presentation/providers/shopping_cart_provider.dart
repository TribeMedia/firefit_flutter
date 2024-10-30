import 'package:firefit/features/commerce/domain/entities/shopping_cart_model.dart';
import 'package:firefit/features/commerce/presentation/providers/shopping_cart_notifier.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final cartProvider =
    AsyncNotifierProvider<ShoppingCartNotifier, ShoppingCartModel>(
  () => ShoppingCartNotifier(),
);
