// lib/core/presentation/theme/app_spacing.dart

import 'package:flutter/material.dart';

/// A utility class that provides consistent spacing values throughout the app.
class AppSpacing {
  // Horizontal spacing
  static const horizontal4 = SizedBox(width: 4);
  static const horizontal8 = SizedBox(width: 8);
  static const horizontal12 = SizedBox(width: 12);
  static const horizontal16 = SizedBox(width: 16);
  static const horizontal20 = SizedBox(width: 20);
  static const horizontal24 = SizedBox(width: 24);
  static const horizontal32 = SizedBox(width: 32);
  static const horizontal40 = SizedBox(width: 40);
  static const horizontal48 = SizedBox(width: 48);

  // Vertical spacing
  static const vertical4 = SizedBox(height: 4);
  static const vertical8 = SizedBox(height: 8);
  static const vertical12 = SizedBox(height: 12);
  static const vertical16 = SizedBox(height: 16);
  static const vertical20 = SizedBox(height: 20);
  static const vertical24 = SizedBox(height: 24);
  static const vertical32 = SizedBox(height: 32);
  static const vertical40 = SizedBox(height: 40);
  static const vertical48 = SizedBox(height: 48);

  // Edge insets
  static const EdgeInsets zero = EdgeInsets.zero;

  // All edges
  static const EdgeInsets a4 = EdgeInsets.all(4);
  static const EdgeInsets a8 = EdgeInsets.all(8);
  static const EdgeInsets a12 = EdgeInsets.all(12);
  static const EdgeInsets a16 = EdgeInsets.all(16);
  static const EdgeInsets a20 = EdgeInsets.all(20);
  static const EdgeInsets a24 = EdgeInsets.all(24);
  static const EdgeInsets a32 = EdgeInsets.all(32);

  // Horizontal only
  static const EdgeInsets h4 = EdgeInsets.symmetric(horizontal: 4);
  static const EdgeInsets h8 = EdgeInsets.symmetric(horizontal: 8);
  static const EdgeInsets h12 = EdgeInsets.symmetric(horizontal: 12);
  static const EdgeInsets h16 = EdgeInsets.symmetric(horizontal: 16);
  static const EdgeInsets h20 = EdgeInsets.symmetric(horizontal: 20);
  static const EdgeInsets h24 = EdgeInsets.symmetric(horizontal: 24);
  static const EdgeInsets h32 = EdgeInsets.symmetric(horizontal: 32);

  // Vertical only
  static const EdgeInsets v4 = EdgeInsets.symmetric(vertical: 4);
  static const EdgeInsets v8 = EdgeInsets.symmetric(vertical: 8);
  static const EdgeInsets v12 = EdgeInsets.symmetric(vertical: 12);
  static const EdgeInsets v16 = EdgeInsets.symmetric(vertical: 16);
  static const EdgeInsets v20 = EdgeInsets.symmetric(vertical: 20);
  static const EdgeInsets v24 = EdgeInsets.symmetric(vertical: 24);
  static const EdgeInsets v32 = EdgeInsets.symmetric(vertical: 32);

  // Custom combinations
  static const EdgeInsets inputContent = EdgeInsets.symmetric(
    horizontal: 16,
    vertical: 12,
  );

  static const EdgeInsets buttonContent = EdgeInsets.symmetric(
    horizontal: 16,
    vertical: 12,
  );

  static const EdgeInsets cardContent = EdgeInsets.all(16);

  static const EdgeInsets dialogContent = EdgeInsets.all(24);

  static const EdgeInsets listTileContent = EdgeInsets.symmetric(
    horizontal: 16,
    vertical: 8,
  );

  // Helper methods
  static EdgeInsets only({
    double left = 0,
    double top = 0,
    double right = 0,
    double bottom = 0,
  }) {
    return EdgeInsets.only(
      left: left,
      top: top,
      right: right,
      bottom: bottom,
    );
  }

  static EdgeInsets symmetric({
    double horizontal = 0,
    double vertical = 0,
  }) {
    return EdgeInsets.symmetric(
      horizontal: horizontal,
      vertical: vertical,
    );
  }

  // Responsive spacing
  static double responsiveSpacing(BuildContext context, double baseSpacing) {
    final screenWidth = MediaQuery.of(context).size.width;
    if (screenWidth < 360) {
      return baseSpacing * 0.75; // Smaller devices
    } else if (screenWidth > 768) {
      return baseSpacing * 1.25; // Larger devices/tablets
    }
    return baseSpacing; // Default size
  }

  // Constants for component-specific spacing
  static const double appBarHeight = 56.0;
  static const double bottomNavBarHeight = 56.0;
  static const double fabSpacing = 16.0;
  static const double cardBorderRadius = 12.0;
  static const double buttonHeight = 40.0;
  static const double inputHeight = 40.0;
  static const double iconSize = 24.0;
  static const double avatarSize = 40.0;
  static const double badgeSize = 16.0;
}
