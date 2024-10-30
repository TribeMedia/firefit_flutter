import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

final selectedDateProvider = StateProvider<DateTime>((ref) => DateTime.now());

final foodEntriesProvider =
    StateNotifierProvider<FoodEntriesNotifier, List<FoodEntry>>((ref) {
  return FoodEntriesNotifier();
});

class FoodEntry {
  final String id;
  final String name;
  final int calories;
  final String mealType;

  FoodEntry(
      {required this.id,
      required this.name,
      required this.calories,
      required this.mealType});
}

class FoodEntriesNotifier extends StateNotifier<List<FoodEntry>> {
  FoodEntriesNotifier()
      : super([
          FoodEntry(
              id: '1', name: 'Oatmeal', calories: 150, mealType: 'Breakfast'),
          FoodEntry(
              id: '2', name: 'Banana', calories: 105, mealType: 'Breakfast'),
          FoodEntry(
              id: '3',
              name: 'Grilled Chicken Salad',
              calories: 350,
              mealType: 'Lunch'),
          FoodEntry(id: '4', name: 'Apple', calories: 95, mealType: 'Snack'),
        ]);

  void addEntry(FoodEntry entry) {
    state = [...state, entry];
  }

  void removeEntry(String id) {
    state = state.where((entry) => entry.id != id).toList();
  }
}

class FoodDiaryScreen extends HookConsumerWidget {
  const FoodDiaryScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedDate = ref.watch(selectedDateProvider);
    final foodEntries = ref.watch(foodEntriesProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text('Food Diary'),
        actions: [
          IconButton(
            icon: Icon(Icons.calendar_today),
            onPressed: () => _selectDate(context, ref),
          ),
        ],
      ),
      body: Column(
        children: [
          _buildDateSelector(selectedDate, ref),
          _buildNutritionSummary(foodEntries),
          Expanded(
            child: _buildMealList(foodEntries, ref),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _showAddFoodDialog(context, ref),
        child: Icon(Icons.add),
      ),
    );
  }

  Widget _buildDateSelector(DateTime selectedDate, WidgetRef ref) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconButton(
            icon: Icon(Icons.chevron_left),
            onPressed: () {
              ref.read(selectedDateProvider.notifier).state =
                  selectedDate.subtract(Duration(days: 1));
            },
          ),
          Text(
            DateFormat('MMMM d, y').format(selectedDate),
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          IconButton(
            icon: Icon(Icons.chevron_right),
            onPressed: () {
              ref.read(selectedDateProvider.notifier).state =
                  selectedDate.add(Duration(days: 1));
            },
          ),
        ],
      ),
    );
  }

  Widget _buildNutritionSummary(List<FoodEntry> entries) {
    final totalCalories = entries.fold(0, (sum, entry) => sum + entry.calories);
    final goalCalories = 2000; // This should be user-specific in a real app

    return Card(
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Text('Calories',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            SizedBox(height: 8),
            ShadProgress(
              value: totalCalories / goalCalories,
              color: Colors.green,
            ),
            SizedBox(height: 8),
            Text('$totalCalories / $goalCalories kcal',
                style: TextStyle(fontSize: 16)),
          ],
        ),
      ),
    );
  }

  Widget _buildMealList(List<FoodEntry> entries, WidgetRef ref) {
    final mealTypes = ['Breakfast', 'Lunch', 'Dinner', 'Snack'];

    return ListView.builder(
      itemCount: mealTypes.length,
      itemBuilder: (context, index) {
        final mealType = mealTypes[index];
        final mealEntries =
            entries.where((entry) => entry.mealType == mealType).toList();

        return ExpansionTile(
          title: Text(mealType),
          children: [
            ...mealEntries.map((entry) => _buildFoodEntryTile(entry, ref)),
            ListTile(
              title: Text('Add ${mealType.toLowerCase()}'),
              leading: Icon(Icons.add),
              onTap: () => _showAddFoodDialog(context, ref, mealType: mealType),
            ),
          ],
        );
      },
    );
  }

  Widget _buildFoodEntryTile(FoodEntry entry, WidgetRef ref) {
    return ListTile(
      title: Text(entry.name),
      subtitle: Text('${entry.calories} kcal'),
      trailing: IconButton(
        icon: Icon(Icons.delete),
        onPressed: () {
          ref.read(foodEntriesProvider.notifier).removeEntry(entry.id);
        },
      ),
    );
  }

  Future<void> _selectDate(BuildContext context, WidgetRef ref) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: ref.read(selectedDateProvider),
      firstDate: DateTime(2020),
      lastDate: DateTime(2025),
    );
    if (picked != null) {
      ref.read(selectedDateProvider.notifier).state = picked;
    }
  }

  Future<void> _showAddFoodDialog(BuildContext context, WidgetRef ref,
      {String? mealType}) async {
    final TextEditingController nameController = TextEditingController();
    final TextEditingController caloriesController = TextEditingController();
    String selectedMealType = mealType ?? 'Breakfast';

    await showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Add Food'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: nameController,
                decoration: InputDecoration(labelText: 'Food Name'),
              ),
              TextField(
                controller: caloriesController,
                decoration: InputDecoration(labelText: 'Calories'),
                keyboardType: TextInputType.number,
              ),
              DropdownButton<String>(
                value: selectedMealType,
                items: ['Breakfast', 'Lunch', 'Dinner', 'Snack']
                    .map((String value) => DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        ))
                    .toList(),
                onChanged: (String? newValue) {
                  if (newValue != null) {
                    selectedMealType = newValue;
                  }
                },
              ),
            ],
          ),
          actions: [
            ShadButton(
              onPressed: () => Navigator.of(context).pop(),
              child: Text('Cancel'),
            ),
            ShadButton(
              onPressed: () {
                if (nameController.text.isNotEmpty &&
                    caloriesController.text.isNotEmpty) {
                  ref.read(foodEntriesProvider.notifier).addEntry(
                        FoodEntry(
                          id: DateTime.now().toString(),
                          name: nameController.text,
                          calories: int.parse(caloriesController.text),
                          mealType: selectedMealType,
                        ),
                      );
                  Navigator.of(context).pop();
                }
              },
              child: Text('Add'),
            ),
          ],
        );
      },
    );
  }
}
