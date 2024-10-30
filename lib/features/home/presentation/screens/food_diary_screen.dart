import 'package:flutter/material.dart';

class FoodDiaryScreen extends StatelessWidget {
  const FoodDiaryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Food Diary'),
      ),
      body: Center(
        child: const Text('Food Diary Screen'),
      ),
    );
  }
}
