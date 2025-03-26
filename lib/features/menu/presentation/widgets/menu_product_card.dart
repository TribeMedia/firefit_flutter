import 'package:core/core.dart';
import 'package:firefit/features/menu/presentation/widgets/full_screen_instructions_widget.dart';
import 'package:firefit/features/menu/presentation/widgets/timer_notifier.dart';
import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

// TabController provider
final tabControllerProvider = Provider.autoDispose.family<TabController, BuildContext>((ref, context) {
  final controller = TabController(length: 2, vsync: Scaffold.of(context));
  ref.onDispose(() {
    controller.dispose();
  });
  return controller;
});

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
    final timerState = ref.watch(timerProvider);
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final quantity = ref.watch(quantityProvider);

    // TabController is now managed by Riverpod
    // We need to ensure we're in a valid context before accessing Scaffold.of
    // Using Builder to get a valid BuildContext for the TabController

    return SafeArea(
      bottom: true,
      child: Scaffold(
        backgroundColor: colorScheme.background,
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
        bottomNavigationBar: _buildAddToCartBar(context, ref, colorScheme, theme, quantity),
        body: Builder(
            builder: (scaffoldContext) {
              // Get the TabController from the provider with the correct BuildContext
              final tabController = ref.watch(tabControllerProvider(scaffoldContext));

              return LayoutBuilder(
                builder: (BuildContext context, BoxConstraints constraints) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Product Image
                      _buildProductImage(colorScheme),

                      // Product Details
                      _buildProductDetails(theme, colorScheme),

                      // Tab bar for Overview and Instructions
                      if (productMenuItem.instructions != null &&
                          productMenuItem.instructions!.isNotEmpty) ...[
                        Padding(
                          padding: const EdgeInsets.fromLTRB(16, 8, 16, 0),
                          child: Container(
                            decoration: BoxDecoration(
                              color: colorScheme.surfaceVariant.withOpacity(0.3),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: TabBar(
                              controller: tabController,
                              labelColor: colorScheme.primary,
                              unselectedLabelColor: colorScheme.onSurfaceVariant,
                              indicatorColor: colorScheme.primary,
                              indicatorSize: TabBarIndicatorSize.tab,
                              dividerColor: Colors.transparent,
                              tabs: [
                                // Simple text tab for Overview
                                const Tab(text: 'Overview'),

                                // Custom tab with text and button for Instructions
                                Tab(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      const Text('Instructions'),
                                      const SizedBox(width: 8),
                                      // Small button for fullscreen
                                      InkWell(
                                        onTap: () {
                                          Navigator.of(context).push(
                                            MaterialPageRoute(
                                              builder: (context) => FullScreenInstructions(
                                                title: productMenuItem.name,
                                                instructions: productMenuItem.instructions ?? '',
                                              ),
                                            ),
                                          );
                                        },
                                        borderRadius: BorderRadius.circular(4),
                                        child: Padding(
                                          padding: const EdgeInsets.all(2.0),
                                          child: Icon(
                                            Icons.fullscreen,
                                            size: 18,
                                            color: colorScheme.primary,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),

                        // Tab content - expanded to fill remaining space
                        Expanded(
                          child: TabBarView(
                            controller: tabController,
                            children: [
                              // Overview Tab
                              _buildOverviewTab(theme, colorScheme),

                              // Instructions Tab
                              _buildInstructionsTab(context, theme, colorScheme),
                            ],
                          ),
                        ),
                      ],
                    ],
                  );
                },
              );
            }
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
        child: Image.network(
          productMenuItem.photoUrl!,
          fit: BoxFit.cover,
          errorBuilder: (context, error, stackTrace) => Container(
            color: colorScheme.surfaceVariant,
            child: Center(
              child: Icon(
                Icons.image_not_supported,
                size: 40,
                color: colorScheme.onSurfaceVariant,
              ),
            ),
          ),
        ),
      ),
    )
        : AspectRatio(
      aspectRatio: 16 / 9,
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: colorScheme.surfaceVariant,
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
                child: Text(
                  productMenuItem.name,
                  style: theme.textTheme.titleLarge?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: colorScheme.onBackground,
                  ),
                  maxLines: 1,
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
                color: colorScheme.onBackground,
              ),
            ),
          ],

          // Unit (if available)
          if (productMenuItem.unit != null) ...[
            const SizedBox(height: 12),
            Text(
              'Unit: ${productMenuItem.unit}',
              style: theme.textTheme.bodyMedium?.copyWith(
                color: colorScheme.onBackground.withOpacity(0.8),
              ),
            ),
          ],
        ],
      ),
    );
  }

  Widget _buildOverviewTab(ThemeData theme, ColorScheme colorScheme) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'About this item',
            style: theme.textTheme.titleMedium?.copyWith(
              fontWeight: FontWeight.bold,
              color: colorScheme.onBackground,
            ),
          ),
          const SizedBox(height: 8),
          // Add additional info here like ingredients, allergens, nutritional info
          Text(
            'This product is prepared freshly for your enjoyment. Our dishes are made with high-quality ingredients sourced locally when possible.',
            style: theme.textTheme.bodyMedium?.copyWith(
              color: colorScheme.onBackground,
            ),
          ),
          const SizedBox(height: 16),
          // Additional info cards can be added here
        ],
      ),
    );
  }

  Widget _buildInstructionsTab(BuildContext context, ThemeData theme, ColorScheme colorScheme) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: colorScheme.surface,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.05),
              blurRadius: 8,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Markdown(
          data: productMenuItem.instructions ?? '',
          padding: const EdgeInsets.all(16),
          styleSheet: MarkdownStyleSheet.fromTheme(theme).copyWith(
            p: theme.textTheme.bodyMedium?.copyWith(
              color: colorScheme.onBackground,
              height: 1.5,
            ),
            h1: theme.textTheme.headlineSmall?.copyWith(
              color: colorScheme.primary,
              fontWeight: FontWeight.bold,
            ),
            h2: theme.textTheme.titleLarge?.copyWith(
              color: colorScheme.primary,
              fontWeight: FontWeight.bold,
            ),
            h3: theme.textTheme.titleMedium?.copyWith(
              color: colorScheme.primary,
              fontWeight: FontWeight.bold,
            ),
            listBullet: theme.textTheme.bodyMedium?.copyWith(
              color: colorScheme.primary,
            ),
            a: theme.textTheme.bodyMedium?.copyWith(
              color: colorScheme.primary,
              decoration: TextDecoration.underline,
            ),
            blockquote: theme.textTheme.bodyMedium?.copyWith(
              color: colorScheme.onBackground.withOpacity(0.8),
              fontStyle: FontStyle.italic,
            ),
            blockquoteDecoration: BoxDecoration(
              color: colorScheme.surfaceVariant.withOpacity(0.3),
              borderRadius: BorderRadius.circular(4),
              border: Border.all(
                color: colorScheme.primary.withOpacity(0.2),
              ),
            ),
            blockquotePadding: const EdgeInsets.all(16),
            tableHead: theme.textTheme.bodyMedium?.copyWith(
              fontWeight: FontWeight.bold,
              color: colorScheme.onBackground,
            ),
          ),
          shrinkWrap: false,
          physics: const AlwaysScrollableScrollPhysics(),
        ),
      ),
    );
  }

  Widget _buildAddToCartBar(BuildContext context, WidgetRef ref, ColorScheme colorScheme, ThemeData theme, int quantity) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      decoration: BoxDecoration(
        color: colorScheme.surface,
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, -2),
            blurRadius: 6,
            color: Colors.black.withOpacity(0.1),
          ),
        ],
      ),
      child: Row(
        children: [
          // Quantity Controls
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: colorScheme.outline.withOpacity(0.3)),
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
                        : colorScheme.outline.withOpacity(0.3),
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

                  // Show a snackbar confirmation
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Added to cart!'),
                      behavior: SnackBarBehavior.floating,
                      backgroundColor: colorScheme.primary,
                      duration: const Duration(seconds: 2),
                    ),
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
