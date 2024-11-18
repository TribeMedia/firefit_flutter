import 'package:cached_network_image/cached_network_image.dart';
import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

class MenuItemTile extends StatelessWidget {
  final MenuItem item;
  final VoidCallback? onAddToOrder;

  const MenuItemTile({
    super.key,
    required this.item,
    this.onAddToOrder,
  });

  @override
  Widget build(BuildContext context) {
    final theme = ShadTheme.of(context);

    return ConstrainedBox(
      constraints: BoxConstraints(
        minHeight: 80,
        maxHeight: 120,
      ),
      child: IntrinsicHeight(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Item Image
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: CachedNetworkImage(
                imageUrl: item.imageUrl ?? 'https://via.placeholder.com/80',
                width: 80,
                height: 80,
                fit: BoxFit.cover,
                placeholder: (context, url) => const CircularProgressIndicator(),
                errorWidget: (context, url, error) => const Icon(Icons.error),
              ),
            ),
            const SizedBox(width: 16),
            // Name, Description, Price, and Add to Order button
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        item.name,
                        style: theme.textTheme.h4,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      const SizedBox(height: 4),
                      Text(
                        item.notes ?? 'No description available',
                        style: theme.textTheme.p.copyWith(
                          color: theme.colorScheme.mutedForeground,
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '\$${item.price.toStringAsFixed(2)}',
                        style: theme.textTheme.h4.copyWith(
                          color: theme.colorScheme.primary,
                        ),
                      ),
                      ShadButton(
                        onPressed: onAddToOrder,
                        child: const Text('Add to Order'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}