import 'dart:async';

import 'package:atproto/atproto.dart';
import 'package:atproto/core.dart';
import 'package:bluesky/bluesky.dart';
import 'package:core/auth/infrastructure/services/storage_service.dart';
import 'package:core/core.dart';
import 'package:fpdart/fpdart.dart';

class AuthenticationService implements AuthenticationServiceInterface {
  AuthenticationService({
    required this.pdsServer,
    required this.storageService,
    required this.userRepository,
  }) {
    _authStateController = StreamController<AuthUser?>.broadcast();
  }

  final String pdsServer;
  final StorageService storageService;
  final UserRepositoryInterface userRepository;

  late final StreamController<AuthUser?> _authStateController;

  ATProto? atProto;
  Session? session;
  Bluesky? bsky;

  @override
  Stream<AuthUser?> get authStateChanges => _authStateController.stream;

  Bluesky? getBsky() {
    if (bsky != null) return bsky!;
    if (session == null) return null;
    return Bluesky.fromSession(session!);
  }

  Future<Session?> getCurrentSession() async {
    if (session != null) return session;

    try {
      final storedSession = await storageService.getSession();
      if (storedSession == null) return null;

      session = Session.fromJson(storedSession);

      atProto = ATProto.fromSession(session!);

      if (session == null) {
        await storageService.deleteSession();
        return null;
      }

      final b = getBsky();

      if (b == null) {
        await storageService.deleteSession();
        return null;
      }

      final profile = await b.actor.getProfile(actor: session!.handle);

      if (profile.status != HttpStatus.ok) {
        await storageService.deleteSession();
        return null;
      }

      final result = await userRepository.queryUsers(
        filter: Input$UsersFilter(
          did: Input$StringFilter(
            eq: profile.data.did,
          ),
        ),
      );

      return result.fold((l) => null, (r) {
        _authStateController.add(AuthUser(
          session: session!,
          profile: ProfileView.fromBluesky(profile.data),
          service: pdsServer,
          user: r.first,
        ));
        return session;
      });
    } catch (e) {
      await storageService.deleteSession();
      return null;
    }
  }

  @override
  Future<AuthUser?> getCurrentUser() async {
    try {
      final session = await getCurrentSession();
      if (session == null) {
        _authStateController.add(null);
        return null;
      }

      atProto = ATProto.fromSession(session);
      bsky = Bluesky.fromSession(session);

      final profile = await bsky!.actor.getProfile(
        actor: session.handle,
      );

      final result = await userRepository.queryUsers(
        filter: Input$UsersFilter(
          did: Input$StringFilter(
            eq: profile.data.did,
          ),
        ),
      );

      return result.fold((l) => null, (r) {
        _authStateController.add(AuthUser(
          session: session,
          profile: ProfileView.fromBluesky(profile.data),
          service: pdsServer,
          user: r.first,
        ));
        return AuthUser(
          session: session,
          profile: ProfileView.fromBluesky(profile.data),
          service: pdsServer,
          user: r.first,
        );
      });
    } catch (e) {
      _authStateController.add(null);
      return null;
    }
  }

  @override
  Future<Either<Failure, AuthUser>> login({
    required String identifier,
    required String password,
  }) async {
    try {
      final sessionOutput = await createSession(
        identifier: identifier,
        password: password,
        $service: 'bsky.social',
      );

      if (sessionOutput.status != HttpStatus.ok) {
        await storageService.deleteSession();
        _authStateController.add(null);
        return Left(Failure.unauthorized());
      }

      session = Session.fromJson(sessionOutput.data.toJson());
      await storageService.saveSession(session!.toJson());

      atProto = ATProto.fromSession(session!);
      bsky = Bluesky.fromSession(session!);

      final profile = await bsky!.actor.getProfile(
        actor: session!.handle,
      );

      if (profile.status != HttpStatus.ok) {
        await storageService.deleteSession();
        _authStateController.add(null);
        return Left(
            Failure.unprocessableEntity(message: profile.data.toString()));
      }

      final result = await userRepository.queryUsers(
        filter: Input$UsersFilter(
          did: Input$StringFilter(
            eq: profile.data.did,
          ),
        ),
      );

      return result.fold(
          (l) => Left(Failure.unprocessableEntity(message: l.toString())), (r) {
        _authStateController.add(AuthUser(
          session: session!,
          profile: ProfileView.fromBluesky(profile.data),
          service: pdsServer,
          user: r.first,
        ));
        return Right(AuthUser(
          session: session!,
          profile: ProfileView.fromBluesky(profile.data),
          service: pdsServer,
          user: r.first,
        ));
      });
    } catch (e) {
      await storageService.deleteSession();
      _authStateController.add(null);
      return Left(Failure.unprocessableEntity(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, bool>> logout() async {
    try {
      session = null;
      bsky = null;
      atProto = null;
      await storageService.deleteSession();
      _authStateController.add(null);
      return const Right(true);
    } catch (e) {
      return Left(Failure.unprocessableEntity(message: e.toString()));
    }
  }

  void dispose() {
    _authStateController.close();
  }

  @override
  Future<Either<Failure, AuthUser>> register({
    required String email,
    required String password,
    required String firstName,
    required String lastName,
    required String handle,
    required String stationId,
  }) async {
    try {
      atProto ??= ATProto.anonymous();

      final accountOutput = await atProto!.server.createAccount(
        email: email,
        password: password,
        handle: handle,
      );

      if (accountOutput.status != HttpStatus.ok) {
        return Left(Failure.unprocessableEntity(
            message: accountOutput.data.toString()));
      }

      session = atProto!.session;

      final did = session!.did;

      final profileRecord = {
        'displayName': '$firstName $lastName',
      };

      final result = await userRepository.createUser(
          input: Input$UsersInsertInput(
        did: session!.did,
        email: email,
        handle: handle,
        pdsUrl: 'https://bsky.social',
        primaryStationId: stationId,
      ));

      return result.fold((l) async {
        return Left(Failure.unprocessableEntity(message: l.toString()));
      }, (r) async {
        // Update the profile using putRecord
        final response = await atProto!.repo.putRecord(
          repo: did,
          collection: NSID('app.bsky.actor.profile'),
          rkey: 'self',
          record: profileRecord,
        );

        if (response.status != HttpStatus.ok) {
          return Left(
              Failure.unprocessableEntity(message: response.data.toString()));
        }

        bsky = Bluesky.fromSession(session!);

        final profile = await bsky!.actor.getProfile(
          actor: session!.handle,
        );

        final user = AuthUser(
          session: session!,
          profile: ProfileView.fromBluesky(profile.data),
          service: pdsServer,
          user: r,
        );

        _authStateController.add(user);
        return Right(user);
      });
    } catch (e) {
      return Left(Failure.unprocessableEntity(message: e.toString()));
    }
  }
}
