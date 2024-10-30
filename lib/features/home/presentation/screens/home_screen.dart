import 'package:firefit/features/commerce/presentation/providers/shopping_cart_provider.dart';
import 'package:firefit/features/home/presentation/providers/home_state.dart';
import 'package:firefit/features/home/presentation/widgets/calorie_progress_ring/calorie_progress_ring.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

final currentIndexProvider = StateProvider<int>((ref) => 0);

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  static final GlobalKey<ScaffoldState> _scaffoldKey =
      GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final homeState = ref.watch(homeStateProvider);
    final cartAsync = ref.watch(cartProvider);
    final currentIndex = ref.watch(currentIndexProvider);

    return Scaffold(
      key: _scaffoldKey,
      appBar: _buildAppBar(context, cartAsync),
      body: _buildBody(context, homeState),
      bottomNavigationBar:
          _buildBottomNavigationBar(context, ref, currentIndex),
      drawer: _buildDrawer(context),
    );
  }

  AppBar _buildAppBar(BuildContext context, AsyncValue cartAsync) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;

    return AppBar(
      leading: Padding(
        padding: const EdgeInsets.only(left: 8.0),
        child: GestureDetector(
          onTap: () {
            _scaffoldKey.currentState?.openDrawer();
          },
          child: ColorFiltered(
            colorFilter: isDarkMode
                ? ColorFilter.mode(Colors.white, BlendMode.srcATop)
                : ColorFilter.mode(Colors.transparent, BlendMode.srcATop),
            child: Image.asset(
              'assets/images/fots-logo-favicon-100x100.png',
              fit: BoxFit.contain,
              width: 40,
              height: 40,
            ),
          ),
        ),
      ),
      title: Text(
        'FireFit',
        style: Theme.of(context).textTheme.titleLarge?.copyWith(
              fontFamily: 'Geist Mono',
              fontWeight: FontWeight.bold,
            ),
      ),
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
            context.go('/search');
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

  BottomNavigationBar _buildBottomNavigationBar(
      BuildContext context, WidgetRef ref, int currentIndex) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;
    final backgroundColor = Theme.of(context).appBarTheme.backgroundColor;
    final selectedItemColor = isDarkMode ? Colors.lightBlueAccent : Colors.blue;
    final unselectedItemColor = isDarkMode ? Colors.white70 : Colors.black54;

    return BottomNavigationBar(
      currentIndex: currentIndex,
      backgroundColor: backgroundColor,
      selectedItemColor: selectedItemColor,
      unselectedItemColor: unselectedItemColor,
      onTap: (index) {
        ref.read(currentIndexProvider.notifier).state = index;
        switch (index) {
          case 0:
            context.go('/');
            break;
          case 1:
            context.go('/food-diary');
            break;
          case 2:
            context.go('/meal-plans');
            break;
          case 3:
            context.go('/providers');
            break;
          case 4:
            context.go('/chat');
            break;
          case 5:
            context.go('/profile');
            break;
        }
      },
      items: [
        BottomNavigationBarItem(
          icon: _buildIcon(Icons.home, currentIndex == 0, selectedItemColor),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: _buildIcon(Icons.book, currentIndex == 1, selectedItemColor),
          label: 'Diary',
        ),
        BottomNavigationBarItem(
          icon: _buildIcon(
              Icons.restaurant_menu, currentIndex == 2, selectedItemColor),
          label: 'Meal Plans',
        ),
        BottomNavigationBarItem(
          icon: _buildIcon(
              Icons.restaurant, currentIndex == 3, selectedItemColor),
          label: 'Providers',
        ),
        BottomNavigationBarItem(
          icon: _buildIcon(Icons.chat, currentIndex == 4, selectedItemColor),
          label: 'AI Chat',
        ),
        BottomNavigationBarItem(
          icon: _buildIcon(Icons.person, currentIndex == 4, selectedItemColor),
          label: 'Profile',
        ),
      ],
    );
  }

  Widget _buildIcon(IconData icon, bool isSelected, Color color) {
    return Container(
      decoration: isSelected
          ? BoxDecoration(
              color: color.withOpacity(0.2),
              shape: BoxShape.circle,
            )
          : null,
      padding: EdgeInsets.all(8),
      child: Icon(icon),
    );
  }

  Drawer _buildDrawer(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(child: Text('More Options')),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Settings'),
            onTap: () {
              context.go('/settings');
            },
          ),
          ListTile(
            leading: Icon(Icons.play_circle),
            title: Text('Media'),
            onTap: () {
              context.go('/media');
            },
          ),
          ListTile(
            leading: Icon(Icons.history),
            title: Text('Order History'),
            onTap: () {
              context.go('/order-history');
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
