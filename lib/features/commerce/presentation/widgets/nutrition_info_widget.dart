import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

/// A widget that displays nutrition information in an elegant, expandable format.
///
/// This widget takes a markdown string containing nutrition information and renders
/// it in a styled, collapsible container with custom formatting for nutrition data.
class NutritionInfoWidget extends StatefulWidget {
  /// The markdown string containing nutrition information.
  final String nutrition;

  const NutritionInfoWidget({
    required this.nutrition,
    super.key,
  });

  @override
  State<NutritionInfoWidget> createState() => _NutritionInfoWidgetState();
}

class _NutritionInfoWidgetState extends State<NutritionInfoWidget>
    with SingleTickerProviderStateMixin {
  bool _expanded = false;
  late AnimationController _animationController;
  late Animation<double> _fadeAnimation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    );
    _fadeAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: Curves.easeInOut,
      ),
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  void _toggleExpanded() {
    setState(() {
      _expanded = !_expanded;
      if (_expanded) {
        _animationController.forward();
      } else {
        _animationController.reverse();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        color: colorScheme.surface,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withAlpha((0.05 * 255).round()),
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
        ],
        border: Border.all(
          color: Color.fromRGBO(
            colorScheme.outline.r.round(),
            colorScheme.outline.g.round(),
            colorScheme.outline.b.round(),
            0.2,
          ),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Header with expand/collapse functionality
          InkWell(
            onTap: _toggleExpanded,
            borderRadius: const BorderRadius.vertical(top: Radius.circular(12)),
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                children: [
                  Icon(
                    Icons.restaurant_menu,
                    color: colorScheme.primary,
                    size: 24,
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Text(
                      'Nutrition Information',
                      style: theme.textTheme.titleMedium?.copyWith(
                        fontWeight: FontWeight.bold,
                        color: colorScheme.onSurface,
                      ),
                    ),
                  ),
                  AnimatedRotation(
                    turns: _expanded ? 0.5 : 0,
                    duration: const Duration(milliseconds: 300),
                    child: Icon(
                      Icons.keyboard_arrow_down,
                      color: colorScheme.onSurfaceVariant,
                    ),
                  ),
                ],
              ),
            ),
          ),

          // Divider
          AnimatedSize(
            duration: const Duration(milliseconds: 300),
            child: _expanded
                ? Divider(
                    height: 1,
                    thickness: 1,
                    color: Color.fromRGBO(
                      colorScheme.outline.r.round(),
                      colorScheme.outline.g.round(),
                      colorScheme.outline.b.round(),
                      0.1,
                    ),
                  )
                : const SizedBox.shrink(),
          ),

          // Nutrition content
          AnimatedSize(
            duration: const Duration(milliseconds: 300),
            child: _expanded
                ? FadeTransition(
                    opacity: _fadeAnimation,
                    child: ClipRRect(
                      borderRadius: const BorderRadius.vertical(
                        bottom: Radius.circular(12),
                      ),
                      child: Container(
                        width: double.infinity,
                        padding: const EdgeInsets.only(
                          left: 16,
                          right: 16,
                          bottom: 16,
                          top: 8,
                        ),
                        child: _buildNutritionContent(context),
                      ),
                    ),
                  )
                : const SizedBox.shrink(),
          ),
        ],
      ),
    );
  }

  Widget _buildNutritionContent(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Nutrition facts header
        Container(
          padding: const EdgeInsets.symmetric(vertical: 8),
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(
                color: colorScheme.primary.withAlpha((0.2 * 255).round()),
                width: 2,
              ),
            ),
          ),
          child: Row(
            children: [
              Icon(
                Icons.info_outline,
                color: colorScheme.primary,
                size: 20,
              ),
              const SizedBox(width: 8),
              Text(
                'Nutrition Facts',
                style: theme.textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: colorScheme.primary,
                ),
              ),
            ],
          ),
        ),

        // Markdown content with custom styling
        MarkdownBody(
          data: widget.nutrition,
          styleSheet: MarkdownStyleSheet.fromTheme(theme).copyWith(
            // Basic text styling
            p: theme.textTheme.bodyMedium?.copyWith(
              color: colorScheme.onSurface,
              height: 1.5,
            ),

            // Headings for nutrition sections
            h1: theme.textTheme.titleLarge?.copyWith(
              color: colorScheme.primary,
              fontWeight: FontWeight.bold,
              height: 2.0,
            ),
            h2: theme.textTheme.titleMedium?.copyWith(
              color: colorScheme.primary,
              fontWeight: FontWeight.bold,
              height: 1.8,
            ),
            h3: theme.textTheme.titleSmall?.copyWith(
              color: colorScheme.primary,
              fontWeight: FontWeight.bold,
              height: 1.6,
            ),

            // List styling for ingredients and nutrients
            listBullet: theme.textTheme.bodyMedium?.copyWith(
              color: colorScheme.primary,
              fontWeight: FontWeight.bold,
            ),
            listIndent: 16.0,

            // Table styling for nutrition facts table
            tableHead: theme.textTheme.labelLarge?.copyWith(
              color: colorScheme.primary,
              fontWeight: FontWeight.bold,
            ),
            tableBody: theme.textTheme.bodyMedium?.copyWith(
              color: colorScheme.onSurface,
            ),
            tableBorder: TableBorder.all(
              color: colorScheme.outline.withAlpha((0.3 * 255).round()),
              width: 1,
            ),
            tableCellsPadding: const EdgeInsets.symmetric(
              horizontal: 16.0,
              vertical: 8.0,
            ),
            tableColumnWidth: const FlexColumnWidth(),

            // Other elements
            a: theme.textTheme.bodyMedium?.copyWith(
              color: colorScheme.primary,
              decoration: TextDecoration.underline,
            ),
            blockquote: theme.textTheme.bodyMedium?.copyWith(
              color: colorScheme.onSurface.withAlpha((0.7 * 255).round()),
              fontStyle: FontStyle.italic,
              backgroundColor: colorScheme.primary.withAlpha((0.05 * 255).round()),
              height: 1.5,
            ),
            blockquotePadding: const EdgeInsets.all(8.0),
            blockquoteDecoration: BoxDecoration(
              border: Border(
                left: BorderSide(
                  color: colorScheme.primary.withAlpha((0.5 * 255).round()),
                  width: 4,
                ),
              ),
              borderRadius: BorderRadius.circular(4),
            ),
            codeblockPadding: const EdgeInsets.all(8.0),
            code: theme.textTheme.bodySmall?.copyWith(
              fontFamily: 'monospace',
              backgroundColor: colorScheme.surfaceContainerHighest,
              color: colorScheme.onSurfaceVariant,
            ),
          ),
          builders: {
            'table': NutritionTableBuilder(),
          },
        ),

        // Disclaimer text
        Padding(
          padding: const EdgeInsets.only(top: 16.0),
          child: Text(
            'Values are based on standard serving sizes and may vary.',
            style: theme.textTheme.bodySmall?.copyWith(
              color: colorScheme.onSurface.withAlpha((0.6 * 255).round()),
              fontStyle: FontStyle.italic,
            ),
          ),
        ),
      ],
    );
  }
}

/// Custom table builder for nutrition facts tables
class NutritionTableBuilder extends MarkdownElementBuilder {
  Widget? visitTable(Object table) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 12),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.grey.withAlpha((0.3 * 255).round()),
          width: 1,
        ),
        borderRadius: BorderRadius.circular(8),
      ),
      clipBehavior: Clip.antiAlias,
      child: table as Widget,
    );
  }
}
