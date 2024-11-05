import 'package:firefit/features/common/presentation/theme/app_spacing.dart';
import 'package:firefit/features/home/domain/models/mock_types.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ShiftStatusPanel extends StatelessWidget {
  final ShiftStatus shiftStatus;
  final DateTime nextShiftTime;
  final Function(ShiftStatus) onStatusChange;

  const ShiftStatusPanel({
    super.key,
    required this.shiftStatus,
    required this.nextShiftTime,
    required this.onStatusChange,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surfaceContainer,
        borderRadius: BorderRadius.circular(16),
      ),
      clipBehavior: Clip.antiAlias,
      child: Column(
        children: [
          _buildStatusHeader(context),
          Container(
            color: _getStatusBackgroundColor(Theme.of(context)),
            child: Column(
              children: [
                _buildStatusContent(context),
                _buildQuickActions(context),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildStatusHeader(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      padding: AppSpacing.a16,
      color: theme.colorScheme.surfaceContainer,
      child: Row(
        children: [
          _buildStatusIndicator(context),
          AppSpacing.horizontal12,
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  _getStatusTitle(),
                  style: theme.textTheme.titleLarge?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                AppSpacing.vertical4,
                Text(
                  _getStatusSubtitle(),
                  style: theme.textTheme.bodyMedium?.copyWith(
                    color: theme.colorScheme.onSurface
                        .withAlpha((0.7 * 255).round()),
                  ),
                ),
              ],
            ),
          ),
          _buildStatusMenu(context),
        ],
      ),
    );
  }

  Widget _buildStatusIndicator(BuildContext context) {
    return Container(
      width: 48,
      height: 48,
      decoration: BoxDecoration(
        color: _getStatusColor(Theme.of(context)),
        shape: BoxShape.circle,
      ),
      child: Center(
        child: Icon(
          _getStatusIcon(),
          color: Colors.white,
          size: 24,
        ),
      ),
    );
  }

  Widget _buildStatusContent(BuildContext context) {
    return Padding(
      padding: AppSpacing.a16,
      child: Row(
        children: [
          Expanded(
            child: _buildInfoCard(
              context,
              'Next Shift',
              _formatNextShiftTime(),
              Icons.access_time,
            ),
          ),
          AppSpacing.horizontal12,
          Expanded(
            child: _buildInfoCard(
              context,
              'Meal Schedule',
              _getMealSchedule(),
              Icons.restaurant,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildInfoCard(
    BuildContext context,
    String title,
    String content,
    IconData icon,
  ) {
    final theme = Theme.of(context);

    return Container(
      padding: AppSpacing.a12,
      decoration: BoxDecoration(
        color: theme.colorScheme.surface,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: theme.colorScheme.surfaceContainer,
          width: 1,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(
                icon,
                size: 16,
                color: theme.colorScheme.primary,
              ),
              AppSpacing.horizontal8,
              Text(
                title,
                style: theme.textTheme.bodySmall?.copyWith(
                  color: theme.colorScheme.onSurface
                      .withAlpha((0.7 * 255).round()),
                ),
              ),
            ],
          ),
          AppSpacing.vertical4,
          Text(
            content,
            style: theme.textTheme.titleMedium?.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildQuickActions(BuildContext context) {
    return Container(
      padding: AppSpacing.a16,
      color: Theme.of(context).colorScheme.surfaceContainer,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _buildActionButton(
            context,
            'Log Meal',
            Icons.add_circle_outline,
            () => _handleLogMeal(context),
          ),
          _buildActionButton(
            context,
            'Team Orders',
            Icons.group,
            () => _handleTeamOrders(context),
          ),
          _buildActionButton(
            context,
            'Quick Diet',
            Icons.flash_on_outlined,
            () => _handleQuickDiet(context),
          ),
        ],
      ),
    );
  }

  Widget _buildActionButton(
    BuildContext context,
    String label,
    IconData icon,
    VoidCallback onPressed,
  ) {
    final theme = Theme.of(context);

    return InkWell(
      onTap: onPressed,
      borderRadius: BorderRadius.circular(8),
      child: Padding(
        padding: AppSpacing.a8,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              icon,
              color: theme.colorScheme.primary,
            ),
            AppSpacing.vertical4,
            Text(
              label,
              style: theme.textTheme.bodySmall?.copyWith(
                color: theme.colorScheme.onSurface,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildStatusMenu(BuildContext context) {
    return PopupMenuButton<ShiftStatus>(
      icon: const Icon(Icons.more_vert),
      onSelected: onStatusChange,
      itemBuilder: (context) => [
        _buildStatusMenuItem(ShiftStatus.onDuty, 'On Duty', Icons.work),
        _buildStatusMenuItem(ShiftStatus.offDuty, 'Off Duty', Icons.home),
        _buildStatusMenuItem(ShiftStatus.training, 'Training', Icons.school),
        _buildStatusMenuItem(ShiftStatus.standby, 'Standby', Icons.access_time),
      ],
    );
  }

  PopupMenuItem<ShiftStatus> _buildStatusMenuItem(
    ShiftStatus status,
    String label,
    IconData icon,
  ) {
    return PopupMenuItem<ShiftStatus>(
      value: status,
      child: Row(
        children: [
          Icon(icon, size: 20),
          AppSpacing.horizontal8,
          Text(label),
        ],
      ),
    );
  }

  Color _getStatusBackgroundColor(ThemeData theme) {
    switch (shiftStatus) {
      case ShiftStatus.onDuty:
        return theme.colorScheme.primary.withAlpha((0.1 * 255).round());
      case ShiftStatus.offDuty:
        return theme.colorScheme.secondary.withAlpha((0.1 * 255).round());
      case ShiftStatus.training:
        return theme.colorScheme.tertiary.withAlpha((0.1 * 255).round());
      case ShiftStatus.standby:
        return theme.colorScheme.error.withAlpha((0.1 * 255).round());
    }
  }

  Color _getStatusColor(ThemeData theme) {
    switch (shiftStatus) {
      case ShiftStatus.onDuty:
        return theme.colorScheme.primary;
      case ShiftStatus.offDuty:
        return theme.colorScheme.secondary;
      case ShiftStatus.training:
        return theme.colorScheme.tertiary;
      case ShiftStatus.standby:
        return theme.colorScheme.error;
    }
  }

  IconData _getStatusIcon() {
    switch (shiftStatus) {
      case ShiftStatus.onDuty:
        return Icons.local_fire_department;
      case ShiftStatus.offDuty:
        return Icons.home;
      case ShiftStatus.training:
        return Icons.school;
      case ShiftStatus.standby:
        return Icons.access_time;
    }
  }

  String _getStatusTitle() {
    switch (shiftStatus) {
      case ShiftStatus.onDuty:
        return 'On Duty';
      case ShiftStatus.offDuty:
        return 'Off Duty';
      case ShiftStatus.training:
        return 'Training';
      case ShiftStatus.standby:
        return 'Standby';
    }
  }

  String _getStatusSubtitle() {
    switch (shiftStatus) {
      case ShiftStatus.onDuty:
        return 'Station 23 - A Shift';
      case ShiftStatus.offDuty:
        return 'Rest Period';
      case ShiftStatus.training:
        return 'Physical Training';
      case ShiftStatus.standby:
        return 'Ready for Call';
    }
  }

  String _formatNextShiftTime() {
    return DateFormat('E, MMM d - h:mm a').format(nextShiftTime);
  }

  String _getMealSchedule() {
    // This would typically come from a service or provider
    return 'Lunch in 2h 30m';
  }

  void _handleLogMeal(BuildContext context) {
    // Implement meal logging
  }

  void _handleTeamOrders(BuildContext context) {
    // Implement team orders
  }

  void _handleQuickDiet(BuildContext context) {
    // Implement quick diet options
  }
}
