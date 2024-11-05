import 'package:firefit/features/common/presentation/providers.dart';
import 'package:firefit/features/common/presentation/screens/error_screen.dart';
import 'package:firefit/features/home/domain/models/mock_provider.dart';
import 'package:firefit/features/home/domain/models/mock_types.dart';
import 'package:firefit/features/home/presentation/providers/home_state.dart';
import 'package:firefit/features/home/presentation/widgets/app_header.dart';
import 'package:firefit/features/home/presentation/widgets/local_providers_panel.dart';
import 'package:firefit/features/home/presentation/widgets/meal_schedule.dart';
import 'package:firefit/features/home/presentation/widgets/navigation/app_drawer.dart';
import 'package:firefit/features/home/presentation/widgets/navigation/bottom_nav_bar.dart';
import 'package:firefit/features/home/presentation/widgets/nutrition_summary.dart';
import 'package:firefit/features/home/presentation/widgets/quick_actions_carousel.dart';
import 'package:firefit/features/home/presentation/widgets/shift_status_panel.dart';
import 'package:firefit/features/home/presentation/widgets/team_updates.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  static final GlobalKey<ScaffoldState> _scaffoldKey =
      GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final homeStateValue = ref.watch(homeStateProvider);
    final currentIndex = ref.watch(currentIndexProvider);

    return homeStateValue.when(
      data: (homeState) {
        final homeLoading = homeState as HomeStateLoaded;
        final nutritionSummary = homeLoading.nutritionSummary;
        final mealSchedule = homeLoading.mealSchedule;
        final teamUpdates = homeLoading.teamUpdates;
        final localProviders = homeLoading.localProviders;

        return Scaffold(
          key: _scaffoldKey,
          appBar: AppHeader(
            scaffoldKey: _scaffoldKey,
            onNotificationTap: () => _handleNotifications(context),
            onSearchTap: () => _handleSearch(context),
          ),
          body: RefreshIndicator(
            onRefresh: () => _refreshHomeData(ref),
            child: CustomScrollView(
              slivers: [
                SliverToBoxAdapter(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 16),
                        ShiftStatusPanel(
                          shiftStatus: ShiftStatus.onDuty,
                          nextShiftTime:
                              DateTime.now().add(const Duration(hours: 8)),
                          onStatusChange: (status) =>
                              _handleShiftStatusChange(ref, status),
                        ),
                        const SizedBox(height: 24),
                        QuickActionsCarousel(
                          onActionSelected: (action) =>
                              _handleQuickAction(context, action),
                        ),
                        const SizedBox(height: 24),
                        NutritionSummary(
                          caloriesRemaining: 700,
                          macros: MacroNutrients(
                            carbs: nutritionSummary['carbs'],
                            protein: nutritionSummary['protein'],
                            fat: nutritionSummary['fat'],
                            carbsGoal: nutritionSummary['carbsGoal'],
                            proteinGoal: nutritionSummary['proteinGoal'],
                            fatGoal: nutritionSummary['fatGoal'],
                          ),
                          onDetailsPressed: () =>
                              _showNutritionDetails(context),
                        ),
                        const SizedBox(height: 24),
                        MealSchedule(
                          meals: mealSchedule
                              .map((m) => Meal(
                                    id: m['id'],
                                    name: m['name'],
                                    mealType: m['mealType'],
                                    calories: m['calories'],
                                    time: m['time'],
                                    isCompleted: m['isCompleted'],
                                  ))
                              .toList(),
                          onMealTap: (meal) => _handleMealTap(context, meal),
                          onAddMeal: () => _handleAddMeal(context),
                        ),
                        const SizedBox(height: 24),
                        TeamUpdates(
                          updates: teamUpdates
                              .map((u) => TeamUpdate(
                                    id: u['id'],
                                    title: u['title'],
                                    description: u['description'],
                                    timestamp: u['timestamp'],
                                    type: TeamUpdateType.mealPlan,
                                    authorName: u['authorName'],
                                    authorImageUrl: u['imageUrl'],
                                  ))
                              .toList(),
                          onUpdateTap: (update) =>
                              _handleTeamUpdate(context, update),
                        ),
                        const SizedBox(height: 24),
                        LocalProvidersPanel(
                          providers: localProviders
                              .map((p) => MockProvider(
                                    id: p['id'],
                                    name: p['name'],
                                    type: p['type'],
                                    imageUrl: p['imageUrl'],
                                    rating: p['rating'],
                                    numberOfRatings: p['numberOfRatings'],
                                    distance: p['distance'],
                                    isOpen: p['isOpen'],
                                    tags: List<String>.from(p['tags']),
                                  ))
                              .toList(),
                          onProviderTap: (provider) =>
                              _handleProviderTap(context, provider),
                        ),
                        const SizedBox(height: 32),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          bottomNavigationBar: FireFitBottomNavBar(
            currentIndex: currentIndex,
            onTabSelected: (index) => _handleTabSelection(context, ref, index),
          ),
          drawer: AppDrawer(),
        );
      },
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (error, _) =>
          ErrorScreen(errorMessage: error.toString(), onRetry: () {}),
    );
  }

  Future<void> _refreshHomeData(WidgetRef ref) async {
    await ref.read(homeStateProvider.notifier).refreshData();
  }

  void _handleShiftStatusChange(WidgetRef ref, ShiftStatus status) {
    ref.read(homeStateProvider.notifier).updateShiftStatus(status);
  }

  void _handleQuickAction(BuildContext context, QuickAction action) {
    // Handle quick action selection
  }

  void _showNutritionDetails(BuildContext context) {
    // Show nutrition details modal
  }

  void _handleMealTap(BuildContext context, Meal meal) {
    // Navigate to meal details
  }

  void _handleAddMeal(BuildContext context) {
    // Show add meal dialog
  }

  void _handleTeamUpdate(BuildContext context, TeamUpdate update) {
    // Handle team update interaction
  }

  void _handleProviderTap(BuildContext context, MockProvider provider) {
    // Navigate to provider details
  }

  void _handleTabSelection(BuildContext context, WidgetRef ref, int index) {
    // Handle bottom navigation tab selection
  }

  void _handleNotifications(BuildContext context) {
    // Show notifications
  }

  void _handleSearch(BuildContext context) {
    // Show search interface
  }
}
