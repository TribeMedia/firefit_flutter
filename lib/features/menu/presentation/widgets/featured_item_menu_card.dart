import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shadcn_ui/shadcn_ui.dart';
import 'package:cached_network_image/cached_network_image.dart';

class FeaturedMenuItemCard extends HookConsumerWidget {
  final MenuItem menuItem;

  const FeaturedMenuItemCard({super.key, required this.menuItem});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final shadTheme = ShadTheme.of(context);
    return ShadCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.vertical(top: Radius.circular(12)),
            child: Stack(
              children: [
                CachedNetworkImage(
                  imageUrl: menuItem.imageUrl ?? '',
                  fit: BoxFit.cover,
                  placeholder: (context, url) => const CircularProgressIndicator(),
                  errorWidget: (context, url, error) => const Icon(Icons.error),
                ),
                if (!menuItem.isAvailable)
                  Positioned(
                    top: 10,
                    right: 10,
                    child: ShadBadge(
                      backgroundColor: shadTheme.colorScheme.destructive,
                      child: Text('Unavailable'),
                    ),
                  ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  menuItem.name,
                  style: shadTheme.textTheme.h2,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(height: 4),
                Text(
                  menuItem.notes ?? 'No description available',
                  style: shadTheme.textTheme.p,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '\$${menuItem.price.toStringAsFixed(2)}',
                      style: shadTheme.textTheme.h3.copyWith(
                        color: shadTheme.colorScheme.primary,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Wrap(
                      spacing: 4,
                      children: menuItem.categories
                          .where((category) => category != null)
                          .map((category) => ShadBadge(
                                backgroundColor:
                                    shadTheme.colorScheme.background,
                                child: Text(
                                  category!,
                                  style: TextStyle(fontSize: 10),
                                ),
                              ))
                          .take(2)
                          .toList(),
                    ),
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
