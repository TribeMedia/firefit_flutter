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

  @EnviedField(varName: 'OPENAI_BASE_URL')
  static const String openAiUrl = _Env.openAiUrl;

  @EnviedField(varName: 'OPENAI_DEPLOYMENT_NAME')
  static const String openAiDeploymentName = _Env.openAiDeploymentName;

  @EnviedField(varName: 'OPENAI_API_VERSION')
  static const String openAiApiVersion = _Env.openAiApiVersion;

  @EnviedField(varName: 'OPENAI_API_KEY')
  static const String openAiKey = _Env.openAiKey;

  @EnviedField(varName: 'IPFS_URL')
  static const String ipfsUrl = _Env.ipfsUrl;
}

class Environment with EnvInterface {
  @override
  String get openAiApiUrl => _Env.openAiUrl;

  @override
  String get openAiApiKey => _Env.openAiKey;

  @override
  String get openAiDeploymentName => _Env.openAiDeploymentName;

  @override
  String get openAiApiVersion => _Env.openAiApiVersion;

  @override
  String get supabaseBaseUrl => _Env.supabaseUrl;

  @override
  String get supabaseKey => _Env.supabaseAnonKey;

  @override
  String get ipfsUrl => _Env.ipfsUrl;

  static final Environment _instance = Environment._internal();

  factory Environment() => _instance;

  Environment._internal();
}
