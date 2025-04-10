import 'package:firefit/features/auth/providers/user_notifier.dart';
import 'package:flutter/material.dart';
import 'package:forui/forui.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:url_launcher/url_launcher.dart';

// Providers for various settings
final notificationsEnabledProvider = StateProvider<bool>((ref) => true);
final dailyReminderTimeProvider =
    StateProvider<TimeOfDay>((ref) => TimeOfDay(hour: 9, minute: 0));
final dietaryRestrictionsProvider = StateProvider<List<String>>((ref) => []);
final darkModeProvider = StateProvider<bool>((ref) => false);
final measurementUnitProvider =
    StateProvider<MeasurementUnit>((ref) => MeasurementUnit.metric);

enum MeasurementUnit { metric, imperial }

class SettingsScreen extends HookConsumerWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final notificationsEnabled = ref.watch(notificationsEnabledProvider);
    //final darkMode = ref.watch(darkModeProvider);
    final theme = Theme.of(context);

    return FScaffold(
      header: FHeader(
        title: Text(
          'Settings',
          style: theme.textTheme.headlineMedium?.copyWith(
            color: theme.colorScheme.onSurface,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      style: FScaffoldStyle(
          backgroundColor: theme.colorScheme.surface,
          contentPadding: const EdgeInsets.all(0),
          headerDecoration: BoxDecoration(
            color: theme.colorScheme.surface,
            border: Border(
              bottom: BorderSide(
                color: theme.colorScheme.surfaceContainer,
                width: 1,
              ),
            ),
          ),
          footerDecoration: BoxDecoration(borderRadius: BorderRadius.zero)),
      contentPad: false,
      content: ListView(
        children: [
          _buildSectionHeader(context, 'Notifications'),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 16),
            decoration: BoxDecoration(
              color: theme.colorScheme.surfaceContainer,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Column(
              children: [
                SwitchListTile(
                  title: Text(
                    'Enable Notifications',
                    style: theme.textTheme.bodyLarge?.copyWith(
                      color: theme.colorScheme.onSurface,
                    ),
                  ),
                  value: notificationsEnabled,
                  onChanged: (value) => ref
                      .read(notificationsEnabledProvider.notifier)
                      .state = value,
                  activeColor: theme.colorScheme.primary,
                ),
              ],
            ),
          ),
          /*_buildSectionHeader(context, 'App Settings'),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 16),
            decoration: BoxDecoration(
              color: theme.colorScheme.surfaceContainer,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Column(
              children: [
                SwitchListTile(
                  title: Text(
                    'Dark Mode',
                    style: theme.textTheme.bodyLarge?.copyWith(
                      color: theme.colorScheme.onSurface,
                    ),
                  ),
                  value: darkMode,
                  onChanged: (value) =>
                      ref.read(darkModeProvider.notifier).state = value,
                  activeColor: theme.colorScheme.primary,
                ),
              ],
            ),
          ),*/
          _buildSectionHeader(context, 'Account'),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 16),
            decoration: BoxDecoration(
              color: theme.colorScheme.surfaceContainer,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Column(
              children: [
                ListTile(
                  title: Text(
                    'Change Password',
                    style: theme.textTheme.bodyLarge?.copyWith(
                      color: theme.colorScheme.onSurface,
                    ),
                  ),
                  trailing: Icon(
                    Icons.chevron_right,
                    color: theme.colorScheme.onSurface.withValues(alpha: 0.7),
                  ),
                  onTap: () {
                    // Navigate to change password screen
                  },
                ),
                ListTile(
                  title: Text(
                    'Privacy Policy',
                    style: theme.textTheme.bodyLarge?.copyWith(
                      color: theme.colorScheme.onSurface,
                    ),
                  ),
                  trailing: Icon(
                    Icons.chevron_right,
                    color: theme.colorScheme.onSurface.withValues(alpha: 0.7),
                  ),
                  onTap: () async {
                    final Uri url =
                        Uri.parse('https://foodonthestove.org/privacy-policy/');
                    if (!await launchUrl(url,
                        mode: LaunchMode.externalApplication)) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                            content: Text('Could not open privacy policy')),
                      );
                    }
                  },
                ),
                ListTile(
                  title: Text(
                    'Terms of Service',
                    style: theme.textTheme.bodyLarge?.copyWith(
                      color: theme.colorScheme.onSurface,
                    ),
                  ),
                  trailing: Icon(
                    Icons.chevron_right,
                    color: theme.colorScheme.onSurface.withValues(alpha: 0.7),
                  ),
                  onTap: () async {
                    final Uri url = Uri.parse(
                        'https://foodonthestove.org/terms-and-conditions/');
                    if (!await launchUrl(url,
                        mode: LaunchMode.externalApplication)) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                            content:
                                Text('Could not open terms and conditions')),
                      );
                    }
                  },
                ),
                ListTile(
                  title: Text(
                    'Log Out',
                    style: theme.textTheme.bodyLarge?.copyWith(
                      color: theme.colorScheme.error,
                    ),
                  ),
                  onTap: () {
                    _showLogoutConfirmationDialog(context, ref);
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSectionHeader(BuildContext context, String title) {
    final theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 16, 16, 8),
      child: Text(
        title,
        style: theme.textTheme.titleLarge?.copyWith(
          color: theme.colorScheme.primary,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  void _showLogoutConfirmationDialog(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final userNotifier = ref.read(userNotifierProvider.notifier);
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(
          'Confirm Logout',
          style: theme.textTheme.titleLarge?.copyWith(
            color: theme.colorScheme.onSurface,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: theme.colorScheme.surface,
        content: Text(
          'Are you sure you want to log out?',
          style: theme.textTheme.bodyLarge?.copyWith(
            color: theme.colorScheme.onSurface,
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text(
              'Cancel',
              style: theme.textTheme.labelLarge?.copyWith(
                color: theme.colorScheme.primary,
              ),
            ),
          ),
          TextButton(
            onPressed: () {
              // Handle logout
              userNotifier.logout();
              context.go('/login');
            },
            child: Text(
              'Logout',
              style: theme.textTheme.labelLarge?.copyWith(
                color: theme.colorScheme.error,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
