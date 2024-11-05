import 'package:flutter/material.dart';

class SampleHomeData {
  final Map<String, dynamic> currentShift = {
    'id': '1',
    'startTime': TimeOfDay(hour: 8, minute: 0),
    'endTime': TimeOfDay(hour: 16, minute: 0),
    'station': 'Station 1',
    'role': 'Firefighter',
  };

  final Map<String, dynamic> nextShift = {
    'id': '2',
    'startTime': TimeOfDay(hour: 16, minute: 0),
    'endTime': TimeOfDay(hour: 0, minute: 0),
    'station': 'Station 2',
    'role': 'EMT',
  };

  final List<Map<String, dynamic>> teamUpdates = [
    {
      'id': '1',
      'title': 'New Equipment Training',
      'description': 'Mandatory training session for new equipment',
      'timestamp': DateTime.now(),
      'priority': 'high',
    },
    {
      'id': '2',
      'title': 'Schedule Change',
      'description': 'Updated rotation schedule for next month',
      'timestamp': DateTime.now().subtract(const Duration(hours: 2)),
      'priority': 'medium',
    },
  ];

  final Map<String, dynamic> nutritionGoals = {
    'calories': 2500,
    'protein': 180,
    'carbs': 300,
    'fats': 70,
  };

  final Map<String, dynamic> nutritionIntake = {
    'calories': 1800,
    'protein': 120,
    'carbs': 220,
    'fats': 45,
  };

  final List<Map<String, dynamic>> plannedMeals = [
    {
      'id': '1',
      'name': 'Breakfast',
      'time': TimeOfDay(hour: 7, minute: 0),
      'calories': 500,
      'completed': true,
    },
    {
      'id': '2',
      'name': 'Lunch',
      'time': TimeOfDay(hour: 12, minute: 0),
      'calories': 700,
      'completed': false,
    },
    {
      'id': '3',
      'name': 'Dinner',
      'time': TimeOfDay(hour: 18, minute: 0),
      'calories': 800,
      'completed': false,
    },
  ];

  final List<Map<String, dynamic>> quickActions = [
    {
      'id': '1',
      'title': 'Log Meal',
      'icon': Icons.restaurant,
      'route': '/meal-log',
    },
    {
      'id': '2',
      'title': 'View Schedule',
      'icon': Icons.calendar_today,
      'route': '/schedule',
    },
    {
      'id': '3',
      'title': 'Team Chat',
      'icon': Icons.chat,
      'route': '/chat',
    },
  ];

  final List<Map<String, dynamic>> localProviders = [
    {
      'id': '1',
      'name': 'Healthy Eats',
      'type': 'Restaurant',
      'distance': '0.5 miles',
      'rating': 4.5,
    },
    {
      'id': '2',
      'name': 'Fitness Center',
      'type': 'Gym',
      'distance': '1.2 miles',
      'rating': 4.8,
    },
  ];
}
