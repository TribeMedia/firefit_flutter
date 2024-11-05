import 'package:firefit/features/common/presentation/theme/app_spacing.dart';
import 'package:flutter/material.dart';
import 'package:timeago/timeago.dart' as timeago;

class TeamUpdate {
  final String id;
  final String title;
  final String description;
  final DateTime timestamp;
  final TeamUpdateType type;
  final String? authorName;
  final String? authorImageUrl;
  final bool isUrgent;
  final Map<String, dynamic>? metadata;

  const TeamUpdate({
    required this.id,
    required this.title,
    required this.description,
    required this.timestamp,
    required this.type,
    this.authorName,
    this.authorImageUrl,
    this.isUrgent = false,
    this.metadata,
  });
}

enum TeamUpdateType {
  mealPlan,
  dietaryRestriction,
  groceryOrder,
  mealPrep,
  shiftChange,
  specialEvent
}

class TeamUpdates extends StatelessWidget {
  final List<TeamUpdate> updates;
  final Function(TeamUpdate) onUpdateTap;

  const TeamUpdates({
    super.key,
    required this.updates,
    required this.onUpdateTap,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildHeader(context),
        AppSpacing.vertical16,
        if (updates.isEmpty)
          _buildEmptyState(context)
        else
          _buildUpdatesList(context),
      ],
    );
  }

  Widget _buildHeader(BuildContext context) {
    final theme = Theme.of(context);

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Team Updates',
          style: theme.textTheme.titleLarge?.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
        IconButton(
          onPressed: () => _showAllUpdates(context),
          icon: const Icon(Icons.chevron_right),
          tooltip: 'View All Updates',
        ),
      ],
    );
  }

  Widget _buildEmptyState(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      padding: AppSpacing.a24,
      decoration: BoxDecoration(
        color: theme.colorScheme.surfaceContainer,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            Icons.group_outlined,
            size: 48,
            color: theme.colorScheme.primary,
          ),
          AppSpacing.vertical16,
          Text(
            'No Team Updates',
            style: theme.textTheme.titleMedium?.copyWith(
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          AppSpacing.vertical8,
          Text(
            'Team updates will appear here',
            style: theme.textTheme.bodyMedium?.copyWith(
              color: theme.colorScheme.onSurface.withValues(
                red: theme.colorScheme.onSurface.r.toDouble(),
                green: theme.colorScheme.onSurface.g.toDouble(),
                blue: theme.colorScheme.onSurface.b.toDouble(),
                alpha: 179.0, // 0.7 * 255 ≈ 179
              ),
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

  Widget _buildUpdatesList(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: updates.length,
      separatorBuilder: (context, index) => AppSpacing.vertical8,
      itemBuilder: (context, index) => _buildUpdateCard(
        context,
        updates[index],
      ),
    );
  }

  Widget _buildUpdateCard(BuildContext context, TeamUpdate update) {
    final theme = Theme.of(context);

    return InkWell(
      onTap: () => onUpdateTap(update),
      borderRadius: BorderRadius.circular(12),
      child: Container(
        decoration: BoxDecoration(
          color: theme.colorScheme.surfaceContainer,
          borderRadius: BorderRadius.circular(12),
          border: update.isUrgent
              ? Border.all(
                  color: theme.colorScheme.error,
                  width: 2,
                )
              : null,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildUpdateHeader(context, update),
            _buildUpdateContent(context, update),
            if (update.metadata != null) _buildUpdateMetadata(context, update),
          ],
        ),
      ),
    );
  }

  Widget _buildUpdateHeader(BuildContext context, TeamUpdate update) {
    final theme = Theme.of(context);

    return Padding(
      padding: AppSpacing.a12,
      child: Row(
        children: [
          _buildUpdateTypeIcon(context, update.type),
          AppSpacing.horizontal12,
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  update.title,
                  style: theme.textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                AppSpacing.vertical4,
                Text(
                  timeago.format(update.timestamp),
                  style: theme.textTheme.bodySmall?.copyWith(
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
          if (update.isUrgent)
            Container(
              padding: AppSpacing.h8,
              decoration: BoxDecoration(
                color: theme.colorScheme.error.withValues(
                  red: theme.colorScheme.error.r.toDouble(),
                  green: theme.colorScheme.error.g.toDouble(),
                  blue: theme.colorScheme.error.b.toDouble(),
                  alpha: 26.0, // 0.1 * 255 ≈ 26
                ),
                borderRadius: BorderRadius.circular(16),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.priority_high,
                    size: 16,
                    color: theme.colorScheme.error,
                  ),
                  AppSpacing.horizontal4,
                  Text(
                    'Urgent',
                    style: theme.textTheme.bodySmall?.copyWith(
                      color: theme.colorScheme.error,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
        ],
      ),
    );
  }

  Widget _buildUpdateTypeIcon(BuildContext context, TeamUpdateType type) {
    final theme = Theme.of(context);

    IconData icon;
    Color color;

    switch (type) {
      case TeamUpdateType.mealPlan:
        icon = Icons.restaurant_menu;
        color = theme.colorScheme.primary;
        break;
      case TeamUpdateType.dietaryRestriction:
        icon = Icons.no_meals;
        color = theme.colorScheme.error;
        break;
      case TeamUpdateType.groceryOrder:
        icon = Icons.shopping_cart;
        color = theme.colorScheme.secondary;
        break;
      case TeamUpdateType.mealPrep:
        icon = Icons.schedule;
        color = theme.colorScheme.tertiary;
        break;
      case TeamUpdateType.shiftChange:
        icon = Icons.swap_horiz;
        color = theme.colorScheme.error;
        break;
      case TeamUpdateType.specialEvent:
        icon = Icons.event;
        color = theme.colorScheme.secondary;
        break;
    }

    return Container(
      padding: AppSpacing.a8,
      decoration: BoxDecoration(
        color: color.withValues(
          red: color.r.toDouble(),
          green: color.g.toDouble(),
          blue: color.b.toDouble(),
          alpha: 26.0, // 0.1 * 255 ≈ 26
        ),
        shape: BoxShape.circle,
      ),
      child: Icon(
        icon,
        color: color,
        size: 24,
      ),
    );
  }

  Widget _buildUpdateContent(BuildContext context, TeamUpdate update) {
    final theme = Theme.of(context);

    return Padding(
      padding: AppSpacing.h12.copyWith(bottom: 12),
      child: Text(
        update.description,
        style: theme.textTheme.bodyMedium,
      ),
    );
  }

  Widget _buildUpdateMetadata(BuildContext context, TeamUpdate update) {
    final theme = Theme.of(context);

    return Container(
      padding: AppSpacing.a12,
      decoration: BoxDecoration(
        color: theme.colorScheme.surface,
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(12),
          bottomRight: Radius.circular(12),
        ),
      ),
      child: Row(
        children: [
          if (update.authorImageUrl != null)
            CircleAvatar(
              radius: 16,
              backgroundImage: NetworkImage(update.authorImageUrl!),
            )
          else
            CircleAvatar(
              radius: 16,
              backgroundColor: theme.colorScheme.primary.withValues(
                red: theme.colorScheme.primary.r.toDouble(),
                green: theme.colorScheme.primary.g.toDouble(),
                blue: theme.colorScheme.primary.b.toDouble(),
                alpha: 26.0, // 0.1 * 255 ≈ 26
              ),
              child: Icon(
                Icons.person_outline,
                size: 20,
                color: theme.colorScheme.primary,
              ),
            ),
          AppSpacing.horizontal8,
          Text(
            update.authorName ?? 'Team Member',
            style: theme.textTheme.bodyMedium?.copyWith(
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }

  void _showAllUpdates(BuildContext context) {
    // Navigate to all updates screen
  }
}
