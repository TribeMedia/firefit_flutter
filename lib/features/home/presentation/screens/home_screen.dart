import 'package:carousel_slider/carousel_slider.dart';
import 'package:core/core.dart';
import 'package:firefit/features/home/presentation/providers/home_state.dart';
import 'package:firefit/features/meals/providers/providers.dart';
import 'package:firefit/features/menu/presentation/widgets/featured_item_menu_card.dart';
import 'package:firefit/features/menu/presentation/widgets/order_history_menu_item_card.dart';
import 'package:firefit/features/teams/presentation/widgets/team_update_card.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class HomeScreen extends HookConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final homeState = ref.watch(homeStateProvider);
    final menuState = ref.watch(menuNotifierProvider);

    return homeState.when(
      data: (homeStateModel) {
        return menuState.when(
          data: (menuScreenViewModel) {
            return Scaffold(
              body: HomeContent(
                homeStateModel: homeStateModel,
                menuScreenViewModel: menuScreenViewModel,
              ),
              bottomNavigationBar: Container(
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 15.0, vertical: 20.0),
                  child: GNav(
                    gap: 8,
                    activeColor: Colors.blue,
                    iconSize: 24,
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                    duration: Duration(milliseconds: 400),
                    tabBackgroundColor: Colors.grey[100]!,
                    color: Colors.grey,
                    tabs: [
                      GButton(
                        icon: Icons.home,
                        text: 'Home',
                        onPressed: () {
                          context.go('/');
                        },
                      ),
                      GButton(
                        icon: Icons.restaurant_menu,
                        text: 'Menu',
                        onPressed: () {
                          context.go('/menu');
                        },
                      ),
                      GButton(
                        icon: Icons.chat,
                        text: 'Chat',
                        onPressed: () {
                          context.go('/chat');
                        },
                      ),
                      GButton(
                        icon: Icons.business,
                        text: 'Station',
                        onPressed: () {
                          context.go('/station');
                        },
                      ),
                      GButton(
                        icon: Icons.person,
                        text: 'Profile',
                        onPressed: () {
                          context.go('/profile');
                        },
                      ),
                      GButton(
                        icon: Icons.settings,
                        text: 'Settings',
                        onPressed: () {
                          context.go('/settings');
                        },
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
          loading: () => Center(child: CircularProgressIndicator()),
          error: (error, stack) => Center(child: Text('Error: $error')),
        );
      },
      loading: () => Center(child: CircularProgressIndicator()),
      error: (error, stack) => Center(child: Text('Error: $error')),
    );
  }
}

class HomeContent extends StatelessWidget {
  final HomeStateModel homeStateModel;
  final MenuScreenViewModel menuScreenViewModel;

  const HomeContent({
    super.key,
    required this.homeStateModel,
    required this.menuScreenViewModel,
  });

  @override
  Widget build(BuildContext context) {
    final featuredMenuItems = menuScreenViewModel.menuItems
      ..sort((a, b) => b.createdAt.compareTo(a.createdAt))
      ..take(5);

    final recentOrders = homeStateModel.orders
      ..sort((a, b) => b.createdAt.compareTo(a.createdAt))
      ..take(5);

    return CustomScrollView(
      slivers: [
        _buildSliverAppBar(context, homeStateModel.station!),
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildFeaturedMenuItems(context, featuredMenuItems),
                SizedBox(height: 24),
                _buildOrderHistory(context, recentOrders),
                SizedBox(height: 24),
                _buildTeamUpdates(context, homeStateModel.teamUpdates),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildSliverAppBar(BuildContext context, Station station) {
    return SliverAppBar(
      expandedHeight: 200.0,
      floating: false,
      pinned: true,
      flexibleSpace: FlexibleSpaceBar(
        title: Text(station.name),
        background: Stack(
          fit: StackFit.expand,
          children: [
            Image.network(
              station.coverUrl ?? '',
              fit: BoxFit.cover,
            ),
            Center(
              child: CircleAvatar(
                radius: 50,
                backgroundImage: NetworkImage(station.iconUrl ?? ''),
              ),
            ),
          ],
        ),
      ),
      leading: CircleAvatar(
        backgroundImage: NetworkImage(station.iconUrl ?? ''),
      ),
    );
  }

  Widget _buildFeaturedMenuItems(
      BuildContext context, List<MenuItem> featuredItems) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Featured Menu Items',
            style: Theme.of(context).textTheme.headlineSmall),
        SizedBox(height: 16),
        CarouselSlider(
          options: CarouselOptions(
            height: 200,
            viewportFraction: 0.8,
            enlargeCenterPage: true,
            enableInfiniteScroll: false,
          ),
          items: featuredItems
              .map((item) => FeaturedMenuItemCard(menuItem: item))
              .toList(),
        ),
      ],
    );
  }

  Widget _buildOrderHistory(BuildContext context, List<Order> orders) {
    final List<List<MenuItem>> menuItems = orders.map((order) {
      if (order.orderItemCollection?.edges.isNotEmpty == true &&
          order.orderItemCollection!.edges.first.node
                  .orderItemMenuItemCollection?.edges.isNotEmpty ==
              true) {
        return order.orderItemCollection!.edges
            .map((edge) => edge.node.orderItemMenuItemCollection!.edges
                .map((menuEdge) => menuEdge.node.menuItem)
                .toList())
            .first;
      }
      return <MenuItem>[];
    }).toList();

    final flattenedMenuItems = menuItems.expand((x) => x).toList();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Order History', style: Theme.of(context).textTheme.headlineSmall),
        SizedBox(height: 16),
        CarouselSlider(
          options: CarouselOptions(
            height: 150,
            viewportFraction: 0.8,
            enlargeCenterPage: true,
            enableInfiniteScroll: false,
          ),
          items: flattenedMenuItems
              .map((item) => OrderHistoryMenuItemCard(
                  menuItem: item,
                  lastOrderDate:
                      orders[flattenedMenuItems.indexOf(item)].createdAt,
                  onReorder: () {}))
              .toList(),
        ),
      ],
    );
  }

  Widget _buildTeamUpdates(BuildContext context, List<TeamUpdate> teamUpdates) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Team Updates', style: Theme.of(context).textTheme.headlineSmall),
        SizedBox(height: 16),
        CarouselSlider(
          options: CarouselOptions(
            height: 150,
            viewportFraction: 0.8,
            enlargeCenterPage: true,
            enableInfiniteScroll: false,
          ),
          items: teamUpdates
              .take(5)
              .map((update) => TeamUpdateCard(teamUpdate: update))
              .toList(),
        ),
      ],
    );
  }
}
