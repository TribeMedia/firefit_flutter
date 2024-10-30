import 'package:firefit/bootstrap.dart';
import 'package:firefit/env/env.dart';
import 'package:firefit/features/application/application.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  LicenseRegistry.addLicense(() async* {
    final license = await rootBundle.loadString('fonts/Inter/OFL.txt');
    yield LicenseEntryWithLineBreaks(['google_fonts'], license);
  });

  await Supabase.initialize(
    url: Env.supabaseUrl,
    anonKey: Env.supabaseAnonKey,
    realtimeClientOptions: const RealtimeClientOptions(
      eventsPerSecond: 2,
    ),
    headers: {'Content-Type': 'application/json'},
  );

  runApp(UncontrolledProviderScope(
    container: await bootstrap(),
    child: const Application(),
  ));
}
