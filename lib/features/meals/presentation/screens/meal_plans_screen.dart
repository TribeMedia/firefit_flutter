import 'package:flutter/material.dart';

class MealPlansScreen extends StatelessWidget {
  const MealPlansScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      backgroundColor: theme.scaffoldBackgroundColor,
      appBar: AppBar(
        title: Text('Meal Plans', style: theme.textTheme.titleLarge),
        backgroundColor: theme.appBarTheme.backgroundColor,
      ),
      body: Container(
        color: theme.scaffoldBackgroundColor,
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
                      'Current Meal Plan',
                      style: theme.textTheme.titleMedium,
                    ),
                    // Add your meal plan content here using theme-aware colors
                  ],
                ),
              ),
            ),
            // Add more cards and content as needed
          ],
        ),
      ),
    );
  }
}
