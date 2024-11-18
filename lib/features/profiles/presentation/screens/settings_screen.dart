import 'package:flutter/material.dart';
import 'package:forui/forui.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

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
    final dailyReminderTime = ref.watch(dailyReminderTimeProvider);
    final dietaryRestrictions = ref.watch(dietaryRestrictionsProvider);
    final darkMode = ref.watch(darkModeProvider);
    final measurementUnit = ref.watch(measurementUnitProvider);
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
                ListTile(
                  title: Text(
                    'Daily Reminder Time',
                    style: theme.textTheme.bodyLarge?.copyWith(
                      color: theme.colorScheme.onSurface,
                    ),
                  ),
                  subtitle: Text(
                    dailyReminderTime.format(context),
                    style: theme.textTheme.bodyMedium?.copyWith(
                      color: theme.colorScheme.onSurface.withValues(alpha: 0.7),
                    ),
                  ),
                  trailing: Icon(
                    Icons.chevron_right,
                    color: theme.colorScheme.onSurface.withValues(alpha: 0.7),
                  ),
                  onTap: () async {
                    final TimeOfDay? newTime = await showTimePicker(
                      context: context,
                      initialTime: dailyReminderTime,
                    );
                    if (newTime != null) {
                      ref.read(dailyReminderTimeProvider.notifier).state =
                          newTime;
                    }
                  },
                ),
              ],
            ),
          ),
          _buildSectionHeader(context, 'Dietary Preferences'),
          _buildDietaryRestrictions(context, ref, dietaryRestrictions),
          _buildSectionHeader(context, 'App Settings'),
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
                ListTile(
                  title: Text(
                    'Measurement Unit',
                    style: theme.textTheme.bodyLarge?.copyWith(
                      color: theme.colorScheme.onSurface,
                    ),
                  ),
                  subtitle: Text(
                    measurementUnit == MeasurementUnit.metric
                        ? 'Metric'
                        : 'Imperial',
                    style: theme.textTheme.bodyMedium?.copyWith(
                      color: theme.colorScheme.onSurface.withValues(alpha: 0.7),
                    ),
                  ),
                  trailing: Icon(
                    Icons.chevron_right,
                    color: theme.colorScheme.onSurface.withValues(alpha: 0.7),
                  ),
                  onTap: () =>
                      _showMeasurementUnitDialog(context, ref, measurementUnit),
                ),
              ],
            ),
          ),
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
                  onTap: () {
                    // Navigate to privacy policy screen
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
                  onTap: () {
                    // Navigate to terms of service screen
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
                    _showLogoutConfirmationDialog(context);
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

  Widget _buildDietaryRestrictions(
      BuildContext context, WidgetRef ref, List<String> dietaryRestrictions) {
    final theme = Theme.of(context);
    final restrictions = [
      'Vegetarian',
      'Vegan',
      'Gluten-free',
      'Dairy-free',
      'Nut-free'
    ];

    return Container(
      decoration: BoxDecoration(
        color: theme.colorScheme.surfaceContainer,
        borderRadius: BorderRadius.circular(8),
      ),
      margin: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: restrictions.map((restriction) {
          return CheckboxListTile(
            title: Text(
              restriction,
              style: theme.textTheme.bodyLarge?.copyWith(
                color: theme.colorScheme.onSurface,
              ),
            ),
            value: dietaryRestrictions.contains(restriction),
            onChanged: (bool? value) {
              if (value == true) {
                ref.read(dietaryRestrictionsProvider.notifier).state = [
                  ...dietaryRestrictions,
                  restriction
                ];
              } else {
                ref.read(dietaryRestrictionsProvider.notifier).state =
                    dietaryRestrictions
                        .where((item) => item != restriction)
                        .toList();
              }
            },
            activeColor: theme.colorScheme.primary,
            checkColor: theme.colorScheme.onPrimary,
          );
        }).toList(),
      ),
    );
  }

  void _showMeasurementUnitDialog(
      BuildContext context, WidgetRef ref, MeasurementUnit currentUnit) {
    final theme = Theme.of(context);
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(
          'Select Measurement Unit',
          style: theme.textTheme.titleLarge?.copyWith(
            color: theme.colorScheme.onSurface,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: theme.colorScheme.surface,
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            RadioListTile<MeasurementUnit>(
              title: Text(
                'Metric',
                style: theme.textTheme.bodyLarge?.copyWith(
                  color: theme.colorScheme.onSurface,
                ),
              ),
              value: MeasurementUnit.metric,
              groupValue: currentUnit,
              onChanged: (MeasurementUnit? value) {
                if (value != null) {
                  ref.read(measurementUnitProvider.notifier).state = value;
                  Navigator.pop(context);
                }
              },
            ),
            RadioListTile<MeasurementUnit>(
              title: Text(
                'Imperial',
                style: theme.textTheme.bodyLarge?.copyWith(
                  color: theme.colorScheme.onSurface,
                ),
              ),
              value: MeasurementUnit.imperial,
              groupValue: currentUnit,
              onChanged: (MeasurementUnit? value) {
                if (value != null) {
                  ref.read(measurementUnitProvider.notifier).state = value;
                  Navigator.pop(context);
                }
              },
            ),
          ],
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
        ],
      ),
    );
  }

  void _showLogoutConfirmationDialog(BuildContext context) {
    final theme = Theme.of(context);
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
              Navigator.pop(context);
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
