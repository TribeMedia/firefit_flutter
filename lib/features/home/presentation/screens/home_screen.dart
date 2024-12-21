import 'package:core/core.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:firefit/features/common/presentation/screens/error_screen.dart';
import 'package:firefit/features/home/presentation/providers/home_state.dart';
import 'package:firefit/features/home/presentation/widgets/home_sliver_app_bar.dart';
import 'package:firefit/features/menu/providers.dart';
import 'package:firefit/features/teams/presentation/widgets/team_update_card.dart';
import 'package:firefit/features/teams/providers.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'home_screen.g.dart';

@riverpod
class HomeAppBarScrollController extends _$HomeAppBarScrollController {
  @override
  ScrollController build() {
    final controller = ScrollController();
    ref.onDispose(() {
      controller.dispose();
    });
    return controller;
  }
}

class HomeScreen extends HookConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final homeState = ref.watch(homeStateProvider);
    final menuState = ref.watch(menuControllerProvider(globalProviderId));

    return homeState.when(
      data: (homeStateModel) {
        if (homeStateModel.isLoading) {
          return const Scaffold(
            body: Center(child: CircularProgressIndicator()),
          );
        }

        if (homeStateModel.error != null) {
          return Scaffold(
            body: Center(child: Text('Error: ${homeStateModel.error}')),
          );
        }

        return menuState.when(
          data: (menuScreenViewModel) {
            if (menuScreenViewModel.isLoading) {
              return const Scaffold(
                body: Center(child: CircularProgressIndicator()),
              );
            }

            if (menuScreenViewModel.error != null) {
              return Scaffold(
                body: Center(child: Text('Error: ${menuScreenViewModel.error}')),
              );
            }

            return Scaffold(
              body: HomeContent(
                homeStateModel: homeStateModel,
                menuScreenViewModel: menuScreenViewModel,
              ),
            );
          },
          loading: () => const Scaffold(
            body: Center(child: CircularProgressIndicator()),
          ),
          error: (error, stackTrace) => Scaffold(
            body: Center(child: Text('Error: $error')),
          ),
        );
      },
      loading: () => const Scaffold(
        body: Center(child: CircularProgressIndicator()),
      ),
      error: (error, stackTrace) => Scaffold(
        body: Center(child: Text('Error: $error')),
      ),
    );
  }
}

class HomeContent extends HookConsumerWidget {
  const HomeContent({
    super.key,
    required this.homeStateModel,
    required this.menuScreenViewModel,
  });

  final HomeStateModel homeStateModel;
  final MenuViewModel menuScreenViewModel;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final menuController = ref.watch(menuControllerProvider(globalProviderId).notifier);
    final List<MenuItem> featuredMenuItems = menuController.featuredMenuItems
      ..sort((MenuItem a, MenuItem b) => b.createdAt.compareTo(a.createdAt))
      ..take(5).toList();

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

    final ScrollController scrollController = ref.watch(homeAppBarScrollControllerProvider);

    return CustomScrollView(
      controller: scrollController,
      slivers: [
        HomeSliverAppBar(
          station: homeStateModel.firstResponder!.currentStation!,
          user: homeStateModel.user!,
          parentScrollController: scrollController,
        ),
        SliverPadding(
          padding: const EdgeInsets.all(16.0),
          sliver: SliverList(
            delegate: SliverChildListDelegate([
              _buildFeaturedMenuItems(context, featuredMenuItems),
              const SizedBox(height: 24),
              _buildTeamUpdates(context, ref),
            ]),
          ),
        ),
      ],
    );
  }

  Widget _buildFeaturedMenuItems(BuildContext context, List<MenuItem> featuredItems) {
    if (featuredItems.isEmpty) {
      return const Center(
        child: Text('No featured items found'),
      );
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Featured Menu Items',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        const SizedBox(height: 16),
        ListView.separated(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: featuredItems.length,
          separatorBuilder: (BuildContext context, int index) =>
          const SizedBox(height: 16),
          itemBuilder: (BuildContext context, int index) {
            final MenuItem menuItem = featuredItems[index];
            return GestureDetector(
              onTap: () => context.go('/menu/item/${menuItem.id}'),
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
                    CachedNetworkImage(
                      imageUrl: menuItem.imageUrl ?? '',
                      fit: BoxFit.cover,
                      placeholder: (context, url) => const CircularProgressIndicator(),
                      errorWidget: (context, url, error) => const Icon(Icons.error),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Colors.transparent,
                            Theme.of(context)
                                .colorScheme
                                .primary
                                .withAlpha((255 * 0.1).round()),
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
                            menuItem.name,
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 4),
                          Text(
                            menuItem.notes ?? '',
                            style: TextStyle(
                              color: Colors.white.withAlpha((255 * 0.8).round()),
                              fontSize: 14,
                            ),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                          const SizedBox(height: 8),
                          Text(
                            '\$${menuItem.price.toStringAsFixed(2)}',
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
            );
          },
        ),
      ],
    );
  }

  Widget _buildTeamUpdates(BuildContext context, WidgetRef ref) {
    final stationController = ref.watch(
      stationControllerProvider(homeStateModel.user!.id),
    );

    return stationController.when(
      data: (stationViewModel) {
        if (stationViewModel.teamUpdates.isEmpty) {
          return const Center(
            child: Text('No team updates found'),
          );
        }

        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Team Updates',
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            const SizedBox(height: 16),
            ListView.separated(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: stationViewModel.teamUpdates.length.clamp(0, 5),
              separatorBuilder: (BuildContext context, int index) =>
              const SizedBox(height: 8),
              itemBuilder: (BuildContext context, int index) {
                return TeamUpdateCard(
                  teamUpdate: stationViewModel.teamUpdates[index],
                );
              },
            ),
          ],
        );
      },
      loading: () => const Center(
        child: CircularProgressIndicator(),
      ),
      error: (error, stackTrace) => Center(
        child: Text('Error: $error'),
      ),
    );
  }
}