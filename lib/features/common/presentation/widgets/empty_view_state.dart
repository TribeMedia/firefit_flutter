import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

class EmptyViewState extends StatelessWidget {
  final String title;
  final String message;
  final VoidCallback? onActionPressed;
  final String? actionLabel;
  final String lottieAssetFile;

  const EmptyViewState({
    super.key,
    this.title = 'No Items Available',
    this.message = 'There are currently no items in your cart.',
    this.onActionPressed,
    this.actionLabel,
    required this.lottieAssetFile,
  });

  @override
  Widget build(BuildContext context) {
    final theme = ShadTheme.of(context);

    return Center(
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Lottie animation for empty state
            Lottie.asset(
              'assets/animations/$lottieAssetFile', // You'll need to add this animation
              width: 200,
              height: 200,
              fit: BoxFit.contain,
              repeat: true,
            ),
            const SizedBox(height: 24),
            Text(
              title,
              style: theme.textTheme.h1,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 12),
            Text(
              message,
              style: theme.textTheme.p.copyWith(
                color: theme.colorScheme.mutedForeground,
              ),
              textAlign: TextAlign.center,
            ),
            if (onActionPressed != null && actionLabel != null) ...[
              const SizedBox(height: 24),
              ShadButton(
                onPressed: onActionPressed,
                child: Text(actionLabel!),
              ),
            ],
          ],
        ),
      ),
    );
  }
}