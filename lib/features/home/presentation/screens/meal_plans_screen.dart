import 'package:flutter/material.dart';

class MealPlansScreen extends StatelessWidget {
  const MealPlansScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Meal Plans'),
      ),
      body: Center(
        child: const Text('Meal Plans Screen'),
      ),
    );
  }
}
