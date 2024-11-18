import 'package:core/core.dart';
import 'package:firefit/features/common/presentation/screens/error_screen.dart';
import 'package:firefit/features/common/presentation/widgets/initials_avatar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

part 'home_sliver_app_bar.g.dart';

class HomeAppBarState {
  HomeAppBarState({
    required this.scrollController,
    required this.constraints,
    required this.currentTextColor,
    required this.startTextColor,
    required this.endTextColor,
  }) {
    textColorTween = ColorTween(
      begin: startTextColor,
      end: endTextColor,
    );
  }

  final ScrollController scrollController;
  final Color currentTextColor;
  final Color startTextColor;
  final Color endTextColor;
  final SliverConstraints constraints;
  late final ColorTween textColorTween;

  HomeAppBarState copyWith({
    ScrollController? scrollController,
    Color? startTextColor,
    Color? currentTextColor,
    Color? endTextColor,
    SliverConstraints? constraints,
  }) {
    return HomeAppBarState(
      scrollController: scrollController ?? this.scrollController,
      currentTextColor: currentTextColor ?? this.currentTextColor,
      endTextColor: endTextColor ?? this.endTextColor,
      constraints: constraints ?? this.constraints,
      startTextColor: startTextColor ?? this.startTextColor,
    );
  }
}

class HomeAppBarInput {
  const HomeAppBarInput({
    required this.startTextColor,
    required this.endTextColor,
    required this.constraints,
    required this.scrollController,
  });

  final Color startTextColor;
  final Color endTextColor;
  final SliverConstraints constraints;
  final ScrollController scrollController;
}

@riverpod
class HomeAppBar extends _$HomeAppBar {
  static const double expandedHeight = 200.0;

  @override
  FutureOr<HomeAppBarState> build(HomeAppBarInput input) {
    // Remove any existing listeners first
    input.scrollController.removeListener(() {});

    // Add the scroll listener directly
    input.scrollController.addListener(() {
      if (!state.hasValue || !input.scrollController.hasClients) return;

      final double scrollPercentage = (input.scrollController.offset /
          (expandedHeight - kToolbarHeight)).clamp(0.0, 1.0);

      final Color newTextColor = Color.lerp(
        input.startTextColor,
        input.endTextColor,
        scrollPercentage,
      ) ?? input.startTextColor;

      // Only update if color has changed
      if (state.value!.currentTextColor != newTextColor) {
        state = AsyncValue.data(state.value!.copyWith(
          currentTextColor: newTextColor,
        ));
      }
    });

    // Calculate initial color based on current scroll position
    final double initialScrollPercentage = input.scrollController.hasClients
        ? (input.scrollController.offset / (expandedHeight - kToolbarHeight)).clamp(0.0, 1.0)
        : 0.0;

    final Color initialColor = Color.lerp(
      input.startTextColor,
      input.endTextColor,
      initialScrollPercentage,
    ) ?? input.startTextColor;

    return HomeAppBarState(
      scrollController: input.scrollController,
      startTextColor: input.startTextColor,
      currentTextColor: initialColor,
      endTextColor: input.endTextColor,
      constraints: input.constraints,
    );
  }
}

class HomeSliverAppBar extends HookConsumerWidget {
  const HomeSliverAppBar({
    super.key,
    required this.station,
    required this.user,
    required this.parentScrollController,
  });

  final Station station;
  final User user;
  final ScrollController parentScrollController;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final Brightness brightness = Theme.of(context).brightness;

    // Always start with white for expanded state
    final Color startTextColor = Colors.white;
    // End color depends on brightness mode
    final Color endTextColor = brightness == Brightness.dark
        ? Colors.white  // Stay white in dark mode
        : Colors.black; // Transition to black in light mode

    return SliverLayoutBuilder(
      builder: (BuildContext context, SliverConstraints constraints) {
        final homeAppBarState = ref.watch(
          homeAppBarProvider(
            HomeAppBarInput(
              scrollController: parentScrollController,
              startTextColor: startTextColor,
              endTextColor: endTextColor,
              constraints: constraints,
            ),
          ),
        );

        return homeAppBarState.when(
          data: (HomeAppBarState state) => SliverAppBar(
            actions: [
              IconButton(
                icon: const Icon(Icons.notifications),
                onPressed: () {},
              ),
              Padding(
                  padding: EdgeInsets.only(right: 8),
                child: user.avatarUrl != null
                    ? ShadAvatar(user.avatarUrl!)
                    : InitialsAvatar(name: user.displayName!),
              ),
            ],
            leading: Padding(
              padding: const EdgeInsets.fromLTRB(12.0, 0, 0, 0),
              child: ColorFiltered(
                colorFilter: ColorFilter.mode(
                  Theme.of(context).colorScheme.primary.withAlpha((255 * 0.1).round()),
                  BlendMode.srcATop,
                ),
                child: IconButton(
                  onPressed: () {},
                  icon: Image.asset(
                    'assets/images/fots-logo-favicon-100x100.png',
                    height: 60,
                    width: 60,
                  ),
                ),
              ),
            ),
            expandedHeight: 200.0,
            floating: false,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(
                station.name,
                style: TextStyle(
                  color: state.currentTextColor,
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
                          Colors.black.withAlpha((255 * 0.7).round()),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          loading: () => SliverAppBar(
            expandedHeight: 200.0,
            floating: false,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(
                station.name,
                style: TextStyle(
                  color: startTextColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          error: (Object error, StackTrace stackTrace) => SliverToBoxAdapter(
            child: ErrorScreen(
              errorMessage: error.toString(),
              onRetry: () => context.go('/'),
            ),
          ),
        );
      },
    );
  }
}