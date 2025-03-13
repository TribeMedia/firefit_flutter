import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

class MenuProductCard extends StatefulWidget {
  const MenuProductCard({
    super.key,
    required this.productMenuItem,
    this.onTap,
    this.onBackPressed,
  });

  final Product productMenuItem;
  final VoidCallback? onTap;
  final VoidCallback? onBackPressed;

  @override
  State<MenuProductCard> createState() => _MenuProductCardState();
}

class _MenuProductCardState extends State<MenuProductCard> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

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
            onPressed: widget.onBackPressed,
          ),
          title: Text(
            'Product Details',
            style: theme.textTheme.titleMedium?.copyWith(
              fontWeight: FontWeight.bold,
              color: colorScheme.onSurface,
            ),
          ),
        ),
        body: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Static top content (won't scroll)
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    // Product Image
                    if (widget.productMenuItem.photoUrl != null)
                      SizedBox(
                        width: double.infinity,
                        child: AspectRatio(
                          aspectRatio: 16 / 9,
                          child: Image.network(
                            widget.productMenuItem.photoUrl!,
                            fit: BoxFit.cover,
                            errorBuilder: (context, error, stackTrace) =>
                                Container(
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
                    else
                      AspectRatio(
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
                      ),

                    // Product Details
                    Padding(
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
                                  widget.productMenuItem.name,
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
                                '\$${widget.productMenuItem.unitPrice.toStringAsFixed(2)}',
                                style: theme.textTheme.titleLarge?.copyWith(
                                  fontWeight: FontWeight.bold,
                                  color: colorScheme.primary,
                                ),
                              ),
                            ],
                          ),

                          // Description (if available)
                          if (widget.productMenuItem.shortDescription !=
                              null) ...[
                            const SizedBox(height: 12),
                            Text(
                              widget.productMenuItem.shortDescription!,
                              style: theme.textTheme.bodyLarge?.copyWith(
                                color: colorScheme.onBackground,
                              ),
                            ),
                          ],

                          // Unit (if available)
                          if (widget.productMenuItem.unit != null) ...[
                            const SizedBox(height: 12),
                            Text(
                              'Unit: ${widget.productMenuItem.unit}',
                              style: theme.textTheme.bodyMedium?.copyWith(
                                color:
                                    colorScheme.onBackground.withOpacity(0.8),
                              ),
                            ),
                          ],
                        ],
                      ),
                    ),
                  ],
                ),

                // Instructions section (if available and scrollable)
                if (widget.productMenuItem.instructions != null &&
                    widget.productMenuItem.instructions!.isNotEmpty) ...[
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Text(
                      'Instructions:',
                      style: theme.textTheme.titleMedium?.copyWith(
                        fontWeight: FontWeight.bold,
                        color: colorScheme.onBackground,
                      ),
                    ),
                  ),
                  const SizedBox(height: 8),
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.fromLTRB(16, 0, 16, 24),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: colorScheme.outline.withOpacity(0.2),
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(8),
                        color: colorScheme.surfaceVariant.withOpacity(0.3),
                      ),
                      child: Scrollbar(
                        thumbVisibility: true,
                        radius: const Radius.circular(8),
                        thickness: 6,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Markdown(
                              data: widget.productMenuItem.instructions!,
                              shrinkWrap: true,
                              physics: const ClampingScrollPhysics(),
                              styleSheet:
                                  MarkdownStyleSheet.fromTheme(theme).copyWith(
                                p: theme.textTheme.bodyMedium?.copyWith(
                                  color: colorScheme.onBackground,
                                ),
                                h1: theme.textTheme.headlineMedium?.copyWith(
                                  color: colorScheme.onBackground,
                                ),
                                h2: theme.textTheme.headlineSmall?.copyWith(
                                  color: colorScheme.onBackground,
                                ),
                                h3: theme.textTheme.titleLarge?.copyWith(
                                  color: colorScheme.onBackground,
                                ),
                                a: theme.textTheme.bodyMedium?.copyWith(
                                  color: colorScheme.primary,
                                  decoration: TextDecoration.underline,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ],
            );
          },
        ),
      ),
    );
  }
}
