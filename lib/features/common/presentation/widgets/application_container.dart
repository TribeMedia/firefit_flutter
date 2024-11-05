import 'package:firefit/features/chat/ai_chat_screen.dart';

import 'package:firefit/features/common/presentation/providers.dart';
import 'package:firefit/features/common/presentation/widgets/cart_icon.dart';
import 'package:firefit/features/home/presentation/widgets/navigation/app_drawer.dart';
import 'package:firefit/features/home/presentation/widgets/navigation/bottom_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
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
      body: Stack(
        children: [
          Column(
            children: [
              Expanded(
                child: widget.child,
              ),
              FireFitBottomNavBar(
                currentIndex: currentIndex,
                onTabSelected: (index) {
                  ref.read(currentIndexProvider.notifier).state = index;
                },
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
      drawer: AppDrawer(),
    );
  }
}
