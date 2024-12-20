import 'package:core/core.dart';
//import 'package:firefit/features/meals/presentation/widgets/nutrition_info_widget.dart';
import 'package:flutter/material.dart';
import 'package:shadcn_ui/shadcn_ui.dart';
import 'package:cached_network_image/cached_network_image.dart';

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
      child: Theme(
        data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
        child: ExpansionTile(
          childrenPadding: EdgeInsets.all(16),
          expandedCrossAxisAlignment: CrossAxisAlignment.start,
          title: _buildTileContent(context),
          children: [
            _buildExpandedContent(context),
          ],
        ),
      ),
    );
  }

  Widget _buildTileContent(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: CachedNetworkImage(
            imageUrl: menuItem.imageUrl ?? '',
            fit: BoxFit.cover,
            placeholder: (context, url) => const CircularProgressIndicator(),
            errorWidget: (context, url, error) => const Icon(Icons.error),
          ),
        ),
        SizedBox(width: 16),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                menuItem.name,
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              SizedBox(height: 4),
              Text(
                menuItem.notes ?? '',
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: Theme.of(context).textTheme.bodySmall?.color,
                    ),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              SizedBox(height: 8),
              Row(
                children: [
                  Text(
                    '\$${menuItem.price.toStringAsFixed(2)}',
                    style: Theme.of(context).textTheme.titleSmall?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  SizedBox(width: 16),
                  _buildCartControls(context),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildCartControls(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        ShadButton.outline(
          size: ShadButtonSize.sm,
          icon: Icon(Icons.remove, size: 16),
          onPressed: onRemoveFromCart,
        ),
        SizedBox(width: 8),
        Text(
          quantity.toString(),
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                fontWeight: FontWeight.bold,
              ),
        ),
        SizedBox(width: 8),
        ShadButton.outline(
          size: ShadButtonSize.sm,
          icon: Icon(Icons.add, size: 16),
          onPressed: onAddToCart,
        ),
      ],
    );
  }

  Widget _buildExpandedContent(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Full Description',
          style: Theme.of(context).textTheme.titleSmall?.copyWith(
                fontWeight: FontWeight.bold,
              ),
        ),
        SizedBox(height: 8),
        Text(
          menuItem.notes ?? '',
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        /*SizedBox(height: 16),
        if (menuItem.nutrition != null) ...[
          Text(
            'Nutrition Information',
            style: Theme.of(context).textTheme.titleSmall?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
          ),
          SizedBox(height: 8),
          NutritionInfoWidget(nutrition: menuItem.nutrition!),
        ],*/
      ],
    );
  }
}
