// lib/features/home/presentation/widgets/navigation/bottom_nav_bar.dart

import 'package:firefit/features/common/presentation/providers/navigation_state_provider.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class FireFitBottomNavBar extends ConsumerWidget {
  final int currentIndex;
  final Function(int) onTabSelected;

  const FireFitBottomNavBar({
    super.key,
    required this.currentIndex,
    required this.onTabSelected,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    //final isDarkMode = theme.brightness == Brightness.dark;

    return Container(
      decoration: BoxDecoration(
        color: theme.scaffoldBackgroundColor,
        border: Border(
          top: BorderSide(
            color: theme.colorScheme.surfaceContainer,
            width: 1,
          ),
        ),
      ),
      child: SafeArea(
        child: NavigationBar(
          height: 64,
          backgroundColor: Colors.transparent,
          indicatorColor: Colors.transparent,
          selectedIndex: currentIndex,
          onDestinationSelected: (index) =>
              _handleNavigation(context, ref, index),
          destinations: [
            _buildNavItem(
              context,
              icon: Icons.home_outlined,
              selectedIcon: Icons.home,
              label: 'Home',
              isSelected: currentIndex == 0,
            ),
            _buildNavItem(
              context,
              icon: Icons.restaurant_menu_outlined,
              selectedIcon: Icons.restaurant_menu,
              label: 'Menu',
              isSelected: currentIndex == 1,
            ),
            _buildNavItem(
              context,
              icon: Icons.menu_book_outlined,
              selectedIcon: Icons.menu_book,
              label: 'Meal Plans',
              isSelected: currentIndex == 2,
            ),
            _buildNavItem(
              context,
              icon: Icons.chat_outlined,
              selectedIcon: Icons.chat,
              label: 'Chat',
              isSelected: currentIndex == 3,
            ),
            _buildNavItem(
              context,
              icon: Icons.search_outlined,
              selectedIcon: Icons.search,
              label: 'Search',
              isSelected: currentIndex == 4,
            ),
          ],
        ),
      ),
    );
  }

  NavigationDestination _buildNavItem(
    BuildContext context, {
    required IconData icon,
    required IconData selectedIcon,
    required String label,
    required bool isSelected,
  }) {
    final theme = Theme.of(context);

    return NavigationDestination(
      icon: Icon(
        icon,
        color: isSelected
            ? theme.colorScheme.primary
            : theme.colorScheme.onSurface.withAlpha((0.7 * 255).round()),
      ),
      selectedIcon: Icon(
        selectedIcon,
        color: theme.colorScheme.primary,
      ),
      label: label,
    );
  }

  void _handleNavigation(BuildContext context, WidgetRef ref, int index) {
    onTabSelected(index);

    final navigationStateNotifier = ref.read(navigationStateProvider.notifier);
    final currentStack =
        navigationStateNotifier.getNavigationStack(currentIndex);
    navigationStateNotifier.updateNavigationStack(currentIndex, currentStack);

    final newStack = navigationStateNotifier.getNavigationStack(index);
    if (newStack.isNotEmpty) {
      context.go(newStack.last);
    } else {
      switch (index) {
        case 0:
          context.go('/');
          break;
        case 1:
          context.go('/menu');
          break;
        case 2:
          context.go('/meal-plans');
          break;
        case 3:
          context.go('/chat');
          break;
        case 4:
          context.go('/ai-assisted-search');
          break;
      }
    }
  }
}

extension NavigationBarThemeX on NavigationBarTheme {
  static NavigationBarThemeData of(BuildContext context) {
    final theme = Theme.of(context);
    return NavigationBarThemeData(
      height: 64,
      backgroundColor: Colors.transparent,
      indicatorColor: Colors.transparent,
      labelTextStyle: WidgetStateProperty.resolveWith((states) {
        final style = theme.textTheme.labelSmall!;
        if (states.contains(WidgetState.selected)) {
          return style.copyWith(
            color: theme.colorScheme.primary,
            fontWeight: FontWeight.w600,
          );
        }
        return style.copyWith(
          color: theme.colorScheme.onSurface.withAlpha((0.7 * 255).round()),
        );
      }),
      iconTheme: WidgetStateProperty.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return IconThemeData(
            color: theme.colorScheme.primary,
            size: 24,
          );
        }
        return IconThemeData(
          color: theme.colorScheme.onSurface.withAlpha((0.7 * 255).round()),
          size: 24,
        );
      }),
    );
  }
}
