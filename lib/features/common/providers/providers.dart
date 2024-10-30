import 'package:firefit/env/env.dart';
import 'package:firefit/features/common/services/chat_service.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final chatServiceProvider = Provider((ref) => ChatService(
      apiKey: Env.openAiKey,
      baseUrl: Env.openAiUrl,
      deploymentName: Env.openAiDeploymentName,
      apiVersion: Env.openAiApiVersion,
    ));
