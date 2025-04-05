import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:core/core.dart';
import 'package:firefit/features/menu/presentation/widgets/full_screen_tabbed_view.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

// Quantity state provider
final quantityProvider = StateProvider.autoDispose<int>((ref) => 1);

class MenuProductCard extends ConsumerWidget {
  const MenuProductCard({
    super.key,
    required this.productMenuItem,
    this.onTap,
    this.onBackPressed,
    this.onAddToCart,
  });

  final Product productMenuItem;
  final VoidCallback? onTap;
  final VoidCallback? onBackPressed;
  final Function(Product, int)? onAddToCart;

  void _incrementQuantity(WidgetRef ref) {
    ref.read(quantityProvider.notifier).update((state) => state + 1);
  }

  void _decrementQuantity(WidgetRef ref) {
    final quantity = ref.read(quantityProvider);
    if (quantity > 1) {
      ref.read(quantityProvider.notifier).update((state) => state - 1);
    }
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final quantity = ref.watch(quantityProvider);

    return SafeArea(
      bottom: true,
      child: Scaffold(
        backgroundColor: colorScheme.surface,
        appBar: AppBar(
          backgroundColor: colorScheme.surface,
          elevation: 0,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: colorScheme.onSurface,
            ),
            onPressed: onBackPressed,
          ),
          title: Text(
            'Product Details',
            style: theme.textTheme.titleMedium?.copyWith(
              fontWeight: FontWeight.bold,
              color: colorScheme.onSurface,
            ),
          ),
        ),
        // Add persistent bottom button for cart
        bottomNavigationBar:
            _buildAddToCartBar(context, ref, colorScheme, theme, quantity),
        body: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Product Image
                _buildProductImage(colorScheme),

                // Product Details
                _buildProductDetails(theme, colorScheme),

                // Product details buttons
                Padding(
                  padding: const EdgeInsets.fromLTRB(16, 8, 16, 0),
                  child: Column(
                    children: [
                      // Full details button - improved with a more prominent style
                      ElevatedButton.icon(
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => FullScreenTabbedView(
                                title: productMenuItem.name,
                                description: productMenuItem.longDescription ?? 
                                    'This product is prepared freshly for your enjoyment. Our dishes are made with high-quality ingredients sourced locally when possible.',
                                instructions: productMenuItem.instructions ?? '',
                                nutrition: productMenuItem.nutritionDetails ?? 
                                    'Nutrition information not available.',
                                imageUrl: productMenuItem.photoUrl,
                              ),
                            ),
                          );
                        },
                        icon: const Icon(Icons.menu_book),
                        label: const Text('View Full Details'),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: colorScheme.primary,
                          foregroundColor: colorScheme.onPrimary,
                          minimumSize: const Size(double.infinity, 56), // Slightly taller
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          elevation: 2, // Add a slight shadow
                          padding: const EdgeInsets.symmetric(vertical: 12), // More padding
                        ),
                      ),
                    ],
                  ),
                ),
                
              ],
            );
          },
        ),
      ),
    );
  }

  Widget _buildProductImage(ColorScheme colorScheme) {
    return productMenuItem.photoUrl != null
        ? SizedBox(
            width: double.infinity,
            child: AspectRatio(
              aspectRatio: 16 / 9,
                  child: CachedNetworkImage(
                    imageUrl: productMenuItem.photoUrl!,
                    fit: BoxFit.cover,
                    placeholder: (context, url) => Container(
                      color: colorScheme.surfaceContainerHighest,
                      child: Center(
                        child: CircularProgressIndicator(
                          strokeWidth: 2,
                          color: colorScheme.primary,
                        ),
                      ),
                    ),
                    errorWidget: (context, url, error) => Container(
                      color: colorScheme.surfaceContainerHighest,
                      child: Center(
                        child: Icon(
                          Icons.image_not_supported,
                          size: 40,
                          color: colorScheme.onSurfaceVariant,
                        ),
                      ),
                    ),
                    memCacheWidth: 800, // Limit memory cache size
                    memCacheHeight: 450, // Based on 16:9 aspect ratio
                  ),
            ),
          )
        : AspectRatio(
            aspectRatio: 16 / 9,
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: colorScheme.surfaceContainerHighest,
              ),
              child: Center(
                child: Icon(
                  Icons.fastfood,
                  size: 40,
                  color: colorScheme.onSurfaceVariant,
                ),
              ),
            ),
          );
  }

  Widget _buildProductDetails(ThemeData theme, ColorScheme colorScheme) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Name & Price Row
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: AutoSizeText(
                  productMenuItem.name,
                  style: theme.textTheme.titleLarge?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: colorScheme.onSurface,
                  ),
                  maxLines: 1,
                  minFontSize: 14,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              const SizedBox(width: 8),
              Text(
                '\$${productMenuItem.unitPrice.toStringAsFixed(2)}',
                style: theme.textTheme.titleLarge?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: colorScheme.primary,
                ),
              ),
            ],
          ),

          // Short description (if available)
          if (productMenuItem.shortDescription != null) ...[
            const SizedBox(height: 12),
            Text(
              productMenuItem.shortDescription!,
              style: theme.textTheme.bodyLarge?.copyWith(
                color: colorScheme.onSurface,
              ),
            ),
          ],

          // Unit (if available)
          if (productMenuItem.unit != null) ...[
            const SizedBox(height: 12),
            Text(
              'Unit: ${productMenuItem.unit}',
              style: theme.textTheme.bodyMedium?.copyWith(
                color: Color.fromRGBO(
                    colorScheme.onSurface.r.round(),
                    colorScheme.onSurface.g.round(),
                    colorScheme.onSurface.b.round(),
                    0.8),
              ),
            ),
          ],
        ],
      ),
    );
  }

  Widget _buildAddToCartBar(BuildContext context, WidgetRef ref,
      ColorScheme colorScheme, ThemeData theme, int quantity) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      decoration: BoxDecoration(
        color: colorScheme.surface,
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, -2),
            blurRadius: 6,
            color: Color.fromRGBO(0, 0, 0, 0.1),
          ),
        ],
      ),
      child: Row(
        children: [
          // Quantity Controls
          Container(
            decoration: BoxDecoration(
              border: Border.all(
                  color: Color.fromRGBO(
                      colorScheme.outline.r.round(),
                      colorScheme.outline.g.round(),
                      colorScheme.outline.b.round(),
                      0.3)),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                // Decrement Button
                IconButton(
                  icon: Icon(
                    Icons.remove,
                    color: quantity > 1
                        ? colorScheme.primary
                        : Color.fromRGBO(
                            colorScheme.outline.r.round(),
                            colorScheme.outline.g.round(),
                            colorScheme.outline.b.round(),
                            0.3),
                  ),
                  onPressed: () => _decrementQuantity(ref),
                  constraints: const BoxConstraints(
                    minWidth: 36,
                    minHeight: 36,
                  ),
                  padding: EdgeInsets.zero,
                ),

                // Quantity Display
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Text(
                    quantity.toString(),
                    style: theme.textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),

                // Increment Button
                IconButton(
                  icon: Icon(
                    Icons.add,
                    color: colorScheme.primary,
                  ),
                  onPressed: () => _incrementQuantity(ref),
                  constraints: const BoxConstraints(
                    minWidth: 36,
                    minHeight: 36,
                  ),
                  padding: EdgeInsets.zero,
                ),
              ],
            ),
          ),

          const SizedBox(width: 16),

          // Add to Cart Button
          Expanded(
            child: ElevatedButton(
              onPressed: () {
                if (onAddToCart != null) {
                  onAddToCart!(productMenuItem, quantity);
                  // Reset quantity after adding to cart
                  ref.read(quantityProvider.notifier).state = 1;

                  Fluttertoast.showToast(
                    msg: 'Added to cart!',
                    toastLength: Toast.LENGTH_SHORT,
                    gravity: ToastGravity.BOTTOM,
                    timeInSecForIosWeb: 1,
                    backgroundColor: colorScheme.primary,
                    textColor: colorScheme.onPrimary,
                    fontSize: 16.0,
                  );
                }
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: colorScheme.primary,
                foregroundColor: colorScheme.onPrimary,
                padding: const EdgeInsets.symmetric(vertical: 12),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: Text(
                'Add to Cart - \$${(productMenuItem.unitPrice * quantity).toStringAsFixed(2)}',
                style: theme.textTheme.titleMedium?.copyWith(
                  color: colorScheme.onPrimary,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
