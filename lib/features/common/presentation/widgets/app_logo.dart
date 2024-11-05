import 'package:flutter/material.dart';

class AppLogo extends StatelessWidget {
  final double size;
  final bool isDarkMode;
  final bool showText;

  const AppLogo({
    super.key,
    this.size = 32.0,
    this.isDarkMode = true,
    this.showText = false,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: size,
          height: size,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
          ),
          child: Stack(
            children: [
              // Logo background
              Container(
                decoration: BoxDecoration(
                  color: isDarkMode
                      ? const Color(0xFF1E293B) // slate-800
                      : const Color(0xFFF8FAFC), // slate-50
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              // SVG or Image logo
              Center(
                child: _buildLogoImage(),
              ),
            ],
          ),
        ),
        if (showText) ...[
          const SizedBox(width: 8),
          Text(
            'FireFit',
            style: TextStyle(
              fontFamily: 'Geist Mono',
              fontSize: size * 0.5,
              fontWeight: FontWeight.bold,
              color: isDarkMode
                  ? const Color(0xFFF8FAFC) // slate-50
                  : const Color(0xFF0F172A), // slate-900
              letterSpacing: -0.5,
            ),
          ),
        ],
      ],
    );
  }

  Widget _buildLogoImage() {
      // Fallback to PNG if SVG is not available
      return Image.asset(
        'assets/images/fots-logo-favicon-100x100.png',
        width: size * 1.0,
        height: size * 1.0,
        color: isDarkMode ? Colors.white : Colors.black,
        colorBlendMode: BlendMode.srcIn,
      );
  }
}

/// Extension to provide easy access to logo variants
extension AppLogoVariants on AppLogo {
  /// Small logo variant (24x24)
  static Widget small({bool isDarkMode = true, bool showText = false}) {
    return AppLogo(
      size: 24,
      isDarkMode: isDarkMode,
      showText: showText,
    );
  }

  /// Medium logo variant (32x32)
  static Widget medium({bool isDarkMode = true, bool showText = false}) {
    return AppLogo(
      size: 32,
      isDarkMode: isDarkMode,
      showText: showText,
    );
  }

  /// Large logo variant (48x48)
  static Widget large({bool isDarkMode = true, bool showText = false}) {
    return AppLogo(
      size: 48,
      isDarkMode: isDarkMode,
      showText: showText,
    );
  }

  /// Extra large logo variant (64x64)
  static Widget extraLarge({bool isDarkMode = true, bool showText = false}) {
    return AppLogo(
      size: 64,
      isDarkMode: isDarkMode,
      showText: showText,
    );
  }
}

/// Semantic constant sizes for the logo
class AppLogoSize {
  static const double small = 24.0;
  static const double medium = 32.0;
  static const double large = 48.0;
  static const double extraLarge = 64.0;
}
