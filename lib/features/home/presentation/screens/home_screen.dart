import 'package:firefit/features/commerce/presentation/providers/shopping_cart_provider.dart';
import 'package:firefit/features/home/presentation/providers/home_state.dart';
import 'package:firefit/features/home/presentation/widgets/calorie_progress_ring/calorie_progress_ring.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final homeState = ref.watch(homeStateProvider);
    final cartAsync = ref.watch(cartProvider);

    return Scaffold(
      appBar: _buildAppBar(context, cartAsync),
      body: _buildBody(context, homeState),
      bottomNavigationBar: _buildBottomNavigationBar(context),
      drawer: _buildDrawer(context),
    );
  }

  AppBar _buildAppBar(BuildContext context, AsyncValue cartAsync) {
    return AppBar(
      leading: Image.asset('assets/images/fots-logo-color.png'),
      title: Text('FireFit', style: Theme.of(context).textTheme.titleLarge),
      actions: [
        IconButton(
          icon: Icon(Icons.notifications),
          onPressed: () {
            // Handle notifications
          },
        ),
        IconButton(
          icon: Icon(Icons.search),
          onPressed: () {
            // Open food search
          },
        ),
        _buildCartIcon(context, cartAsync),
      ],
    );
  }

  Widget _buildCartIcon(BuildContext context, AsyncValue cartAsync) {
    return cartAsync.when(
      data: (model) => Stack(
        alignment: Alignment.center,
        children: [
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {
              context.go('/shopping-cart');
            },
          ),
          if (model.items.isNotEmpty)
            Positioned(
              right: 8,
              top: 8,
              child: _buildCartBadge(model.items.length),
            ),
        ],
      ),
      loading: () => SizedBox.shrink(),
      error: (_, __) => SizedBox.shrink(),
    );
  }

  Widget _buildCartBadge(int itemCount) {
    return Container(
      padding: EdgeInsets.all(2),
      decoration: BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.circular(10),
      ),
      constraints: BoxConstraints(
        minWidth: 16,
        minHeight: 16,
      ),
      child: Text(
        '$itemCount',
        style: TextStyle(
          color: Colors.white,
          fontSize: 10,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }

  Widget _buildBody(BuildContext context, HomeState homeState) {
    return CustomScrollView(
      slivers: [
        SliverPadding(
          padding: const EdgeInsets.all(16.0),
          sliver: SliverList(
            delegate: SliverChildListDelegate([
              CalorieProgressRing(
                caloriesRemaining: homeState.caloriesRemaining,
                progress: homeState.calorieProgress,
                progressColor: Theme.of(context).colorScheme.primary,
                size: 180,
              ),
              SizedBox(height: 24),
              _buildMacronutrients(),
              SizedBox(height: 24),
              _buildQuickAddMeals(),
              SizedBox(height: 24),
              _buildTodaysMealPlan(),
            ]),
          ),
        ),
      ],
    );
  }

  BottomNavigationBar _buildBottomNavigationBar(BuildContext context) {
    final brightness = MediaQuery.of(context).platformBrightness;
    final iconBackground =
        brightness == Brightness.light ? Color(0xFF1E293B) : Color(0xFFF8FAFC);

    return BottomNavigationBar(
      currentIndex: 0,
      onTap: (index) {
        switch (index) {
          case 1:
            context.go('/food-diary');
            break;
          case 2:
            context.go('/meal-plans');
            break;
          case 3:
            context.go('/chat');
            break;
          case 4:
            context.go('/profile');
            break;
        }
      },
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
          backgroundColor: iconBackground,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.book),
          label: 'Diary',
          backgroundColor: iconBackground,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.restaurant_menu),
          label: 'Meal Plans',
          backgroundColor: iconBackground,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.chat),
          label: 'AI Chat',
          backgroundColor: iconBackground,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'Profile',
          backgroundColor: iconBackground,
        ),
      ],
    );
  }

  Drawer _buildDrawer(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(child: Text('More Options')),
          ListTile(
            title: Text('Settings'),
            onTap: () {
              context.go('/settings');
            },
          ),
          ListTile(
            title: Text('Educational Content'),
            onTap: () {
              // Navigate to educational content
            },
          ),
          ListTile(
            title: Text('Food Ordering'),
            onTap: () {
              // Navigate to food ordering
            },
          ),
        ],
      ),
    );
  }

  Widget _buildMacronutrients() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Macronutrients',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        SizedBox(height: 8),
        _buildMacroProgressBar('Carbs', 0.8, Colors.blue),
        SizedBox(height: 8),
        _buildMacroProgressBar('Protein', 0.6, Colors.red),
        SizedBox(height: 8),
        _buildMacroProgressBar('Fat', 0.4, Colors.yellow),
      ],
    );
  }

  Widget _buildMacroProgressBar(String label, double value, Color color) {
    return Row(
      children: [
        Expanded(flex: 2, child: Text(label)),
        Expanded(
          flex: 8,
          child: ShadProgress(value: value, color: color),
        ),
      ],
    );
  }

  Widget _buildQuickAddMeals() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Quick Add',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        SizedBox(height: 8),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _buildMealButton('Breakfast', Icons.free_breakfast),
            _buildMealButton('Lunch', Icons.lunch_dining),
            _buildMealButton('Dinner', Icons.dinner_dining),
            _buildMealButton('Snacks', Icons.apple),
          ],
        ),
      ],
    );
  }

  Widget _buildMealButton(String label, IconData icon) {
    return Column(
      children: [
        ShadButton(
          onPressed: () {
            // Handle meal addition
          },
          child: Icon(icon),
        ),
        SizedBox(height: 4),
        Text(label),
      ],
    );
  }

  Widget _buildTodaysMealPlan() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Today\'s Meal Plan',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        SizedBox(height: 8),
        Card(
          child: ListTile(
            leading: Icon(Icons.restaurant),
            title: Text('Grilled Chicken Salad'),
            subtitle: Text('Lunch - 450 calories'),
            trailing: Icon(Icons.chevron_right),
            onTap: () {
              // Open meal details
            },
          ),
        ),
      ],
    );
  }
}
