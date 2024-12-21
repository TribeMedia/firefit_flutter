import 'package:cached_network_image/cached_network_image.dart';
import 'package:firefit/features/common/presentation/theme/app_spacing.dart';
import 'package:flutter/material.dart';

class Meal {
  final String id;
  final String name;
  final String mealType;
  final int calories;
  final String? imageUrl;
  final DateTime time;
  final bool isCompleted;

  const Meal({
    required this.id,
    required this.name,
    required this.mealType,
    required this.calories,
    this.imageUrl,
    required this.time,
    this.isCompleted = false,
  });
}

class MealSchedule extends StatelessWidget {
  final List<Meal> meals;
  final Function(Meal) onMealTap;
  final VoidCallback onAddMeal;

  const MealSchedule({
    super.key,
    required this.meals,
    required this.onMealTap,
    required this.onAddMeal,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildHeader(context),
        AppSpacing.vertical16,
        if (meals.isEmpty)
          _buildEmptyState(context)
        else
          ..._buildMealsList(context),
      ],
    );
  }

  Widget _buildHeader(BuildContext context) {
    final theme = Theme.of(context);

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Today's Meal Plan",
          style: theme.textTheme.titleLarge?.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
        IconButton(
          onPressed: onAddMeal,
          icon: const Icon(Icons.add_circle_outline),
          tooltip: 'Add Meal',
          style: IconButton.styleFrom(
            foregroundColor: theme.colorScheme.primary,
          ),
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
            Icons.restaurant_outlined,
            size: 48,
            color: theme.colorScheme.primary,
          ),
          AppSpacing.vertical16,
          Text(
            'No meals planned for today',
            style: theme.textTheme.titleMedium?.copyWith(
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          AppSpacing.vertical8,
          Text(
            'Add your first meal to start planning',
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
          AppSpacing.vertical16,
          FilledButton.icon(
            onPressed: onAddMeal,
            icon: const Icon(Icons.add),
            label: const Text('Add Meal'),
          ),
        ],
      ),
    );
  }

  List<Widget> _buildMealsList(BuildContext context) {
    final groupedMeals = _groupMealsByType();

    return groupedMeals.entries.map((entry) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (groupedMeals.keys.first != entry.key) AppSpacing.vertical16,
          _buildMealTypeSection(context, entry.key, entry.value),
        ],
      );
    }).toList();
  }

  Widget _buildMealTypeSection(
    BuildContext context,
    String mealType,
    List<Meal> meals,
  ) {
    final theme = Theme.of(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          mealType,
          style: theme.textTheme.titleMedium?.copyWith(
            color: theme.colorScheme.onSurface.withValues(
              red: theme.colorScheme.onSurface.r.toDouble(),
              green: theme.colorScheme.onSurface.g.toDouble(),
              blue: theme.colorScheme.onSurface.b.toDouble(),
              alpha: 179.0, // 0.7 * 255 ≈ 179
            ),
          ),
        ),
        AppSpacing.vertical8,
        ...meals.map((meal) => _buildMealCard(context, meal)),
      ],
    );
  }

  Widget _buildMealCard(BuildContext context, Meal meal) {
    final theme = Theme.of(context);

    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: InkWell(
        onTap: () => onMealTap(meal),
        borderRadius: BorderRadius.circular(12),
        child: Container(
          decoration: BoxDecoration(
            color: theme.colorScheme.surfaceContainer,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Row(
            children: [
              if (meal.imageUrl != null)
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(12),
                    bottomLeft: Radius.circular(12),
                  ),
                  child: CachedNetworkImage(
                    imageUrl: meal.imageUrl ?? '',
                    fit: BoxFit.cover,
                    placeholder: (context, url) => const CircularProgressIndicator(),
                    errorWidget: (context, url, error) => const Icon(Icons.error),
                  ),
                ),
              Expanded(
                child: Padding(
                  padding: AppSpacing.a16,
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              meal.name,
                              style: theme.textTheme.titleMedium?.copyWith(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            AppSpacing.vertical4,
                            Text(
                              '${meal.calories} calories',
                              style: theme.textTheme.bodyMedium?.copyWith(
                                color: theme.colorScheme.onSurface.withValues(
                                  red: theme.colorScheme.onSurface.r.toDouble(),
                                  green:
                                      theme.colorScheme.onSurface.g.toDouble(),
                                  blue:
                                      theme.colorScheme.onSurface.b.toDouble(),
                                  alpha: 179.0, // 0.7 * 255 ≈ 179
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      if (meal.isCompleted)
                        Icon(
                          Icons.check_circle,
                          color: theme.colorScheme.primary,
                        )
                      else
                        Text(
                          _formatTime(meal.time),
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
              ),
            ],
          ),
        ),
      ),
    );
  }

  Map<String, List<Meal>> _groupMealsByType() {
    final groupedMeals = <String, List<Meal>>{};

    for (final meal in meals) {
      if (!groupedMeals.containsKey(meal.mealType)) {
        groupedMeals[meal.mealType] = [];
      }
      groupedMeals[meal.mealType]!.add(meal);
    }

    // Sort meals within each type by time
    groupedMeals.forEach((key, value) {
      value.sort((a, b) => a.time.compareTo(b.time));
    });

    return groupedMeals;
  }

  String _formatTime(DateTime time) {
    final hour = time.hour > 12 ? time.hour - 12 : time.hour;
    final period = time.hour >= 12 ? 'PM' : 'AM';
    final minute = time.minute.toString().padLeft(2, '0');
    return '$hour:$minute $period';
  }
}
