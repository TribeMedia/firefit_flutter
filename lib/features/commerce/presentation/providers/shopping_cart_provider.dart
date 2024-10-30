import 'package:hooks_riverpod/hooks_riverpod.dart';

final cartProvider = FutureProvider<CartModel>((ref) async {
  // Simulate fetching cart data
  await Future.delayed(Duration(seconds: 1));
  return CartModel(items: []);
});

class CartModel {
  final List<Item> items;

  CartModel({required this.items});
}

class Item {
  // Define item properties
}
