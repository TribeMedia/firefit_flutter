import 'package:firefit/features/chat/ai_chat_screen.dart';

import 'package:firefit/features/common/presentation/providers.dart';
import 'package:firefit/features/common/presentation/widgets/cart_icon.dart';
import 'package:firefit/features/home/presentation/widgets/navigation/app_drawer.dart';
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
  ConsumerState<ApplicationContainer> createState() =>
      _ApplicationContainerState();
}

class _ApplicationContainerState extends ConsumerState<ApplicationContainer> {
  bool _showChat = false;

  void _toggleChat() {
    setState(() {
      _showChat = !_showChat;
    });
  }

  @override
  Widget build(BuildContext context) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;
    final scaffoldKey = ref.watch(scaffoldKeyProvider(widget.name));
    final currentIndex = ref.watch(currentIndexProvider);

    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: GestureDetector(
            onTap: () {
              scaffoldKey.currentState?.openDrawer();
            },
            child: ColorFiltered(
              colorFilter: isDarkMode
                  ? const ColorFilter.mode(Colors.white, BlendMode.srcATop)
                  : const ColorFilter.mode(
                      Colors.transparent, BlendMode.srcATop),
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
            icon: const Icon(Icons.notifications),
            onPressed: () {
              // Handle notifications
            },
          ),
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              context.go('/search');
            },
          ),
          IconButton(
            icon: const Icon(Icons.auto_awesome),
            onPressed: _toggleChat,
          ),
          const CartIcon(),
        ],
      ),
      key: scaffoldKey,
      bottomNavigationBar: Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: 15.0, vertical: 20.0),
          child: GNav(
            selectedIndex: currentIndex,
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
      body: Stack(
        children: [
          Column(
            children: [
              Expanded(
                child: widget.child,
              ),
            ],
          ),
          if (_showChat)
            TweenAnimationBuilder<double>(
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeOutExpo,
              tween: Tween(begin: 1.0, end: 0.0),
              builder: (context, value, child) {
                return Transform.translate(
                  offset: Offset(0, value * MediaQuery.of(context).size.height),
                  child: child,
                );
              },
              child: Positioned.fill(
                child: Material(
                  color: Theme.of(context).scaffoldBackgroundColor,
                  elevation: 8,
                  child: Stack(
                    children: [
                      const AIChatScreen(),
                      Positioned(
                        top: 8,
                        right: 8,
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
      //drawer: AppDrawer(),
    );
  }
}
