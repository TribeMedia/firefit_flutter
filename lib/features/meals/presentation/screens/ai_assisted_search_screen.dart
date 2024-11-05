import 'package:flutter/material.dart';

class AIAssistedSearchScreen extends StatelessWidget {
  const AIAssistedSearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      backgroundColor: theme.scaffoldBackgroundColor,
      appBar: AppBar(
        title: Text('AI Search', style: theme.textTheme.titleLarge),
        backgroundColor: theme.appBarTheme.backgroundColor,
      ),
      body: Container(
        color: theme.scaffoldBackgroundColor,
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(16),
              child: TextField(
                style: theme.textTheme.bodyMedium,
                decoration: InputDecoration(
                  hintText: 'Search for meals...',
                  hintStyle: TextStyle(
                      color: theme.colorScheme.onSurface
                          .withAlpha((0.6 * 255).round())),
                  filled: true,
                  fillColor: theme.inputDecorationTheme.fillColor,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),
            Expanded(
              child: ListView(
                padding: EdgeInsets.all(16),
                children: [
                  Card(
                    color: theme.cardColor,
                    child: Padding(
                      padding: EdgeInsets.all(16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Search Results',
                            style: theme.textTheme.titleMedium,
                          ),
                          // Add your search results here using theme-aware colors
                        ],
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
