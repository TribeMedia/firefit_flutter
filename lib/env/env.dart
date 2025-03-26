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

  @EnviedField(varName: 'STRIPE_PUBLISHABLE_KEY')
  static const String stripePublishableKey = _Env.stripePublishableKey;
  @EnviedField(varName: 'STRIPE_SECRET_KEY')
  static const String stripeSecretKey = _Env.stripeSecretKey;

  @EnviedField(varName: 'API_NINJAS_KEY')
  static const String apiNinjasKey = _Env.apiNinjasKey;
  @EnviedField(varName: 'API_NINJAS_URL')
  static const String apiNinjasUrl = _Env.apiNinjasUrl;
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

  @override
  // TODO: implement stripePublishableKey
  String get stripePublishableKey => _Env.stripePublishableKey;

  @override
  // TODO: implement stripeSecretKey
  String get stripeSecretKey => _Env.stripeSecretKey;

  @override
  String get apiNinjasKey => _Env.apiNinjasKey;

  @override
  String get apiNinjasUrl => _Env.apiNinjasUrl;
}
