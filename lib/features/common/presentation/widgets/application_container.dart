import 'package:firefit/features/chat/ai_chat_screen.dart';
import 'package:firefit/features/commerce/presentation/widgets/cart_overlay.dart';
import 'package:firefit/features/common/presentation/screens/error_screen.dart';
import 'package:firefit/features/common/presentation/widgets/cart_icon.dart';
import 'package:firefit/features/home/presentation/providers/home_state.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final scaffoldKeyProvider = Provider.family<GlobalKey<ScaffoldState>, String>(
        (ref, name) => GlobalKey<ScaffoldState>(debugLabel: name));

class ApplicationContainer extends ConsumerStatefulWidget {
  final Widget child;
  final String name;

  const ApplicationContainer({
    super.key,
    required this.child,
    required this.name,
  });

  @override
  ConsumerState<ApplicationContainer> createState() => _ApplicationContainerState();
}

class _ApplicationContainerState extends ConsumerState<ApplicationContainer> {
  bool _showChat = false;

  void _toggleChat() {
    setState(() {
      _showChat = !_showChat;
    });
  }

  int _getCurrentIndex(BuildContext context) {
    final String location = GoRouter.of(context).routerDelegate.currentConfiguration.uri.path;
    switch (location) {
      case '/':
        return 0;
      case '/menu':
        return 1;
      case '/orders':
        return 2;
      case '/settings':
        return 3;
      default:
        return 0;
    }
  }

  @override
  Widget build(BuildContext context) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;
    final scaffoldKey = ref.watch(scaffoldKeyProvider(widget.name));
    int currentIndex = _getCurrentIndex(context);
    final homeStateValue = ref.watch(homeStateProvider);

    return homeStateValue.when(
      data: (homeState){
        return Scaffold(
          key: scaffoldKey,
          appBar: currentIndex != 0 ?  AppBar(
            leading: Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: GestureDetector(
                onTap: () {
                  scaffoldKey.currentState?.openDrawer();
                },
                child: ColorFiltered(
                  colorFilter: isDarkMode
                      ? const ColorFilter.mode(Colors.white, BlendMode.srcATop)
                      : const ColorFilter.mode(Colors.transparent, BlendMode.srcATop),
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
            ),
            title: Text(
              homeState.user?.displayName ?? homeState.user!.firstName!,
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                fontFamily: 'Geist Mono',
                fontWeight: FontWeight.bold,
              ),
            ),
            actions: [
              IconButton(
                icon: const Icon(Icons.notifications),
                onPressed: () {
                  // Handle notifications
                },
              ),
              CartIcon(
                onPressed: () {
                  showCart(context);
                },
              ),
            ],
          ) : null,
          bottomNavigationBar: Container(
            padding: const EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 30.0),
            color: Colors.white,
            child: GNav(
              selectedIndex: _getCurrentIndex(context),
              gap: 8.0,
              activeColor: Colors.blue,
              iconSize: 24.0,
              padding: const EdgeInsets.symmetric(
                horizontal: 20.0,
                vertical: 10.0,
              ),
              duration: const Duration(milliseconds: 400),
              tabBackgroundColor: Colors.grey[100]!,
              color: Colors.grey,
              tabs: [
                GButton(
                  icon: Icons.home,
                  text: 'Home',
                  onPressed: () => context.go('/'),
                ),
                GButton(
                  icon: Icons.restaurant_menu,
                  text: 'Menu',
                  onPressed: () => context.go('/menu'),
                ),
                GButton(
                  icon: Icons.receipt,
                  text: 'Orders',
                  onPressed: () => context.go('/orders'),
                ),
                GButton(
                  icon: Icons.settings,
                  text: 'Settings',
                  onPressed: () => context.go('/settings'),
                ),
              ],
            ),
          ),
          body: Stack(
            children: [
              Column(
                children: [
                  Expanded(child: widget.child),
                ],
              ),
              if (_showChat)
                TweenAnimationBuilder<double>(
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.easeOutExpo,
                  tween: Tween(begin: 1.0, end: 0.0),
                  builder: (context, value, child) {
                    return Transform.translate(
                      offset: Offset(0.0, value * MediaQuery.of(context).size.height),
                      child: child,
                    );
                  },
                  child: Positioned.fill(
                    child: Material(
                      color: Theme.of(context).scaffoldBackgroundColor,
                      elevation: 8.0,
                      child: Stack(
                        children: [
                          const AIChatScreen(),
                          Positioned(
                            top: 8.0,
                            right: 8.0,
                            child: IconButton(
                              icon: const Icon(Icons.close),
                              onPressed: _toggleChat,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
            ],
          ),
        );
      },
      loading: () => const Scaffold(
        body: Center(child: CircularProgressIndicator()),
      ),
      error: (error, stack) => ErrorScreen(
          errorMessage: error.toString(),
          onRetry: () => context.go('/'),
        ),
    );
  }

  void showCart(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      enableDrag: true,
      backgroundColor: Colors.transparent,
      transitionAnimationController: AnimationController(
        vsync: Navigator.of(context),
        duration: const Duration(milliseconds: 300),
      ),
      builder: (context) => DraggableScrollableSheet(
        initialChildSize: 0.85,
        minChildSize: 0.5,
        maxChildSize: 0.95,
        builder: (context, scrollController) => AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeInOut,
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
          ),
          child: CartOverlay(),
        ),
      ),
    );
  }
}