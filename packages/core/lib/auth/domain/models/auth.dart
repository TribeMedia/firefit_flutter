import 'package:atproto/core.dart';
import 'package:core/users/domain/models/user.dart';

// A more complete replacement for ProfileViewDetailed with all required properties
class ProfileView {
  final String? displayName;
  final String? description;
  final String? avatar; // Added for UI components that use profile.avatar
  final String? handle; // Added for UI components that use profile.handle

  ProfileView({
    this.displayName,
    this.description,
    this.avatar,
    this.handle,
  });

  // Factory to convert from the original bluesky ProfileViewDetailed
  factory ProfileView.fromBluesky(dynamic original) {
    try {
      // Try to access the properties regardless of type
      return ProfileView(
        displayName: original.displayName,
        description: original.description,
        avatar: original.avatar,
        handle: original.handle,
      );
    } catch (e) {
      // If any error occurs, return a default ProfileView
      return ProfileView();
    }
  }
}

class AuthUser {
  final Session session;
  final ProfileView profile;
  final String service;
  final User user;

  AuthUser({
    required this.session,
    required this.profile,
    required this.service,
    required this.user,
  });
}
