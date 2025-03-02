

import 'package:core/auth/domain/services/authentication_service_interface.dart';
import 'package:core/auth/infrastructure/services/authentication_service.dart';
import 'package:core/auth/infrastructure/services/storage_service.dart';
import 'package:firefit/env/env.dart';
import 'package:firefit/features/auth/providers/user_notifier.dart';
import 'package:firefit/features/common/providers/providers.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final authenticationServiceProvider = Provider<AuthenticationServiceInterface>((ref) {
  return AuthenticationService(
      pdsServer: Environment().pdsServiceUrl, 
      storageService: StorageService(ref.read(flutterSecureStorageProvider)),
      userRepository: ref.read(userRepositoryProvider),
    );
});