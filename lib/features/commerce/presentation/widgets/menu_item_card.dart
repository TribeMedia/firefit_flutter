import 'package:core/core.dart';
import 'package:core/meals/domain/models/nutrition/menu_item_nutrition_extension.dart';
import 'package:firefit/features/meals/presentation/widgets/nutrition_info_widget.dart';
import 'package:flutter/material.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

class MenuItemCard extends StatelessWidget {
  final MenuItem menuItem;
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
  Widget build(BuildContext context) {
    return ShadCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.vertical(top: Radius.circular(12)),
            child: Image.network(
              menuItem.imageUrl,
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
                  menuItem.description,
                  style: Theme.of(context).textTheme.bodySmall,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(height: 8),
                Text(
                  '\$${menuItem.price?.toStringAsFixed(2) ?? 'N/A'}',
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
                    if (menuItem.nutrition != null)
                      NutritionInfoWidget(nutrition: menuItem.nutrition!)
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
  }
}
