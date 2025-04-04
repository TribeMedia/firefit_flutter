import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class FullScreenNutrition extends ConsumerWidget {
  final String title;
  final String nutrition;

  const FullScreenNutrition({
    super.key,
    required this.title,
    required this.nutrition,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Scaffold(
      backgroundColor: colorScheme.surface,
      appBar: AppBar(
        backgroundColor: colorScheme.surface,
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: colorScheme.onSurface,
          ),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text(
          'Nutrition Information',
          style: theme.textTheme.titleMedium?.copyWith(
            fontWeight: FontWeight.bold,
            color: colorScheme.onSurface,
          ),
        ),
        actions: [
          // Share button
          IconButton(
            icon: Icon(
              Icons.share,
              color: colorScheme.primary,
            ),
            onPressed: () {
              // Implement sharing functionality here
              Fluttertoast.showToast(
                msg: 'Sharing nutrition information...',
                toastLength: Toast.LENGTH_SHORT,
                gravity: ToastGravity.BOTTOM,
                timeInSecForIosWeb: 1,
                backgroundColor: colorScheme.primary,
                textColor: colorScheme.onPrimary,
                fontSize: 16.0,
              );
            },
          ),
          // Print button
          IconButton(
            icon: Icon(
              Icons.print,
              color: colorScheme.primary,
            ),
            onPressed: () {
              // Implement print functionality here
              Fluttertoast.showToast(
                msg: 'Preparing to print...',
                toastLength: Toast.LENGTH_SHORT,
                gravity: ToastGravity.BOTTOM,
                timeInSecForIosWeb: 1,
                backgroundColor: colorScheme.primary,
                textColor: colorScheme.onPrimary,
                fontSize: 16.0,
              );
            },
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Product title
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 16, 20, 8),
              child: Text(
                title,
                style: theme.textTheme.headlineSmall?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: colorScheme.onSurface,
                ),
              ),
            ),

            // Divider
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Divider(color: colorScheme.outline.withOpacity(0.3)),
            ),

            // Nutrition information in a scrollable container
            Expanded(
              child: Markdown(
                data: nutrition,
                padding: const EdgeInsets.all(20),
                styleSheet: MarkdownStyleSheet.fromTheme(theme).copyWith(
                  p: theme.textTheme.bodyLarge?.copyWith(
                    color: colorScheme.onSurface,
                    height: 1.6,
                  ),
                  h1: theme.textTheme.headlineMedium?.copyWith(
                    color: colorScheme.primary,
                    fontWeight: FontWeight.bold,
                    height: 1.4,
                  ),
                  h2: theme.textTheme.titleLarge?.copyWith(
                    color: colorScheme.primary,
                    fontWeight: FontWeight.bold,
                    height: 1.4,
                  ),
                  h3: theme.textTheme.titleMedium?.copyWith(
                    color: colorScheme.primary,
                    fontWeight: FontWeight.bold,
                    height: 1.4,
                  ),
                  listBullet: theme.textTheme.bodyLarge?.copyWith(
                    color: colorScheme.primary,
                  ),
                  listBulletPadding: const EdgeInsets.only(right: 16),
                  listIndent: 24,
                  blockSpacing: 20,
                  a: theme.textTheme.bodyLarge?.copyWith(
                    color: colorScheme.primary,
                    decoration: TextDecoration.underline,
                  ),
                  blockquote: theme.textTheme.bodyLarge?.copyWith(
                    color: colorScheme.onSurface.withOpacity(0.8),
                    fontStyle: FontStyle.italic,
                  ),
                  blockquoteDecoration: BoxDecoration(
                    color: colorScheme.surfaceContainerHighest.withOpacity(0.3),
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(
                      color: colorScheme.primary.withOpacity(0.2),
                    ),
                  ),
                  blockquotePadding: const EdgeInsets.all(16),
                  tableHead: theme.textTheme.bodyLarge?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: colorScheme.onSurface,
                  ),
                  tableBody: theme.textTheme.bodyLarge?.copyWith(
                    color: colorScheme.onSurface,
                  ),
                  tableBorder: TableBorder.all(
                    color: colorScheme.outline.withOpacity(0.3),
                    width: 1,
                    borderRadius: BorderRadius.circular(4),
                  ),
                  tableCellsPadding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  code: theme.textTheme.bodyMedium?.copyWith(
                    fontFamily: 'monospace',
                    backgroundColor: colorScheme.surfaceContainerHighest
                        .withOpacity(0.5),
                    color: colorScheme.primary,
                  ),
                  codeblockDecoration: BoxDecoration(
                    color: colorScheme.surfaceContainerHighest
                        .withOpacity(0.2),
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(
                      color: colorScheme.outline.withOpacity(0.2),
                    ),
                  ),
                  codeblockPadding: const EdgeInsets.all(16),
                ),
                physics: const BouncingScrollPhysics(),
              ),
            ),

            // Bottom action bar
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: colorScheme.surface,
                boxShadow: [
                  BoxShadow(
                    offset: const Offset(0, -2),
                    blurRadius: 6,
                    color: Colors.black.withOpacity(0.06),
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Save button
                  Expanded(
                    child: OutlinedButton.icon(
                      onPressed: () {
                        // Save to favorites logic
                        Fluttertoast.showToast(
                          msg: 'Saved to favorites!',
                          toastLength: Toast.LENGTH_SHORT,
                          gravity: ToastGravity.BOTTOM,
                          timeInSecForIosWeb: 1,
                          backgroundColor: colorScheme.primary,
                          textColor: colorScheme.onPrimary,
                          fontSize: 16.0,
                        );
                      },
                      icon: const Icon(Icons.bookmark_border),
                      label: const Text('Save'),
                      style: OutlinedButton.styleFrom(
                        side: BorderSide(color: colorScheme.primary),
                        foregroundColor: colorScheme.primary,
                        padding: const EdgeInsets.symmetric(vertical: 12),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ),
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
