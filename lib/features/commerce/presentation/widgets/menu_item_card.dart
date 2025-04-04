import 'package:core/core.dart';
import 'package:firefit/features/commerce/presentation/providers/delivery_location_provider.dart';
import 'package:firefit/features/commerce/presentation/widgets/nutrition_info_widget.dart';
import 'package:firefit/features/commerce/providers/providers.dart';
//import 'package:core/meals/domain/models/nutrition/menu_item_nutrition_extension.dart';
//import 'package:firefit/features/meals/presentation/widgets/nutrition_info_widget.dart.old';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

class MenuItemCard extends ConsumerWidget {
  final Product menuItem;
  final VoidCallback onAddToCart;
  final VoidCallback onRemoveFromCart;
  final int quantity;

  const MenuItemCard({
    super.key,
    required this.menuItem,
    required this.onAddToCart,
    required this.onRemoveFromCart,
    required this.quantity,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final deliveryLocations = ref.watch(deliveryLocationsAvailableProvider);
    return deliveryLocations.when(
        data: (isAvailable) {
          return ShadCard(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.vertical(top: Radius.circular(12)),
                  child: Image.network(
                    menuItem.photoUrl ?? '',
                    height: 120,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        menuItem.name,
                        style: Theme.of(context).textTheme.titleMedium,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      SizedBox(height: 4),
                      Text(
                        menuItem.shortDescription ?? '',
                        style: Theme.of(context).textTheme.bodySmall,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                      SizedBox(height: 8),
                      Text(
                        '\$${menuItem.unitPrice.toStringAsFixed(2)}',
                        style: Theme.of(context).textTheme.titleSmall,
                      ),
                      SizedBox(height: 8),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ShadButton(
                            onPressed: onAddToCart,
                            child: Icon(Icons.add),
                          ),
                          Text('$quantity',
                              style: Theme.of(context).textTheme.titleMedium),
                          ShadButton(
                            onPressed: onRemoveFromCart,
                            child: Icon(Icons.remove),
                          ),
                        ],
                      ),
                      SizedBox(height: 8),
                      ExpansionTile(
                        title: Text('Nutrition Info'),
                        children: [
                          if (menuItem.nutritionDetails != null)
                            NutritionInfoWidget(nutrition: menuItem.nutritionDetails!)
                          else
                            Text('Nutrition information not available'),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
        error: (e, s) => Center(child: Text('Error: $e')),
        loading: () => const Center(child: CircularProgressIndicator()),
    );
  }
}
