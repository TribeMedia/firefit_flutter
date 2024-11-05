import 'package:firefit/features/common/presentation/theme/app_spacing.dart';
import 'package:flutter/material.dart';

class QuickAction {
  final String id;
  final String label;
  final IconData icon;
  final Color color;
  final VoidCallback onTap;

  const QuickAction({
    required this.id,
    required this.label,
    required this.icon,
    required this.color,
    required this.onTap,
  });
}

class QuickActionsCarousel extends StatelessWidget {
  final Function(QuickAction) onActionSelected;

  const QuickActionsCarousel({
    super.key,
    required this.onActionSelected,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: AppSpacing.h16,
          child: Text(
            'Quick Actions',
            style: theme.textTheme.titleLarge?.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        AppSpacing.vertical12,
        SizedBox(
          height: 120,
          child: ListView(
            scrollDirection: Axis.horizontal,
            padding: AppSpacing.h16,
            children: [
              _buildQuickActionCard(
                context,
                QuickAction(
                  id: 'new_order',
                  label: 'New Order',
                  icon: Icons.add_circle_outline,
                  color: theme.colorScheme.primary,
                  onTap: () => onActionSelected(_newOrderAction),
                ),
              ),
              _buildQuickActionCard(
                context,
                QuickAction(
                  id: 'team_order',
                  label: 'Team Order',
                  icon: Icons.group_outlined,
                  color: theme.colorScheme.secondary,
                  onTap: () => onActionSelected(_teamOrderAction),
                ),
              ),
              _buildQuickActionCard(
                context,
                QuickAction(
                  id: 'emergency_meal',
                  label: 'Quick Meal',
                  icon: Icons.flash_on_outlined,
                  color: theme.colorScheme.error,
                  onTap: () => onActionSelected(_emergencyMealAction),
                ),
              ),
              _buildQuickActionCard(
                context,
                QuickAction(
                  id: 'local_providers',
                  label: 'Local Food',
                  icon: Icons.store_outlined,
                  color: theme.colorScheme.tertiary,
                  onTap: () => onActionSelected(_localProvidersAction),
                ),
              ),
              _buildQuickActionCard(
                context,
                QuickAction(
                  id: 'meal_prep',
                  label: 'Meal Prep',
                  icon: Icons.schedule_outlined,
                  color: theme.colorScheme.secondary,
                  onTap: () => onActionSelected(_mealPrepAction),
                ),
              ),
              _buildQuickActionCard(
                context,
                QuickAction(
                  id: 'voice_log',
                  label: 'Voice Log',
                  icon: Icons.mic_outlined,
                  color: theme.colorScheme.primary,
                  onTap: () => onActionSelected(_voiceLogAction),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildQuickActionCard(BuildContext context, QuickAction action) {
    final theme = Theme.of(context);

    return Padding(
      padding: const EdgeInsets.only(right: 12),
      child: InkWell(
        onTap: action.onTap,
        borderRadius: BorderRadius.circular(12),
        child: Container(
          width: 100,
          decoration: BoxDecoration(
            color: theme.colorScheme.surfaceContainer,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: AppSpacing.a12,
                decoration: BoxDecoration(
                  color: action.color.withValues(
                    red: action.color.r.toDouble(),
                    green: action.color.g.toDouble(),
                    blue: action.color.b.toDouble(),
                    alpha: 26.0, // 0.1 * 255 ≈ 26
                  ),
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  action.icon,
                  color: action.color,
                  size: 28,
                ),
              ),
              AppSpacing.vertical8,
              Text(
                action.label,
                style: theme.textTheme.bodyMedium?.copyWith(
                  fontWeight: FontWeight.w500,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Predefined actions
  QuickAction get _newOrderAction => QuickAction(
        id: 'new_order',
        label: 'New Order',
        icon: Icons.add_circle_outline,
        color: Colors.blue,
        onTap: () {
          // Implement meal logging
        },
      );

  QuickAction get _teamOrderAction => QuickAction(
        id: 'team_order',
        label: 'Team Order',
        icon: Icons.group_outlined,
        color: Colors.green,
        onTap: () {
          // Implement team ordering
        },
      );

  QuickAction get _emergencyMealAction => QuickAction(
        id: 'emergency_meal',
        label: 'Quick Meal',
        icon: Icons.flash_on_outlined,
        color: Colors.orange,
        onTap: () {
          // Implement emergency meal options
        },
      );

  QuickAction get _localProvidersAction => QuickAction(
        id: 'local_providers',
        label: 'Local Food',
        icon: Icons.store_outlined,
        color: Colors.purple,
        onTap: () {
          // Show local food providers
        },
      );

  QuickAction get _mealPrepAction => QuickAction(
        id: 'meal_prep',
        label: 'Meal Prep',
        icon: Icons.schedule_outlined,
        color: Colors.teal,
        onTap: () {
          // Show meal prep options
        },
      );

  QuickAction get _voiceLogAction => QuickAction(
        id: 'voice_log',
        label: 'Voice Log',
        icon: Icons.mic_outlined,
        color: Colors.red,
        onTap: () {
          // Activate voice logging
        },
      );
}

// Extension for quick action animations
extension QuickActionAnimations on QuickActionsCarousel {
  static const Duration pressedDuration = Duration(milliseconds: 100);
  static const Duration releaseDuration = Duration(milliseconds: 200);

  static const Curve pressedCurve = Curves.easeInOut;
  static const Curve releaseCurve = Curves.easeOutBack;
}
