import 'package:firefit/features/common/presentation/theme/app_spacing.dart';
import 'package:flutter/material.dart';

class MacroNutrients {
  final double carbs;
  final double protein;
  final double fat;
  final double carbsGoal;
  final double proteinGoal;
  final double fatGoal;

  const MacroNutrients({
    required this.carbs,
    required this.protein,
    required this.fat,
    required this.carbsGoal,
    required this.proteinGoal,
    required this.fatGoal,
  });

  double get carbsPercentage => carbs / carbsGoal;
  double get proteinPercentage => protein / proteinGoal;
  double get fatPercentage => fat / fatGoal;
}

class NutritionSummary extends StatelessWidget {
  final int caloriesRemaining;
  final MacroNutrients macros;
  final VoidCallback onDetailsPressed;

  const NutritionSummary({
    super.key,
    required this.caloriesRemaining,
    required this.macros,
    required this.onDetailsPressed,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      decoration: BoxDecoration(
        color: theme.colorScheme.surfaceContainer,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildHeader(context),
          _buildCalorieRing(context),
          _buildMacronutrients(context),
        ],
      ),
    );
  }

  Widget _buildHeader(BuildContext context) {
    final theme = Theme.of(context);

    return Padding(
      padding: AppSpacing.a16,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Daily Nutrition',
            style: theme.textTheme.titleLarge?.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
          IconButton(
            onPressed: onDetailsPressed,
            icon: const Icon(Icons.info_outline),
            tooltip: 'Nutrition Details',
          ),
        ],
      ),
    );
  }

  Widget _buildCalorieRing(BuildContext context) {
    final theme = Theme.of(context);

    return Center(
      child: GestureDetector(
        onTap: onDetailsPressed,
        child: Container(
          padding: AppSpacing.a24,
          child: Stack(
            alignment: Alignment.center,
            children: [
              SizedBox(
                width: 160,
                height: 160,
                child: CircularProgressIndicator(
                  value: 0.7, // Calculate based on calories remaining
                  strokeWidth: 12,
                  backgroundColor: theme.colorScheme.surface,
                  valueColor: AlwaysStoppedAnimation<Color>(
                    theme.colorScheme.primary,
                  ),
                ),
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    '$caloriesRemaining',
                    style: theme.textTheme.headlineLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                      color: theme.colorScheme.onSurface,
                    ),
                  ),
                  Text(
                    'cal remaining',
                    style: theme.textTheme.bodyMedium?.copyWith(
                      color: theme.colorScheme.onSurface
                          .withAlpha((0.7 * 255).round()),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildMacronutrients(BuildContext context) {
    final theme = Theme.of(context);

    return Padding(
      padding: AppSpacing.a16,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Macronutrients',
            style: theme.textTheme.titleMedium?.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
          AppSpacing.vertical16,
          _buildMacroProgressBar(
            context,
            'Carbs',
            macros.carbsPercentage,
            '${macros.carbs.toInt()}g / ${macros.carbsGoal.toInt()}g',
            const Color(0xFF60A5FA), // Blue
          ),
          AppSpacing.vertical12,
          _buildMacroProgressBar(
            context,
            'Protein',
            macros.proteinPercentage,
            '${macros.protein.toInt()}g / ${macros.proteinGoal.toInt()}g',
            const Color(0xFFF87171), // Red
          ),
          AppSpacing.vertical12,
          _buildMacroProgressBar(
            context,
            'Fat',
            macros.fatPercentage,
            '${macros.fat.toInt()}g / ${macros.fatGoal.toInt()}g',
            const Color(0xFFFBBF24), // Yellow
          ),
        ],
      ),
    );
  }

  Widget _buildMacroProgressBar(
    BuildContext context,
    String label,
    double value,
    String details,
    Color color,
  ) {
    final theme = Theme.of(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              label,
              style: theme.textTheme.bodyMedium?.copyWith(
                color: theme.colorScheme.onSurface
                  ..withAlpha((0.7 * 255).round()),
              ),
            ),
            Text(
              details,
              style: theme.textTheme.bodySmall?.copyWith(
                color: theme.colorScheme.onSurface
                  ..withAlpha((0.7 * 255).round()),
              ),
            ),
          ],
        ),
        AppSpacing.vertical4,
        ClipRRect(
          borderRadius: BorderRadius.circular(4),
          child: LinearProgressIndicator(
            value: value.clamp(0.0, 1.0),
            backgroundColor: theme.colorScheme.surface,
            valueColor: AlwaysStoppedAnimation<Color>(color),
            minHeight: 8,
          ),
        ),
      ],
    );
  }
}

class MacroProgressPainter extends CustomPainter {
  final double progress;
  final Color color;
  final double strokeWidth;

  MacroProgressPainter({
    required this.progress,
    required this.color,
    this.strokeWidth = 8.0,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = color
      ..style = PaintingStyle.stroke
      ..strokeWidth = strokeWidth
      ..strokeCap = StrokeCap.round;

    final center = Offset(size.width / 2, size.height / 2);
    final radius = (size.width - strokeWidth) / 2;

    canvas.drawArc(
      Rect.fromCircle(center: center, radius: radius),
      -1.5708, // Start from top (90° = pi/2 = 1.5708 rad)
      progress * 6.28319, // 2*pi = 6.28319 rad
      false,
      paint,
    );
  }

  @override
  bool shouldRepaint(MacroProgressPainter oldDelegate) {
    return oldDelegate.progress != progress || oldDelegate.color != color;
  }
}
