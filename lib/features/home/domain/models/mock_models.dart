import 'package:flutter/material.dart';

class QuickAction {
  final String id;
  final String title;
  final IconData icon;
  final String route;

  QuickAction({
    required this.id,
    required this.title,
    required this.icon,
    required this.route,
  });
}

class MockData {
  static List<QuickAction> getQuickActions() {
    return [
      QuickAction(
        id: '1',
        title: 'Log Meal',
        icon: Icons.restaurant,
        route: '/meal-log',
      ),
      QuickAction(
        id: '2',
        title: 'View Schedule',
        icon: Icons.calendar_today,
        route: '/schedule',
      ),
      QuickAction(
        id: '3',
        title: 'Team Chat',
        icon: Icons.chat,
        route: '/chat',
      ),
    ];
  }

  static List<Map<String, dynamic>> getTeamUpdates() {
    return [
      {
        'id': '1',
        'title': 'New Station Assignment',
        'description': 'Station 3 has been assigned new equipment',
        'timestamp': DateTime.now().subtract(const Duration(hours: 2)),
        'type': 'Equipment',
        'authorName': 'John Smith',
        'imageUrl': 'https://i.pravatar.cc/150?img=1',
      },
      {
        'id': '2',
        'title': 'Training Update',
        'description': 'Mandatory safety training scheduled for next week',
        'timestamp': DateTime.now().subtract(const Duration(hours: 4)),
        'type': 'Training',
        'authorName': 'Sarah Johnson',
        'imageUrl': 'https://i.pravatar.cc/150?img=2',
      },
    ];
  }

  static List<Map<String, dynamic>> getMealSchedule() {
    return [
      {
        'id': '1',
        'name': 'Breakfast',
        'mealType': 'Breakfast',
        'calories': 350,
        'time': DateTime.now().copyWith(hour: 7, minute: 0),
        'isCompleted': false,
      },
      {
        'id': '2',
        'name': 'Lunch',
        'mealType': 'Lunch',
        'calories': 450,
        'time': DateTime.now().copyWith(hour: 12, minute: 30),
        'isCompleted': false,
      },
    ];
  }

  static Map<String, dynamic> getNutritionSummary() {
    return {
      'protein': 80.0,
      'carbs': 150.0,
      'fat': 50.0,
      'proteinGoal': 180.0,
      'carbsGoal': 300.0,
      'fatGoal': 70.0,
    };
  }

  static List<Map<String, dynamic>> getLocalProviders() {
    return [
      {
        'id': '1',
        'name': 'Healthy Eats',
        'type': 'Restaurant',
        'imageUrl': 'https://picsum.photos/200',
        'rating': 4.5,
        'numberOfRatings': 128,
        'distance': '0.5 miles',
        'isOpen': true,
        'tags': ['Healthy', 'Organic'],
      },
      {
        'id': '2',
        'name': 'Fitness Foods',
        'type': 'Restaurant',
        'imageUrl': 'https://picsum.photos/201',
        'rating': 4.2,
        'numberOfRatings': 89,
        'distance': '1.2 miles',
        'isOpen': true,
        'tags': ['Meal Prep', 'Protein'],
      },
    ];
  }
}
