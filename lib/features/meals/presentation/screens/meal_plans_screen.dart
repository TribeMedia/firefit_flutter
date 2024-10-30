import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

final selectedWeekProvider = StateProvider<DateTime>((ref) {
  final now = DateTime.now();
  return DateTime(now.year, now.month, now.day - now.weekday + 1);
});

final mealPlansProvider =
    StateNotifierProvider<MealPlansNotifier, Map<String, List<Meal>>>((ref) {
  return MealPlansNotifier();
});

class Meal {
  final String id;
  final String name;
  final int calories;
  final String mealType;

  Meal(
      {required this.id,
      required this.name,
      required this.calories,
      required this.mealType});
}

class MealPlansNotifier extends StateNotifier<Map<String, List<Meal>>> {
  MealPlansNotifier()
      : super({
          '2023-05-01': [
            Meal(
                id: '1',
                name: 'Oatmeal with Berries',
                calories: 300,
                mealType: 'Breakfast'),
            Meal(
                id: '2',
                name: 'Grilled Chicken Salad',
                calories: 400,
                mealType: 'Lunch'),
            Meal(
                id: '3',
                name: 'Salmon with Roasted Vegetables',
                calories: 500,
                mealType: 'Dinner'),
          ],
          '2023-05-02': [
            Meal(
                id: '4',
                name: 'Greek Yogurt with Honey',
                calories: 250,
                mealType: 'Breakfast'),
            Meal(
                id: '5',
                name: 'Turkey Sandwich',
                calories: 350,
                mealType: 'Lunch'),
            Meal(
                id: '6',
                name: 'Vegetarian Stir Fry',
                calories: 400,
                mealType: 'Dinner'),
          ],
        });

  void addMeal(String date, Meal meal) {
    final updatedMeals = {...state};
    if (updatedMeals.containsKey(date)) {
      updatedMeals[date] = [...updatedMeals[date]!, meal];
    } else {
      updatedMeals[date] = [meal];
    }
    state = updatedMeals;
  }

  void removeMeal(String date, String mealId) {
    final updatedMeals = {...state};
    if (updatedMeals.containsKey(date)) {
      updatedMeals[date] =
          updatedMeals[date]!.where((meal) => meal.id != mealId).toList();
    }
    state = updatedMeals;
  }
}

class MealPlansScreen extends HookConsumerWidget {
  const MealPlansScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedWeek = ref.watch(selectedWeekProvider);
    final mealPlans = ref.watch(mealPlansProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Meal Plans'),
        actions: [
          ShadButton(
            onPressed: () => _selectWeek(context, ref),
            child: const Icon(Icons.calendar_today),
          ),
        ],
      ),
      body: Column(
        children: [
          _buildWeekSelector(selectedWeek, ref),
          Expanded(
            child: _buildWeeklyMealPlan(context, selectedWeek, mealPlans, ref),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _showAddMealDialog(context, ref, selectedWeek),
        child: const Icon(Icons.add),
      ),
    );
  }

  Widget _buildWeekSelector(DateTime selectedWeek, WidgetRef ref) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ShadButton(
            onPressed: () {
              ref.read(selectedWeekProvider.notifier).state =
                  selectedWeek.subtract(const Duration(days: 7));
            },
            child: const Icon(Icons.chevron_left),
          ),
          Text(
            'Week of ${DateFormat('MMM d').format(selectedWeek)}',
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          ShadButton(
            onPressed: () {
              ref.read(selectedWeekProvider.notifier).state =
                  selectedWeek.add(const Duration(days: 7));
            },
            child: const Icon(Icons.chevron_right),
          ),
        ],
      ),
    );
  }

  Widget _buildWeeklyMealPlan(BuildContext context, DateTime selectedWeek,
      Map<String, List<Meal>> mealPlans, WidgetRef ref) {
    return ShadAccordion<String>.multiple(
      children: List.generate(7, (index) {
        final date = selectedWeek.add(Duration(days: index));
        final dateString = DateFormat('yyyy-MM-dd').format(date);
        final meals = mealPlans[dateString] ?? [];

        return ShadAccordionItem<String>(
          value: dateString,
          title: Text(DateFormat('EEEE, MMM d').format(date)),
          child: Column(
            children: [
              ...meals.map((meal) => _buildMealTile(meal, dateString, ref)),
              ShadButton(
                onPressed: () => _showAddMealDialog(context, ref, date),
                child: const Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.add),
                    SizedBox(width: 8),
                    Text('Add meal'),
                  ],
                ),
              ),
            ],
          ),
        );
      }),
    );
  }

  Widget _buildMealTile(Meal meal, String date, WidgetRef ref) {
    return ListTile(
      title: Text(meal.name),
      subtitle: Text('${meal.calories} kcal - ${meal.mealType}'),
      trailing: ShadButton(
        onPressed: () {
          ref.read(mealPlansProvider.notifier).removeMeal(date, meal.id);
        },
        child: const Icon(Icons.delete),
      ),
    );
  }

  Future<void> _selectWeek(BuildContext context, WidgetRef ref) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: ref.read(selectedWeekProvider),
      firstDate: DateTime(2020),
      lastDate: DateTime(2025),
    );
    if (picked != null) {
      final selectedWeek =
          DateTime(picked.year, picked.month, picked.day - picked.weekday + 1);
      ref.read(selectedWeekProvider.notifier).state = selectedWeek;
    }
  }

  Future<void> _showAddMealDialog(
      BuildContext context, WidgetRef ref, DateTime date) async {
    final TextEditingController nameController = TextEditingController();
    final TextEditingController caloriesController = TextEditingController();
    final ValueNotifier<String> selectedMealType = ValueNotifier('Breakfast');

    await showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          child: ShadAlert(
            title: const Text('Add Meal'),
            description: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                ShadInput(
                  controller: nameController,
                  placeholder: const Text('Meal Name'),
                ),
                const SizedBox(height: 16),
                ShadInput(
                  controller: caloriesController,
                  placeholder: const Text('Calories'),
                  keyboardType: TextInputType.number,
                ),
                const SizedBox(height: 16),
                ValueListenableBuilder<String>(
                  valueListenable: selectedMealType,
                  builder: (context, value, child) {
                    return DropdownButton2<String>(
                        onChanged: (String? newValue) {
                          if (newValue != null) {
                            selectedMealType.value = newValue;
                          }
                        },
                        buttonStyleData: const ButtonStyleData(
                          height: 40,
                          width: 140,
                        ),
                        dropdownStyleData: const DropdownStyleData(
                          maxHeight: 200,
                        ),
                        valueListenable: ValueNotifier<String>(value),
                        items: List.from(
                          ['Breakfast', 'Lunch', 'Dinner', 'Snack']
                              .map((String item) => DropdownMenuItem<String>(
                                    value: item,
                                    child: Text(item),
                                  ))
                              .toList(),
                        ));
                  },
                ),
                const SizedBox(height: 24),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    ShadButton.outline(
                      onPressed: () => Navigator.of(context).pop(),
                      child: const Text('Cancel'),
                    ),
                    const SizedBox(width: 8),
                    ShadButton(
                      onPressed: () {
                        if (nameController.text.isNotEmpty &&
                            caloriesController.text.isNotEmpty) {
                          final dateString =
                              DateFormat('yyyy-MM-dd').format(date);
                          ref.read(mealPlansProvider.notifier).addMeal(
                                dateString,
                                Meal(
                                  id: DateTime.now().toString(),
                                  name: nameController.text,
                                  calories: int.parse(caloriesController.text),
                                  mealType: selectedMealType.value,
                                ),
                              );
                          Navigator.of(context).pop();
                        }
                      },
                      child: const Text('Add'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
