import 'package:flutter/material.dart';

class AIChatScreen extends StatelessWidget {
  const AIChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      backgroundColor: theme.scaffoldBackgroundColor,
      appBar: AppBar(
        title: Text('AI Chat', style: theme.textTheme.titleLarge),
        backgroundColor: theme.appBarTheme.backgroundColor,
      ),
      body: Container(
        color: theme.scaffoldBackgroundColor,
        child: Column(
          children: [
            Expanded(
              child: ListView(
                padding: EdgeInsets.all(16),
                children: [
                  // Message bubbles
                  Container(
                    margin: EdgeInsets.only(bottom: 8),
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: theme.cardColor,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Text(
                      'AI Message',
                      style: theme.textTheme.bodyMedium,
                    ),
                  ),
                  // User message bubble aligned to the right
                  Container(
                    margin: EdgeInsets.only(bottom: 8, left: 48),
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: theme.colorScheme.primary,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Text(
                      'User Message',
                      style: theme.textTheme.bodyMedium?.copyWith(
                        color: theme.colorScheme.onPrimary,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // Message input
            Container(
              padding: EdgeInsets.all(16),
              color: theme.cardColor,
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      style: theme.textTheme.bodyMedium,
                      decoration: InputDecoration(
                        hintText: 'Type a message...',
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
                  SizedBox(width: 8),
                  IconButton(
                    icon: Icon(Icons.send, color: theme.colorScheme.primary),
                    onPressed: () {
                      // Handle send message
                    },
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
