import 'package:firefit/features/common/presentation/theme/app_spacing.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class AppDrawer extends ConsumerWidget {
  final VoidCallback onSettingsTap;
  final VoidCallback onMediaTap;
  final VoidCallback onOrderHistoryTap;

  const AppDrawer({
    super.key,
    required this.onSettingsTap,
    required this.onMediaTap,
    required this.onOrderHistoryTap,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);

    return Drawer(
      backgroundColor: theme.scaffoldBackgroundColor,
      child: SafeArea(
        child: Column(
          children: [
            _buildHeader(context),
            Expanded(
              child: ListView(
                padding: EdgeInsets.zero,
                children: [
                  _buildMainMenuSection(context),
                  _buildDivider(context),
                  _buildNutritionSection(context),
                  _buildDivider(context),
                  _buildTeamSection(context),
                  _buildDivider(context),
                  _buildResourcesSection(context),
                  _buildDivider(context),
                  _buildSettingsSection(context),
                ],
              ),
            ),
            _buildFooter(context, ref),
          ],
        ),
      ),
    );
  }

  Widget _buildHeader(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      padding: AppSpacing.a16,
      decoration: BoxDecoration(
        color: theme.colorScheme.surface,
      ),
      child: Column(
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 32,
                backgroundColor: theme.colorScheme.primary.withValues(
                  red: theme.colorScheme.primary.r.toDouble(),
                  green: theme.colorScheme.primary.g.toDouble(),
                  blue: theme.colorScheme.primary.b.toDouble(),
                  alpha: 26.0, // 0.1 * 255 ≈ 26
                ),
                child: Icon(
                  Icons.local_fire_department,
                  size: 32,
                  color: theme.colorScheme.primary,
                ),
              ),
              AppSpacing.horizontal16,
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Station 23',
                      style: theme.textTheme.titleLarge?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    AppSpacing.vertical4,
                    Text(
                      'A Shift',
                      style: theme.textTheme.bodyMedium?.copyWith(
                        color: theme.colorScheme.onSurface.withValues(
                          red: theme.colorScheme.onSurface.r.toDouble(),
                          green: theme.colorScheme.onSurface.g.toDouble(),
                          blue: theme.colorScheme.onSurface.b.toDouble(),
                          alpha: 179.0, // 0.7 * 255 ≈ 179
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildMainMenuSection(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildSectionHeader(context, 'Main Menu'),
        _buildDrawerItem(
          context,
          icon: Icons.home_outlined,
          title: 'Home',
          onTap: () => context.go('/'),
        ),
        _buildDrawerItem(
          context,
          icon: Icons.restaurant_menu_outlined,
          title: 'Meal Plans',
          onTap: () => context.go('/meal-plans'),
        ),
        _buildDrawerItem(
          context,
          icon: Icons.book_outlined,
          title: 'Food Diary',
          onTap: () => context.go('/food-diary'),
        ),
      ],
    );
  }

  Widget _buildNutritionSection(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildSectionHeader(context, 'Nutrition'),
        _buildDrawerItem(
          context,
          icon: Icons.analytics_outlined,
          title: 'Nutrition Goals',
          onTap: () => context.go('/nutrition-goals'),
        ),
        _buildDrawerItem(
          context,
          icon: Icons.favorite_outline,
          title: 'Health Metrics',
          onTap: () => context.go('/health-metrics'),
        ),
        _buildDrawerItem(
          context,
          icon: Icons.restaurant_outlined,
          title: 'Meal Preferences',
          onTap: () => context.go('/meal-preferences'),
        ),
      ],
    );
  }

  Widget _buildTeamSection(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildSectionHeader(context, 'Team'),
        _buildDrawerItem(
          context,
          icon: Icons.group_outlined,
          title: 'Team Orders',
          onTap: () => context.go('/team-orders'),
        ),
        _buildDrawerItem(
          context,
          icon: Icons.calendar_today_outlined,
          title: 'Shift Schedule',
          onTap: () => context.go('/shift-schedule'),
        ),
        _buildDrawerItem(
          context,
          icon: Icons.message_outlined,
          title: 'Team Chat',
          onTap: () => context.go('/team-chat'),
        ),
      ],
    );
  }

  Widget _buildResourcesSection(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildSectionHeader(context, 'Resources'),
        _buildDrawerItem(
          context,
          icon: Icons.play_circle_outline,
          title: 'Training Videos',
          onTap: onMediaTap,
        ),
        _buildDrawerItem(
          context,
          icon: Icons.history,
          title: 'Order History',
          onTap: onOrderHistoryTap,
        ),
        _buildDrawerItem(
          context,
          icon: Icons.help_outline,
          title: 'Help & Support',
          onTap: () => context.go('/support'),
        ),
      ],
    );
  }

  Widget _buildSettingsSection(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildSectionHeader(context, 'Settings'),
        _buildDrawerItem(
          context,
          icon: Icons.settings_outlined,
          title: 'Settings',
          onTap: onSettingsTap,
        ),
        _buildDrawerItem(
          context,
          icon: Icons.person_outline,
          title: 'Profile',
          onTap: () => context.go('/profile'),
        ),
      ],
    );
  }

  Widget _buildSectionHeader(BuildContext context, String title) {
    final theme = Theme.of(context);

    return Padding(
      padding: AppSpacing.h16.copyWith(top: 16, bottom: 8),
      child: Text(
        title,
        style: theme.textTheme.titleSmall?.copyWith(
          color: theme.colorScheme.onSurface.withValues(
            red: theme.colorScheme.onSurface.r.toDouble(),
            green: theme.colorScheme.onSurface.g.toDouble(),
            blue: theme.colorScheme.onSurface.b.toDouble(),
            alpha: 179.0, // 0.7 * 255 ≈ 179
          ),
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Widget _buildDrawerItem(
    BuildContext context, {
    required IconData icon,
    required String title,
    required VoidCallback onTap,
    Widget? trailing,
  }) {
    final theme = Theme.of(context);

    return ListTile(
      leading: Icon(
        icon,
        color: theme.colorScheme.onSurface,
        size: 20,
      ),
      title: Text(
        title,
        style: theme.textTheme.bodyMedium?.copyWith(
          fontWeight: FontWeight.w500,
        ),
      ),
      trailing: trailing,
      dense: true,
      onTap: () {
        Navigator.of(context).pop(); // Close drawer
        onTap();
      },
    );
  }

  Widget _buildDivider(BuildContext context) {
    final theme = Theme.of(context);

    return Divider(
      height: 1,
      thickness: 1,
      color: theme.colorScheme.surfaceContainer,
    );
  }

  Widget _buildFooter(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);

    return Container(
      padding: AppSpacing.a16,
      decoration: BoxDecoration(
        color: theme.colorScheme.surface,
        border: Border(
          top: BorderSide(
            color: theme.colorScheme.surfaceContainer,
            width: 1,
          ),
        ),
      ),
      child: Row(
        children: [
          Icon(
            Icons.info_outline,
            size: 20,
            color: theme.colorScheme.primary,
          ),
          AppSpacing.horizontal12,
          Expanded(
            child: Text(
              'FireFit v1.0.0',
              style: theme.textTheme.bodySmall?.copyWith(
                color: theme.colorScheme.onSurface.withValues(
                  red: theme.colorScheme.onSurface.r.toDouble(),
                  green: theme.colorScheme.onSurface.g.toDouble(),
                  blue: theme.colorScheme.onSurface.b.toDouble(),
                  alpha: 179.0, // 0.7 * 255 ≈ 179
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
