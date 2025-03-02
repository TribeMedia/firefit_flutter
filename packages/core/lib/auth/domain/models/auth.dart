import 'package:atproto/core.dart';
import 'package:bluesky/src/services/gen_types/app/bsky/actor/defs/profile_view_detailed.dart';
import 'package:core/users/domain/models/user.dart';

class AuthUser {
  final Session session;
  final ProfileViewDetailed profile;
  final String service;
  final User user;

  AuthUser({
    required this.session,
    required this.profile,
    required this.service,
    required this.user,
  });
}
