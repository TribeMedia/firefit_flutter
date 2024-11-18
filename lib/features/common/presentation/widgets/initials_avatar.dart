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
          name.split(' ').map((e) => e.isNotEmpty ? e[0] : '').join(),
          style: const TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}