import 'package:firefit/features/commerce/domain/entities/shopping_cart_model.dart';
import 'package:firefit/features/commerce/presentation/providers/shopping_cart_provider.dart';
import 'package:firefit/features/common/presentation/theme/app_spacing.dart';
import 'package:firefit/features/common/presentation/widgets/app_logo.dart';
import 'package:firefit/features/notifications/providers/providers.dart' as np;
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class AppHeader extends ConsumerWidget implements PreferredSizeWidget {
  final GlobalKey<ScaffoldState> scaffoldKey;
  final VoidCallback onNotificationTap;
  final VoidCallback onSearchTap;

  const AppHeader({
    super.key,
    required this.scaffoldKey,
    required this.onNotificationTap,
    required this.onSearchTap,
  });

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final notificationsValue = ref.watch(np.notificationProvider);
    final cart = ref.watch(cartProvider);
    final isDarkMode = theme.brightness == Brightness.dark;

    return notificationsValue.when(
      data: (notifications) {
        return cart.when(
          data: (cart) => AppBar(
            elevation: 0,
            scrolledUnderElevation: 0,
            backgroundColor: theme.scaffoldBackgroundColor,
            leadingWidth: 96,
            leading: _buildLeading(context, isDarkMode),
            title: _buildTitle(context),
            actions: [
              _buildNotificationButton(context, notifications),
              _buildSearchButton(context),
              _buildCartButton(context, cart),
              AppSpacing.horizontal12,
            ],
            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(1),
              child: Container(
                color: theme.colorScheme.surfaceContainer,
                height: 1,
              ),
            ),
          ),
          loading: () => const SizedBox.shrink(),
          error: (error, stack) => const SizedBox.shrink(),
        );
      },
      loading: () => const SizedBox.shrink(),
      error: (error, stack) => const SizedBox.shrink(),
    );
  }

  Widget _buildLeading(BuildContext context, bool isDarkMode) {
    return GestureDetector(
      onTap: () => scaffoldKey.currentState?.openDrawer(),
      child: Container(
        padding: const EdgeInsets.only(left: 16),
        child: Row(
          children: [
            AppLogo(
              size: 32,
              isDarkMode: isDarkMode,
            ),
            AppSpacing.horizontal8,
            Container(
              width: 1,
              height: 24,
              color: Theme.of(context).colorScheme.surfaceContainer,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTitle(BuildContext context) {
    return Row(
      children: [
        Text(
          'FireFit',
          style: Theme.of(context).textTheme.titleLarge?.copyWith(
                fontFamily: 'Geist Mono',
                fontWeight: FontWeight.bold,
                letterSpacing: -0.5,
              ),
        ),
        const Expanded(child: SizedBox()),
      ],
    );
  }

  Widget _buildNotificationButton(
      BuildContext context, np.NotificationModel notifications) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        IconButton(
          onPressed: onNotificationTap,
          icon: const Icon(Icons.notifications_outlined),
          tooltip: 'Notifications',
          style: IconButton.styleFrom(
            foregroundColor: Theme.of(context).colorScheme.onSurface,
          ),
        ),
        if (notifications.notifications.isNotEmpty)
          Positioned(
            right: 8,
            top: 8,
            child: NotificationBadge(count: notifications.notifications.length),
          ),
      ],
    );
  }

  Widget _buildSearchButton(BuildContext context) {
    return IconButton(
      onPressed: onSearchTap,
      icon: const Icon(Icons.search),
      tooltip: 'Search',
      style: IconButton.styleFrom(
        foregroundColor: Theme.of(context).colorScheme.onSurface,
      ),
    );
  }

  Widget _buildCartButton(BuildContext context, ShoppingCartModel cart) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        IconButton(
          onPressed: () => Navigator.pushNamed(context, '/cart'),
          icon: const Icon(Icons.shopping_cart_outlined),
          tooltip: 'Shopping Cart',
          style: IconButton.styleFrom(
            foregroundColor: Theme.of(context).colorScheme.onSurface,
          ),
        ),
        if (cart.items.isNotEmpty)
          Positioned(
            right: 8,
            top: 8,
            child: CartBadge(count: cart.items.length),
          ),
      ],
    );
  }
}

class NotificationBadge extends StatelessWidget {
  final int count;

  const NotificationBadge({
    super.key,
    required this.count,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(4),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.error,
        shape: BoxShape.circle,
      ),
      constraints: const BoxConstraints(
        minWidth: 16,
        minHeight: 16,
      ),
      child: Text(
        count > 99 ? '99+' : count.toString(),
        style: Theme.of(context).textTheme.labelSmall?.copyWith(
              color: Theme.of(context).colorScheme.onError,
              fontSize: 10,
            ),
        textAlign: TextAlign.center,
      ),
    );
  }
}

class CartBadge extends StatelessWidget {
  final int count;

  const CartBadge({
    super.key,
    required this.count,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(4),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primary,
        shape: BoxShape.circle,
      ),
      constraints: const BoxConstraints(
        minWidth: 16,
        minHeight: 16,
      ),
      child: Text(
        count > 99 ? '99+' : count.toString(),
        style: Theme.of(context).textTheme.labelSmall?.copyWith(
              color: Theme.of(context).colorScheme.onPrimary,
              fontSize: 10,
            ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
