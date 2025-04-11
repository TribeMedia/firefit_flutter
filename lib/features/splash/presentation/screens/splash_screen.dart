import 'package:firefit/features/splash/presentation/providers/splash_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SplashScreen extends HookConsumerWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final splashController = ref.read(splashProvider);

    // Initialize and navigate when the screen is first built
    useEffect(() {
      splashController.initializeAndNavigate(context);
      return null;
    }, const []);

    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // App logo
            Image.asset(
              'assets/images/fots-logo-color.png',
              width: 400,
              height: 400,
            ),
            const SizedBox(height: 48),

            // Loading indicator
            const CircularProgressIndicator(),
          ],
        ),
      ),
    );
  }
}
