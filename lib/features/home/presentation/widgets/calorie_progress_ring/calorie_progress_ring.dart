import 'package:flutter/material.dart';

class CalorieProgressRing extends StatelessWidget {
  final int caloriesRemaining;
  final double progress;
  final Color progressColor;
  final double size;

  const CalorieProgressRing({
    super.key,
    required this.caloriesRemaining,
    required this.progress,
    required this.progressColor,
    required this.size,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size,
      height: size,
      child: Stack(
        alignment: Alignment.center,
        children: [
          CircularProgressIndicator(
            value: progress,
            color: progressColor,
            backgroundColor: Colors.grey[200],
            strokeWidth: 10,
          ),
          Text(
            '$caloriesRemaining cal',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
