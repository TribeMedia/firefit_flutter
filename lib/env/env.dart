// lib/env/env.dart
import 'package:core/config/env.dart';
import 'package:envied/envied.dart';

part 'env.g.dart';

@Envied(path: '.env')
abstract class Env {
  @EnviedField(varName: 'SUPABASE_URL')
  static const String supabaseUrl = _Env.supabaseUrl;
  @EnviedField(varName: 'SUPABASE_ANON_KEY')
  static const String supabaseAnonKey = _Env.supabaseAnonKey;

  @EnviedField(varName: 'PDS_SERVICE_URL')
  static const String pdsServiceUrl = _Env.pdsServiceUrl;
}

class Environment with EnvInterface {
  @override
  String get supabaseBaseUrl => _Env.supabaseUrl;

  @override
  String get supabaseKey => _Env.supabaseAnonKey;

  @override
  String get pdsServiceUrl => _Env.pdsServiceUrl;

  static final Environment _instance = Environment._internal();

  factory Environment() => _instance;

  Environment._internal();
}
