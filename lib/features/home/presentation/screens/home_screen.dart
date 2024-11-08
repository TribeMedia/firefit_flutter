import 'package:core/core.dart';
import 'package:firefit/features/commerce/providers/providers.dart';
import 'package:firefit/features/common/presentation/screens/error_screen.dart';
import 'package:firefit/features/common/presentation/widgets/initials_avatar.dart';
import 'package:firefit/features/home/presentation/providers/home_state.dart';
import 'package:firefit/features/menu/presentation/widgets/featured_item_menu_card.dart';
import 'package:firefit/features/menu/providers.dart';
import 'package:firefit/features/teams/presentation/widgets/team_update_card.dart';
import 'package:firefit/features/teams/providers.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

class HomeScreen extends HookConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final homeState = ref.watch(homeStateProvider);
    final menuState = ref.watch(menuControllerProvider(globalProviderId));
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;

    return homeState.when(
      data: (homeStateModel) {
        if (homeStateModel.isLoading) {
          return const Scaffold(body: Center(child: CircularProgressIndicator()));
        } else if (homeStateModel.error != null) {
          return Scaffold(body: Center(child: Text('Error: ${homeStateModel.error}')));
        }

        return menuState.when(
          data: (menuScreenViewModel) {
            if (menuScreenViewModel.isLoading) {
              return const Scaffold(body: Center(child: CircularProgressIndicator()));
            } else if (menuScreenViewModel.error != null) {
              return Scaffold(body: Center(child: Text('Error: ${menuScreenViewModel.error}')));
            }

            return Scaffold(
              body: HomeContent(
                homeStateModel: homeStateModel,
                menuScreenViewModel: menuScreenViewModel,
              ),
              bottomNavigationBar: Container(
                decoration: BoxDecoration(
                  color: theme.scaffoldBackgroundColor,
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 20,
                      color: Colors.black.withOpacity(.1),
                    )
                  ],
                ),
                child: SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
                    child: GNav(
                      rippleColor: theme.colorScheme.primary.withOpacity(0.2),
                      hoverColor: theme.colorScheme.primary.withOpacity(0.1),
                      gap: 8,
                      activeColor: theme.colorScheme.primary,
                      iconSize: 24,
                      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                      duration: Duration(milliseconds: 400),
                      tabBackgroundColor: theme.colorScheme.primary.withOpacity(0.1),
                      color: theme.textTheme.bodyLarge?.color,
                      tabs: [
                        GButton(
                          icon: Icons.home,
                          text: 'Home',
                        ),
                        GButton(
                          icon: Icons.restaurant_menu,
                          text: 'Menu',
                        ),
                        GButton(
                          icon: Icons.business,
                          text: 'Station',
                        ),
                        GButton(
                          icon: Icons.person,
                          text: 'Profile',
                        ),
                        GButton(
                          icon: Icons.settings,
                          text: 'Settings',
                        ),
                      ],
                      selectedIndex: 0,
                      onTabChange: (index) {
                        switch (index) {
                          case 0:
                            context.go('/');
                            break;
                          case 1:
                            context.go('/menu');
                            break;
                          case 3:
                            context.go('/station');
                            break;
                          case 4:
                            context.go('/profile');
                            break;
                          case 5:
                            context.go('/settings');
                            break;
                        }
                      },
                    ),
                  ),
                ),
              ),
            );
          },
          loading: () => const Center(child: CircularProgressIndicator()),
          error: (error, stack) => Center(child: Text('Error: $error')),
        );
      },
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (error, stack) => Center(child: Text('Error: $error')),
    );
  }
}

class HomeContent extends HookConsumerWidget {
  final HomeStateModel homeStateModel;
  final MenuViewModel menuScreenViewModel;

  const HomeContent({
    super.key,
    required this.homeStateModel,
    required this.menuScreenViewModel,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = ref.watch(menuControllerProvider(globalProviderId).notifier);
    final featuredMenuItems = controller.featuredMenuItems
      ..sort((a, b) => b.createdAt.compareTo(a.createdAt))
      ..take(5);

    if (homeStateModel.firstResponder == null) {
      return ErrorScreen(
        errorMessage: 'No first responder found',
        onRetry: () => context.go('/'),
      );
    }

    if (homeStateModel.firstResponder!.currentStation == null) {
      return ErrorScreen(
        errorMessage: 'No current station found',
        onRetry: () => context.go('/'),
      );
    }

    return CustomScrollView(
      slivers: [
        _buildSliverAppBar(context,
            homeStateModel.firstResponder!.currentStation!,
            homeStateModel.user!),
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildFeaturedMenuItems(context, featuredMenuItems),
                const SizedBox(height: 24),
                _buildTeamUpdates(context, ref),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildSliverAppBar(BuildContext context, Station station, User user) {
    return SliverAppBar(
      actions: [
        IconButton(
          icon: const Icon(Icons.notifications),
          onPressed: () {
            // Handle notifications
          },
        ),
        user.avatarUrl != null ? ShadAvatar(user.avatarUrl!) : InitialsAvatar(name: user.displayName!),
      ],
      leading: Padding(
        padding: const EdgeInsets.fromLTRB(8.0, 0, 0, 0),
        child: ColorFiltered(
            colorFilter: ColorFilter.mode(
                Theme.of(context).brightness == Brightness.dark
                    ? Colors.white
                    : Colors.black,
                BlendMode.srcATop
            ),
            child: IconButton(
                onPressed: (){},
                icon: Image.asset('assets/images/fots-logo-favicon-100x100.png', height: 60, width: 60,),
            )),
      ),
      expandedHeight: 200.0,
      floating: false,
      pinned: true,
      flexibleSpace: FlexibleSpaceBar(
        title: Text(
          station.name,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        background: Stack(
          fit: StackFit.expand,
          children: [
            Image.network(
              station.coverUrl ?? '',
              fit: BoxFit.cover,
            ),
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.transparent,
                    Colors.black.withOpacity(0.7),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildFeaturedMenuItems(BuildContext context, List<MenuItem> featuredItems) {
    if (featuredItems.isEmpty) {
      return const Center(child: Text('No featured items found'));
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Featured Menu Items',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        const SizedBox(height: 16),
        ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: featuredItems.length,
          itemBuilder: (context, index) {
            final item = featuredItems[index];
            return Padding(
              padding: const EdgeInsets.only(bottom: 16.0),
              child: GestureDetector(
                onTap: () => context.go('/menu/item/${item.id}'),
                child: Container(
                  height: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.black,
                  ),
                  clipBehavior: Clip.hardEdge,
                  child: Stack(
                    fit: StackFit.expand,
                    children: [
                      Image.network(
                        item.imageUrl ?? '',
                        fit: BoxFit.cover,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Colors.transparent,
                              Colors.black.withOpacity(0.7),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 16,
                        right: 16,
                        bottom: 16,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              item.name,
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 4),
                            Text(
                              item.notes ?? '',
                              style: TextStyle(
                                color: Colors.white.withOpacity(0.8),
                                fontSize: 14,
                              ),
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                            const SizedBox(height: 8),
                            Text(
                              '\$${item.price.toStringAsFixed(2)}',
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ],
    );
  }

  Widget _buildTeamUpdates(BuildContext context, WidgetRef ref) {
    final stationController = ref.watch(stationControllerProvider(homeStateModel.user!.id));

    return stationController.when(
      data: (stationViewModel) {
        if (stationViewModel.teamUpdates.isEmpty) {
          return const Center(child: Text('No team updates found'));
        }

        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Team Updates',
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            const SizedBox(height: 16),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: stationViewModel.teamUpdates.length.clamp(0, 5),
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: TeamUpdateCard(
                    teamUpdate: stationViewModel.teamUpdates[index],
                  ),
                );
              },
            ),
          ],
        );
      },
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (error, stack) => Center(child: Text('Error: $error')),
    );
  }
}