import 'package:flutter/material.dart';

class FoodDiaryScreen extends StatelessWidget {
  const FoodDiaryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      backgroundColor: theme.scaffoldBackgroundColor,
      appBar: AppBar(
        title: Text('Food Diary', style: theme.textTheme.titleLarge),
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
                      'Today\'s Entries',
                      style: theme.textTheme.titleMedium,
                    ),
                    // Add your food diary entries here using theme-aware colors
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
