import 'package:flutter/material.dart';

class InitialsAvatar extends StatelessWidget {
  final String name;
  final double size;
  final Color? backgroundColor;
  final Color? textColor;

  const InitialsAvatar({
    super.key,
    required this.name,
    this.size = 48,
    this.backgroundColor,
    this.textColor,
  });

  String getInitials() {
    List<String> names = name.split(' ');
    String initials = "";
    if (names.length > 0) {
      if (names.length >= 2) {
        initials = names[0][0] + names[1][0];
      } else {
        initials = names[0][0];
      }
    }
    return initials.toUpperCase();
  }

  Color getBackgroundColor() {
    if (backgroundColor != null) return backgroundColor!;

    // Generate a consistent color based on name
    final int hash = name.hashCode;
    final List<Color> colors = [
      Colors.blue,
      Colors.green,
      Colors.purple,
      Colors.orange,
      Colors.red,
      Colors.teal,
    ];
    return colors[hash.abs() % colors.length];
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        color: getBackgroundColor(),
        shape: BoxShape.circle,
      ),
      child: Center(
        child: Text(
          getInitials(),
          style: TextStyle(
            color: textColor ?? Colors.white,
            fontSize: size * 0.4,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}