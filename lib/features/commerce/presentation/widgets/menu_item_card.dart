import 'package:core/core.dart';
//import 'package:core/meals/domain/models/nutrition/menu_item_nutrition_extension.dart';
//import 'package:firefit/features/meals/presentation/widgets/nutrition_info_widget.dart.old';
import 'package:flutter/material.dart';
import 'package:shadcn_ui/shadcn_ui.dart';
import 'package:cached_network_image/cached_network_image.dart';

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
            child: CachedNetworkImage(
              imageUrl: menuItem.imageUrl ?? '',
              fit: BoxFit.cover,
              placeholder: (context, url) => const CircularProgressIndicator(),
              errorWidget: (context, url, error) => const Icon(Icons.error),
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
                  menuItem.notes ?? '',
                  style: Theme.of(context).textTheme.bodySmall,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(height: 8),
                Text(
                  '\$${menuItem.price.toStringAsFixed(2)}',
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
                /*SizedBox(height: 8),
                ExpansionTile(
                  title: Text('Nutrition Info'),
                  children: [
                    if (menuItem.nutrition != null)
                      NutritionInfoWidget(nutrition: menuItem.nutrition!)
                    else
                      Text('Nutrition information not available'),
                  ],
                ),*/
              ],
            ),
          ),
        ],
      ),
    );
  }
}
