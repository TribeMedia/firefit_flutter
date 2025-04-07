import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

/// Provider that manages the splash screen state and navigation
final splashProvider = Provider<SplashController>((ref) {
  return SplashController();
});

class SplashController {
  SplashController();
  
  /// Initializes the app and navigates to the appropriate screen
  /// after initialization is complete
  Future<void> initializeAndNavigate(BuildContext context) async {
    // Simulate initialization delay (minimum 2 seconds for splash visibility)
    await Future.delayed(const Duration(seconds: 2));
    
    // Check authentication state and navigate accordingly
    // For now, we'll just navigate to the home or login screen
    // based on the router's redirect logic
    if (context.mounted) {
      context.go('/');
    }
  }
}
