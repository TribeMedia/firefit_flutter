import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

class TeamUpdateCard extends HookConsumerWidget {
  final TeamUpdate teamUpdate;

  const TeamUpdateCard({super.key, required this.teamUpdate});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final shadTheme = ShadTheme.of(context);

    return ShadCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildHeader(shadTheme),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  teamUpdate.content.title,
                  style: shadTheme.textTheme.h3,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(height: 8),
                Text(
                  teamUpdate.content.body,
                  style: shadTheme.textTheme.p,
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(height: 16),
                _buildMetadata(shadTheme),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildHeader(ShadThemeData shadTheme) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      decoration: BoxDecoration(
        color: teamUpdate.isUrgent
            ? shadTheme.colorScheme.destructive
            : shadTheme.colorScheme.primary,
        borderRadius: BorderRadius.vertical(top: Radius.circular(12)),
      ),
      child: Row(
        children: [
          Icon(
            _getIconForUpdateType(teamUpdate.teamUpdateType.name),
            color: shadTheme.colorScheme.background,
          ),
          SizedBox(width: 8),
          Expanded(
            child: Text(
              teamUpdate.teamUpdateType.name,
              style: shadTheme.textTheme.h4
                  .copyWith(color: shadTheme.colorScheme.background),
            ),
          ),
          if (teamUpdate.isUrgent)
            ShadBadge(
              backgroundColor: shadTheme.colorScheme.background,
              child: Text(
                'Urgent',
                style: TextStyle(color: shadTheme.colorScheme.destructive),
              ),
            ),
        ],
      ),
    );
  }

  Widget _buildMetadata(ShadThemeData shadTheme) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Posted: ${DateFormat('MMM d, yyyy').format(teamUpdate.createdAt)}',
          style: shadTheme.textTheme.small,
        ),
        if (teamUpdate.metadata != null && teamUpdate.metadata!.isNotEmpty)
          ShadTooltip(
            builder: (context) => Column(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: teamUpdate.metadata!.entries
                      .map((entry) => Text('${entry.key}: ${entry.value}',
                          style: shadTheme.textTheme.small))
                      .toList(),
                )
              ],
            ),
            child: Icon(Icons.info_outline, size: 16),
          ),
      ],
    );
  }

  IconData _getIconForUpdateType(String updateType) {
    switch (updateType.toLowerCase()) {
      case 'announcement':
        return Icons.campaign;
      case 'event':
        return Icons.event;
      case 'task':
        return Icons.assignment;
      case 'reminder':
        return Icons.notifications;
      default:
        return Icons.info;
    }
  }
}
