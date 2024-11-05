import 'package:flutter/material.dart';

class MockTeamUpdate {
  final String id;
  final String title;
  final String description;
  final DateTime timestamp;
  final String authorName;
  final String authorAvatar;

  MockTeamUpdate({
    required this.id,
    required this.title,
    required this.description,
    required this.timestamp,
    required this.authorName,
    required this.authorAvatar,
  });
}

class MockMeal {
  final String id;
  final String name;
  final String description;
  final TimeOfDay scheduledTime;
  final int calories;

  MockMeal({
    required this.id,
    required this.name,
    required this.description,
    required this.scheduledTime,
    required this.calories,
  });
}

class MockShiftStatus {
  final String id;
  final String status;
  final String station;
  final TimeOfDay startTime;
  final TimeOfDay endTime;

  MockShiftStatus({
    required this.id,
    required this.status,
    required this.station,
    required this.startTime,
    required this.endTime,
  });
}

class MockNutritionSummary {
  final int totalCalories;
  final int targetCalories;
  final double protein;
  final double carbs;
  final double fats;

  MockNutritionSummary({
    required this.totalCalories,
    required this.targetCalories,
    required this.protein,
    required this.carbs,
    required this.fats,
  });
}

class MockProvider {
  final String id;
  final String name;
  final String image;
  final double rating;
  final String distance;
  final bool isOpen;

  MockProvider({
    required this.id,
    required this.name,
    required this.image,
    required this.rating,
    required this.distance,
    required this.isOpen,
  });
}

// Mock Data
class MockData {
  static List<MockTeamUpdate> getTeamUpdates() {
    return [
      MockTeamUpdate(
        id: '1',
        title: 'New Station Assignment',
        description: 'Station 3 has been assigned new equipment',
        timestamp: DateTime.now().subtract(const Duration(hours: 2)),
        authorName: 'John Smith',
        authorAvatar: 'https://i.pravatar.cc/150?img=1',
      ),
      MockTeamUpdate(
        id: '2',
        title: 'Training Update',
        description: 'Mandatory safety training scheduled for next week',
        timestamp: DateTime.now().subtract(const Duration(hours: 4)),
        authorName: 'Sarah Johnson',
        authorAvatar: 'https://i.pravatar.cc/150?img=2',
      ),
    ];
  }

  static List<MockMeal> getMealSchedule() {
    return [
      MockMeal(
        id: '1',
        name: 'Breakfast',
        description: 'Oatmeal with fruits',
        scheduledTime: const TimeOfDay(hour: 7, minute: 0),
        calories: 350,
      ),
      MockMeal(
        id: '2',
        name: 'Lunch',
        description: 'Grilled chicken salad',
        scheduledTime: const TimeOfDay(hour: 12, minute: 30),
        calories: 450,
      ),
    ];
  }

  static MockShiftStatus getShiftStatus() {
    return MockShiftStatus(
      id: '1',
      status: 'On Duty',
      station: 'Station 3',
      startTime: const TimeOfDay(hour: 8, minute: 0),
      endTime: const TimeOfDay(hour: 20, minute: 0),
    );
  }

  static MockNutritionSummary getNutritionSummary() {
    return MockNutritionSummary(
      totalCalories: 1500,
      targetCalories: 2500,
      protein: 80,
      carbs: 150,
      fats: 50,
    );
  }

  static List<MockProvider> getLocalProviders() {
    return [
      MockProvider(
        id: '1',
        name: 'Healthy Eats',
        image: 'https://picsum.photos/200',
        rating: 4.5,
        distance: '0.5 miles',
        isOpen: true,
      ),
      MockProvider(
        id: '2',
        name: 'Fitness Foods',
        image: 'https://picsum.photos/201',
        rating: 4.2,
        distance: '1.2 miles',
        isOpen: true,
      ),
    ];
  }
}
