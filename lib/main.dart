import 'package:firefit/config/providers.dart' as providers;
import 'package:firefit/config/providers.dart';
import 'package:firefit/env/env.dart';
import 'package:firefit/features/application/application.dart';
import 'package:firefit/utils/logging/state_logger.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

// Create the ProviderContainer
final globalContainer = ProviderContainer(observers: [StateLogger()]);

// Add to main() for Cline integration
// Commented out due to missing ClineMonitor package
/*
void enableClineDebugging() {
  ClineMonitor.attach(
    captureFrequency: CaptureFrequency.onInteraction,
    errorHandling: ErrorStrategy.retryWithVariations,
    scenarioTracing: true
  );
}
*/

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await initHiveForFlutter();

  // Initialize Talker early
  final talker = globalContainer.read(loggingProvider);
  talker.debug('Application initialization started');

  LicenseRegistry.addLicense(() async* {
    final license = await rootBundle.loadString('fonts/Inter/OFL.txt');
    yield LicenseEntryWithLineBreaks(['google_fonts'], license);
  });

  try {
    // Initialize other services
    await Supabase.initialize(
      url: Env.supabaseUrl,
      anonKey: Env.supabaseAnonKey,
    );
    //talker.debug('Supabase initialized successfully');

    await providers.initializeProviders(globalContainer);

    Stripe.publishableKey = Env.stripePublishableKey;

    runApp(
      UncontrolledProviderScope(
        container: globalContainer,
        child: const Application(),
      ),
    );
  } catch (e, stack) {
    talker.handle(e, stack, 'Failed to initialize application');
    rethrow;
  }
}
