import 'package:firefit/config/providers.dart';
import 'package:firefit/features/application/application.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Create the ProviderContainer
  final container = ProviderContainer();

  // Initialize Talker early
  final talker = container.read(loggingProvider);
  talker.debug('Application initialization started');

  LicenseRegistry.addLicense(() async* {
    final license = await rootBundle.loadString('fonts/Inter/OFL.txt');
    yield LicenseEntryWithLineBreaks(['google_fonts'], license);
  });

  try {
    // Initialize other services
    /*await Supabase.initialize(
      url: Env.supabaseUrl,
      anonKey: Env.supabaseAnonKey,
    );*/
    //talker.debug('Supabase initialized successfully');

    runApp(
      UncontrolledProviderScope(
        container: container,
        child: const Application(),
      ),
    );
  } catch (e, stack) {
    talker.handle(e, stack, 'Failed to initialize application');
    rethrow;
  }
}
