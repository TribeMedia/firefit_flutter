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

  @EnviedField(varName: 'LLAMA_DEFAULT_REPO')
  static const String llamaDefaultRepo = _Env.llamaDefaultRepo;

  @EnviedField(varName: 'LLAMA_DEFAULT_FILENAME')
  static const String llamaDefaultFilename = _Env.llamaDefaultFilename;

  @EnviedField(varName: 'LLAMA_DEFAULT_MODEL')
  static const String llamaDefaultModel = _Env.llamaDefaultModel;

  @EnviedField(varName: 'ELECTRIC_SERVICE_URL')
  static const String electricServiceUrl = _Env.electricServiceUrl;

  @EnviedField(varName: 'STATION_ID')
  static const String stationId = _Env.stationId;

  @EnviedField(varName: 'APPLICATION_ID')
  static const String applicationId = _Env.applicationId;
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

  @override
  String get llamaDefaultRepo => _Env.llamaDefaultRepo;

  @override
  String get llamaDefaultFilename => _Env.llamaDefaultFilename;

  @override
  String get llamaDefaultModel => _Env.llamaDefaultModel;

  @override
  String get electricServiceUrl => _Env.electricServiceUrl;

  @override
  String get stationId => _Env.stationId;

  @override
  String get applicationId => _Env.applicationId;

  static final Environment _instance = Environment._internal();

  factory Environment() => _instance;

  Environment._internal();
}
