import 'package:core/core.dart';
//import 'package:core/meals/domain/models/nutrition/menu_item_nutrition_extension.dart';
//import 'package:firefit/features/meals/presentation/widgets/nutrition_info_widget.dart.old';
import 'package:flutter/material.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

class MenuItemListTile extends StatelessWidget {
  final MenuItem menuItem;
  final VoidCallback onAddToCart;
  final VoidCallback onRemoveFromCart;
  final int quantity;

  const MenuItemListTile({
    super.key,
    required this.menuItem,
    required this.onAddToCart,
    required this.onRemoveFromCart,
    required this.quantity,
  });

  @override
  Widget build(BuildContext context) {
    return ShadCard(
      child: ExpansionTile(
        leading: ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Image.network(
            menuItem.imageUrl ?? '',
            width: 60,
            height: 60,
            fit: BoxFit.cover,
          ),
        ),
        title: Text(menuItem.name),
        subtitle: Text(
          '\$${menuItem.price.toStringAsFixed(2)}',
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            ShadButton(
              icon: Icon(Icons.remove),
              onPressed: onRemoveFromCart,
            ),
            SizedBox(width: 8),
            Text('$quantity', style: Theme.of(context).textTheme.titleMedium),
            SizedBox(width: 8),
            ShadButton(
              icon: Icon(Icons.add),
              onPressed: onAddToCart,
            ),
          ],
        ),
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  menuItem.notes ?? '',
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                SizedBox(height: 16),
                Text(
                  'Nutrition Information',
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                /*SizedBox(height: 8),
                if (menuItem.nutrition != null)
                  NutritionInfoWidget(nutrition: menuItem.nutrition!)
                else
                  Text('Nutrition information not available'),*/
              ],
            ),
          ),
        ],
      ),
    );
  }
}
