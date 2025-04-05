import 'package:firefit/features/auth/providers/user_notifier.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ProfileScreen extends HookConsumerWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userState = ref.watch(userNotifierProvider);
    final theme = Theme.of(context);

    return userState.when(
      data: (state) {
        final user = state.user;
        if (user == null) {
          return const Center(child: Text('Not logged in'));
        }

        return Scaffold(
          body: Stack(
            children: [
              CustomScrollView(
                slivers: [
                  SliverAppBar(
                    expandedHeight: 200.0,
                    floating: false,
                    pinned: true,
                    backgroundColor: theme.colorScheme.surface,
                    foregroundColor: theme.colorScheme.onSurface,
                    flexibleSpace: FlexibleSpaceBar(
                      background: Stack(
                        fit: StackFit.expand,
                        children: [
                          // Banner image
                          Image.network(
                            user.user.primaryStation?.coverUrl ??
                                'https://picsum.photos/1500/500', // Placeholder
                            fit: BoxFit.cover,
                          ),
                          // Black overlay with 20% opacity
                          Container(
                            color: Color.fromRGBO(0, 0, 0, 0.2),
                          ),
                          // Gradient overlay
                          Container(
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                                  Colors.transparent,
                                  Color.fromRGBO(
                                    theme.colorScheme.surface.r.round(),
                                    theme.colorScheme.surface.g.round(),
                                    theme.colorScheme.surface.b.round(),
                                    0.8
                                  ),
                                ],
                              ),
                            ),
                          ),
                          // Avatar positioned in the middle of the top area
                          Positioned(
                            bottom: 50, // Positioned in the middle of the image
                            left: 0,
                            right: 0,
                            child: Center(
                              child: Container(
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    color: theme.colorScheme.surface,
                                    width: 4,
                                  ),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color.fromRGBO(
                                        theme.colorScheme.shadow.r.round(),
                                        theme.colorScheme.shadow.g.round(),
                                        theme.colorScheme.shadow.b.round(),
                                        0.1
                                      ),
                                      blurRadius: 10,
                                      spreadRadius: 2,
                                    ),
                                  ],
                                ),
                                child: CircleAvatar(
                                  radius: 50,
                                  backgroundColor:
                                      Color.fromRGBO(
                                        theme.colorScheme.primary.r.round(),
                                        theme.colorScheme.primary.g.round(),
                                        theme.colorScheme.primary.b.round(),
                                        0.1
                                      ),
                                  backgroundImage: user.profile.avatar != null
                                      ? NetworkImage(user.profile.avatar!)
                                      : null,
                                  child: user.profile.avatar == null
                                      ? Text(
                                          user.profile.displayName?[0].toUpperCase() ?? '',
                                          style: theme.textTheme.headlineMedium?.copyWith(
                                            color: theme.colorScheme.primary,
                                          ),
                                        )
                                      : null,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SliverToBoxAdapter(
                    child: Column(
                      children: [
                        const SizedBox(height: 60), // Increased to accommodate the avatar
                        // Profile info
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: Column(
                            children: [
                              Text(
                                user.profile.displayName ?? 'No Name',
                                style: theme.textTheme.headlineMedium?.copyWith(
                                  fontWeight: FontWeight.bold,
                                  color: theme.colorScheme.onSurface,
                                ),
                              ),
                              const SizedBox(height: 4),
                              Text(
                                '@${user.profile.handle}',
                                style: theme.textTheme.titleMedium?.copyWith(
                                  color: Color.fromRGBO(
                                    theme.colorScheme.onSurface.r.round(),
                                    theme.colorScheme.onSurface.g.round(),
                                    theme.colorScheme.onSurface.b.round(),
                                    0.7
                                  ),
                                ),
                              ),
                              if (user.profile.description != null) ...[
                                const SizedBox(height: 12),
                                Text(
                                  user.profile.description!,
                                  style: theme.textTheme.bodyLarge?.copyWith(
                                    color: theme.colorScheme.onSurface,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ],
                              const SizedBox(height: 16),
                              // Stats row
                              Container(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 12, horizontal: 24),
                                decoration: BoxDecoration(
                                  color: Color.fromRGBO(
                                    theme.colorScheme.surfaceContainerHighest.r.round(),
                                    theme.colorScheme.surfaceContainerHighest.g.round(),
                                    theme.colorScheme.surfaceContainerHighest.b.round(),
                                    0.5
                                  ),
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    _buildStat(
                                        context,
                                        'Station',
                                        user.user.primaryStation?.name ??
                                            'Unknown'),
                                    Container(
                                      height: 24,
                                      width: 1,
                                      margin: const EdgeInsets.symmetric(
                                          horizontal: 24),
                                      color: Color.fromRGBO(
                                        theme.colorScheme.onSurface.r.round(),
                                        theme.colorScheme.onSurface.g.round(),
                                        theme.colorScheme.onSurface.b.round(),
                                        0.1
                                      ),
                                    ),
                                    _buildStat(
                                        context,
                                        'Number',
                                        user.user.primaryStation?.number
                                                ?.toString() ??
                                            'Unknown'),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              // Avatar is now part of the SliverAppBar
            ],
          ),
        );
      },
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (error, stack) => Center(child: Text('Error: $error')),
    );
  }

  Widget _buildStat(BuildContext context, String label, String value) {
    final theme = Theme.of(context);
    return Column(
      children: [
        Text(
          value,
          style: theme.textTheme.titleLarge?.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          label,
          style: theme.textTheme.bodyMedium?.copyWith(
            color: Color.fromRGBO(
              theme.colorScheme.onSurface.r.round(),
              theme.colorScheme.onSurface.g.round(),
              theme.colorScheme.onSurface.b.round(),
              0.7
            ),
          ),
        ),
      ],
    );
  }
}
