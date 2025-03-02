import 'package:core/auth/domain/models/auth.dart';
import 'package:core/common/failures/failure.dart';
import 'package:fpdart/fpdart.dart';

abstract class AuthenticationServiceInterface {
  /// Stream of authentication state changes. Emits the current user when it changes.
  Stream<AuthUser?> get authStateChanges;

  Future<AuthUser?> getCurrentUser();
  Future<Either<Failure, AuthUser>> login({
    required String identifier,
    required String password,
  });
  Future<Either<Failure, AuthUser>> register({
    required String email,
    required String password,
    required String firstName,
    required String lastName,
    required String handle,
    required String stationId,
  });
  Future<Either<Failure, bool>> logout();
}
