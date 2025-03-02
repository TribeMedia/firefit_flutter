import 'package:core/core.dart';
import 'package:freezed_annotation/freezed_annotation.dart'; // Adjust import path

part 'shopping_cart_view_model.freezed.dart';
part 'shopping_cart_view_model.g.dart';

@freezed
abstract class MenuItemViewModel with _$MenuItemViewModel {
  const factory MenuItemViewModel({
    required String id,
    required String name,
    required double price,
    String? imageUrl,
  }) = _MenuItemViewModel;

  factory MenuItemViewModel.fromJson(Map<String, dynamic> json) =>
      _$MenuItemViewModelFromJson(json);
}

@freezed
abstract class ShoppingCartViewModel with _$ShoppingCartViewModel {
  const factory ShoppingCartViewModel({
    required String id,
    required List<MenuItemViewModel> items,
    double? subtotal,
    double? total,
    int? itemCount,
  }) = _ShoppingCartViewModel;

  factory ShoppingCartViewModel.fromJson(Map<String, dynamic> json) =>
      _$ShoppingCartViewModelFromJson(json);

  // Conversion function
  static ShoppingCartViewModel fromFragment(ShoppingCart fragment) {
    final items = fragment.shoppingCartItemsCollection?.edges
            .map((edge) => edge.node.product)
            .toList() ??
        [];

    final itemsViewModel = items
        .map((menuItem) => MenuItemViewModel(
              id: menuItem.id,
              name: menuItem.name,
              price: menuItem.unitPrice.toDouble(),
              imageUrl: menuItem.photoUrl,
            ))
        .toList();

    return ShoppingCartViewModel(
      id: fragment.id,
      items: itemsViewModel,
    );
  }
}
