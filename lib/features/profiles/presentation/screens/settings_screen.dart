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

    return FScaffold(
      header: FHeader(
        title: Text('Settings'),
      ),
      contentPad: false,
      content: ListView(
        children: [
          _buildSectionHeader(context, 'Notifications'),
          SwitchListTile(
            title: Text('Enable Notifications'),
            value: notificationsEnabled,
            onChanged: (value) =>
                ref.read(notificationsEnabledProvider.notifier).state = value,
          ),
          ListTile(
            title: Text('Daily Reminder Time'),
            subtitle: Text(dailyReminderTime.format(context)),
            trailing: Icon(Icons.chevron_right),
            onTap: () async {
              final TimeOfDay? newTime = await showTimePicker(
                context: context,
                initialTime: dailyReminderTime,
              );
              if (newTime != null) {
                ref.read(dailyReminderTimeProvider.notifier).state = newTime;
              }
            },
          ),
          _buildSectionHeader(context, 'Dietary Preferences'),
          _buildDietaryRestrictions(context, ref, dietaryRestrictions),
          _buildSectionHeader(context, 'App Settings'),
          SwitchListTile(
            title: Text('Dark Mode'),
            value: darkMode,
            onChanged: (value) =>
                ref.read(darkModeProvider.notifier).state = value,
          ),
          ListTile(
            title: Text('Measurement Unit'),
            subtitle: Text(measurementUnit == MeasurementUnit.metric
                ? 'Metric'
                : 'Imperial'),
            trailing: Icon(Icons.chevron_right),
            onTap: () =>
                _showMeasurementUnitDialog(context, ref, measurementUnit),
          ),
          _buildSectionHeader(context, 'Account'),
          ListTile(
            title: Text('Change Password'),
            trailing: Icon(Icons.chevron_right),
            onTap: () {
              // Navigate to change password screen
              // Navigator.push(context, MaterialPageRoute(builder: (context) => ChangePasswordScreen()));
            },
          ),
          ListTile(
            title: Text('Privacy Policy'),
            trailing: Icon(Icons.chevron_right),
            onTap: () {
              // Navigate to privacy policy screen or open a web view
              // Navigator.push(context, MaterialPageRoute(builder: (context) => PrivacyPolicyScreen()));
            },
          ),
          ListTile(
            title: Text('Terms of Service'),
            trailing: Icon(Icons.chevron_right),
            onTap: () {
              // Navigate to terms of service screen or open a web view
              // Navigator.push(context, MaterialPageRoute(builder: (context) => TermsOfServiceScreen()));
            },
          ),
          ListTile(
            title: Text('Log Out'),
            textColor: Colors.red,
            onTap: () {
              // Show logout confirmation dialog
              _showLogoutConfirmationDialog(context);
            },
          ),
        ],
      ),
    );
  }

  Widget _buildSectionHeader(BuildContext context, String title) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 16, 16, 8),
      child: Text(
        title,
        style: Theme.of(context).textTheme.titleLarge?.copyWith(
              color: Theme.of(context).primaryColor,
              fontWeight: FontWeight.bold,
            ),
      ),
    );
  }

  Widget _buildDietaryRestrictions(
      BuildContext context, WidgetRef ref, List<String> dietaryRestrictions) {
    final restrictions = [
      'Vegetarian',
      'Vegan',
      'Gluten-free',
      'Dairy-free',
      'Nut-free'
    ];

    return Column(
      children: restrictions.map((restriction) {
        return CheckboxListTile(
          title: Text(restriction),
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
        );
      }).toList(),
    );
  }

  void _showMeasurementUnitDialog(
      BuildContext context, WidgetRef ref, MeasurementUnit currentUnit) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Select Measurement Unit'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              RadioListTile<MeasurementUnit>(
                title: Text('Metric'),
                value: MeasurementUnit.metric,
                groupValue: currentUnit,
                onChanged: (MeasurementUnit? value) {
                  if (value != null) {
                    ref.read(measurementUnitProvider.notifier).state = value;
                    Navigator.of(context).pop();
                  }
                },
              ),
              RadioListTile<MeasurementUnit>(
                title: Text('Imperial'),
                value: MeasurementUnit.imperial,
                groupValue: currentUnit,
                onChanged: (MeasurementUnit? value) {
                  if (value != null) {
                    ref.read(measurementUnitProvider.notifier).state = value;
                    Navigator.of(context).pop();
                  }
                },
              ),
            ],
          ),
        );
      },
    );
  }

  void _showLogoutConfirmationDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Confirm Logout'),
          content: Text('Are you sure you want to log out?'),
          actions: <Widget>[
            TextButton(
              child: Text('Cancel'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: Text('Logout'),
              onPressed: () {
                // Perform logout action
                // For example: AuthService.logout();
                Navigator.of(context).pop();
                // Navigate to login screen
                // Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => LoginScreen()));
              },
            ),
          ],
        );
      },
    );
  }
}
