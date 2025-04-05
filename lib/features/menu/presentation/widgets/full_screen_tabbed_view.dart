import 'package:firefit/features/menu/presentation/widgets/timer_notifier.dart';
import 'package:firefit/features/menu/presentation/widgets/tiny_timer_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:share_plus/share_plus.dart';

// TabController provider for the full screen view
final fullScreenTabControllerProvider =
    Provider.autoDispose.family<TabController, BuildContext>((ref, context) {
  final controller = TabController(length: 3, vsync: Scaffold.of(context));
  ref.onDispose(() {
    controller.dispose();
  });
  return controller;
});

class FullScreenTabbedView extends ConsumerWidget {
  final String title;
  final String description;
  final String instructions;
  final String nutrition;
  final int initialTabIndex;
  final String? imageUrl;

  const FullScreenTabbedView({
    super.key,
    required this.title,
    required this.description,
    required this.instructions,
    required this.nutrition,
    this.initialTabIndex = 0,
    this.imageUrl,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final timerState = ref.watch(timerProvider);

    return Scaffold(
      backgroundColor: colorScheme.surface,
      appBar: AppBar(
        backgroundColor: colorScheme.surface,
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: colorScheme.onSurface,
          ),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text(
          'Product Details',
          style: theme.textTheme.titleMedium?.copyWith(
            fontWeight: FontWeight.bold,
            color: colorScheme.onSurface,
          ),
        ),
        actions: [
          // Share button
          IconButton(
            icon: Icon(
              Icons.share,
              color: colorScheme.primary,
            ),
            onPressed: () {
              // Share product details using share_plus
              final shareText = 'Check out this delicious meal: $title\n\n'
                  '${description.length > 200 ? '${description.substring(0, 200)}...' : description}'
                  '${imageUrl != null ? '\n\nImage: $imageUrl' : ''}';
              
              Share.share(shareText);
              
              Fluttertoast.showToast(
                msg: 'Sharing product details...',
                toastLength: Toast.LENGTH_SHORT,
                gravity: ToastGravity.BOTTOM,
                timeInSecForIosWeb: 1,
                backgroundColor: colorScheme.primary,
                textColor: colorScheme.onPrimary,
                fontSize: 16.0,
              );
            },
          ),
        ],
      ),
      body: SafeArea(
        child: Builder(builder: (scaffoldContext) {
          // Get the TabController from the provider with the correct BuildContext
          final tabController =
              ref.watch(fullScreenTabControllerProvider(scaffoldContext));
          
          // Set initial tab
          WidgetsBinding.instance.addPostFrameCallback((_) {
            if (tabController.index != initialTabIndex) {
              tabController.animateTo(initialTabIndex);
            }
          });

          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Product title
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 16, 20, 8),
                child: Text(
                  title,
                  style: theme.textTheme.headlineSmall?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: colorScheme.onSurface,
                  ),
                ),
              ),

              // Divider
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Divider(color: colorScheme.outline.withAlpha((0.3 * 255).round())),
              ),

              // Tab bar
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 8, 16, 0),
                child: Container(
                  decoration: BoxDecoration(
                    color: colorScheme.surfaceContainerHighest.withAlpha((0.3 * 255).round()),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: TabBar(
                    controller: tabController,
                    labelColor: colorScheme.primary,
                    unselectedLabelColor: colorScheme.onSurfaceVariant,
                    indicatorColor: colorScheme.primary,
                    indicatorSize: TabBarIndicatorSize.tab,
                    dividerColor: Colors.transparent,
                    tabs: const [
                      Tab(text: 'Description'),
                      Tab(text: 'Instructions'),
                      Tab(text: 'Nutrition'),
                    ],
                  ),
                ),
              ),

              // Tab content - expanded to fill remaining space
              Expanded(
                child: TabBarView(
                  controller: tabController,
                  children: [
                    // Description Tab
                    _buildDescriptionTab(theme, colorScheme),

                    // Instructions Tab
                    _buildInstructionsTab(theme, colorScheme),

                    // Nutrition Tab
                    _buildNutritionTab(theme, colorScheme),
                  ],
                ),
              ),

              // Bottom action bar
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: colorScheme.surface,
                  boxShadow: [
                    BoxShadow(
                      offset: const Offset(0, -2),
                      blurRadius: 6,
                      color: Colors.black.withAlpha((0.06 * 255).round()),
                    ),
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Only show timer button on Instructions tab
                    if (tabController.index == 1) ...[
                      // Timer button or active timer
                      Expanded(
                        child: ElevatedButton(
                          onPressed: timerState.status != TimerStatus.idle
                              ? null
                              : () {
                                  try {
                                    _showTimerDialog(context, ref);
                                  } catch (e) {
                                    // If there's an error with the dialog, just set a default timer
                                    ref
                                        .read(timerProvider.notifier)
                                        .start(const Duration(minutes: 5));
                                  }
                                },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: colorScheme.primary,
                            foregroundColor: colorScheme.onPrimary,
                            padding: const EdgeInsets.symmetric(vertical: 12),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                          child: timerState.status != TimerStatus.idle
                              ? TinyTimerView(
                                  duration: timerState.initial,
                                  onComplete: () {
                                    // Timer completed notification
                                    Fluttertoast.showToast(
                                      msg: 'Timer completed!',
                                      toastLength: Toast.LENGTH_LONG,
                                      gravity: ToastGravity.BOTTOM,
                                      timeInSecForIosWeb: 5,
                                      backgroundColor: colorScheme.primary,
                                      textColor: colorScheme.onPrimary,
                                      fontSize: 16.0,
                                    );
                                  },
                                  onCancel: () {
                                    // No additional action needed for cancel
                                  },
                                )
                              : Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: const [
                                    Icon(Icons.timer),
                                    SizedBox(width: 8),
                                    Text('Start Timer'),
                                  ],
                                ),
                        ),
                      ),
                    ],
                  ],
                ),
              ),
            ],
          );
        }),
      ),
    );
  }

  Widget _buildDescriptionTab(ThemeData theme, ColorScheme colorScheme) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(20),
      physics: const BouncingScrollPhysics(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'About this item',
            style: theme.textTheme.titleMedium?.copyWith(
              fontWeight: FontWeight.bold,
              color: colorScheme.onSurface,
            ),
          ),
          const SizedBox(height: 16),
          Markdown(
            data: description,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            styleSheet: MarkdownStyleSheet.fromTheme(theme).copyWith(
              p: theme.textTheme.bodyLarge?.copyWith(
                color: colorScheme.onSurface,
                height: 1.6,
              ),
              h1: theme.textTheme.headlineMedium?.copyWith(
                color: colorScheme.primary,
                fontWeight: FontWeight.bold,
                height: 1.4,
              ),
              h2: theme.textTheme.titleLarge?.copyWith(
                color: colorScheme.primary,
                fontWeight: FontWeight.bold,
                height: 1.4,
              ),
              h3: theme.textTheme.titleMedium?.copyWith(
                color: colorScheme.primary,
                fontWeight: FontWeight.bold,
                height: 1.4,
              ),
              listBullet: theme.textTheme.bodyLarge?.copyWith(
                color: colorScheme.primary,
              ),
              listBulletPadding: const EdgeInsets.only(right: 16),
              listIndent: 24,
              blockSpacing: 20,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildInstructionsTab(ThemeData theme, ColorScheme colorScheme) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(20),
      physics: const BouncingScrollPhysics(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Cooking Instructions',
            style: theme.textTheme.titleMedium?.copyWith(
              fontWeight: FontWeight.bold,
              color: colorScheme.onSurface,
            ),
          ),
          const SizedBox(height: 16),
          Markdown(
            data: instructions,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            styleSheet: MarkdownStyleSheet.fromTheme(theme).copyWith(
              p: theme.textTheme.bodyLarge?.copyWith(
                color: colorScheme.onSurface,
                height: 1.6,
              ),
              h1: theme.textTheme.headlineMedium?.copyWith(
                color: colorScheme.primary,
                fontWeight: FontWeight.bold,
                height: 1.4,
              ),
              h2: theme.textTheme.titleLarge?.copyWith(
                color: colorScheme.primary,
                fontWeight: FontWeight.bold,
                height: 1.4,
              ),
              h3: theme.textTheme.titleMedium?.copyWith(
                color: colorScheme.primary,
                fontWeight: FontWeight.bold,
                height: 1.4,
              ),
              listBullet: theme.textTheme.bodyLarge?.copyWith(
                color: colorScheme.primary,
              ),
              listBulletPadding: const EdgeInsets.only(right: 16),
              listIndent: 24,
              blockSpacing: 20,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildNutritionTab(ThemeData theme, ColorScheme colorScheme) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(20),
      physics: const BouncingScrollPhysics(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Nutrition Information',
            style: theme.textTheme.titleMedium?.copyWith(
              fontWeight: FontWeight.bold,
              color: colorScheme.onSurface,
            ),
          ),
          const SizedBox(height: 16),
          Markdown(
            data: nutrition,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            styleSheet: MarkdownStyleSheet.fromTheme(theme).copyWith(
              p: theme.textTheme.bodyLarge?.copyWith(
                color: colorScheme.onSurface,
                height: 1.6,
              ),
              h1: theme.textTheme.headlineMedium?.copyWith(
                color: colorScheme.primary,
                fontWeight: FontWeight.bold,
                height: 1.4,
              ),
              h2: theme.textTheme.titleLarge?.copyWith(
                color: colorScheme.primary,
                fontWeight: FontWeight.bold,
                height: 1.4,
              ),
              h3: theme.textTheme.titleMedium?.copyWith(
                color: colorScheme.primary,
                fontWeight: FontWeight.bold,
                height: 1.4,
              ),
              listBullet: theme.textTheme.bodyLarge?.copyWith(
                color: colorScheme.primary,
              ),
              listBulletPadding: const EdgeInsets.only(right: 16),
              listIndent: 24,
              blockSpacing: 20,
              tableHead: theme.textTheme.bodyLarge?.copyWith(
                fontWeight: FontWeight.bold,
                color: colorScheme.onSurface,
              ),
              tableBody: theme.textTheme.bodyLarge?.copyWith(
                color: colorScheme.onSurface,
              ),
              tableBorder: TableBorder.all(
                color: colorScheme.outline.withAlpha((0.3 * 255).round()),
                width: 1,
                borderRadius: BorderRadius.circular(4),
              ),
              tableCellsPadding:
                  const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            ),
          ),
        ],
      ),
    );
  }

  void _showTimerDialog(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    // Get the scaffold messenger from the context
    final scaffoldMessenger = ScaffoldMessenger.of(context);

    // Define a function to set timer and show snackbar
    void setTimer(Duration duration, String label) {
      Navigator.pop(context);
      ref.read(timerProvider.notifier).start(duration);

      Fluttertoast.showToast(
        msg: 'Timer set for $label',
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 2,
        backgroundColor: colorScheme.primary,
        textColor: colorScheme.onPrimary,
        fontSize: 16.0,
      );
    }

    // Use showDialog instead of showModalBottomSheet to avoid scaffold messenger issues
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: colorScheme.surface,
          title: Text(
            'Cooking Timer',
            style: theme.textTheme.titleLarge?.copyWith(
              fontWeight: FontWeight.bold,
              color: colorScheme.onSurface,
            ),
            textAlign: TextAlign.center,
          ),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              // Common cooking times
              Wrap(
                spacing: 12,
                runSpacing: 12,
                alignment: WrapAlignment.center,
                children: [
                  _buildTimerChip(
                      context,
                      '5 min',
                      () => setTimer(const Duration(minutes: 5), '5 min'),
                      theme,
                      colorScheme),
                  _buildTimerChip(
                      context,
                      '10 min',
                      () => setTimer(const Duration(minutes: 10), '10 min'),
                      theme,
                      colorScheme),
                  _buildTimerChip(
                      context,
                      '15 min',
                      () => setTimer(const Duration(minutes: 15), '15 min'),
                      theme,
                      colorScheme),
                  _buildTimerChip(
                      context,
                      '20 min',
                      () => setTimer(const Duration(minutes: 20), '20 min'),
                      theme,
                      colorScheme),
                  _buildTimerChip(
                      context,
                      '30 min',
                      () => setTimer(const Duration(minutes: 30), '30 min'),
                      theme,
                      colorScheme),
                  _buildTimerChip(
                      context,
                      '45 min',
                      () => setTimer(const Duration(minutes: 45), '45 min'),
                      theme,
                      colorScheme),
                  _buildTimerChip(
                      context,
                      '1 hour',
                      () => setTimer(const Duration(hours: 1), '1 hour'),
                      theme,
                      colorScheme),
                ],
              ),
            ],
          ),
          actions: [
            // Custom timer button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                  _showCustomTimerDialog(context, ref, scaffoldMessenger);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: colorScheme.primary,
                  foregroundColor: colorScheme.onPrimary,
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: const Text('Set Custom Timer'),
              ),
            ),
          ],
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          contentPadding: const EdgeInsets.fromLTRB(24, 20, 24, 0),
          actionsPadding: const EdgeInsets.fromLTRB(24, 16, 24, 24),
        );
      },
    );
  }

  void _showCustomTimerDialog(BuildContext context, WidgetRef ref,
      ScaffoldMessengerState scaffoldMessenger) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    // State for time input
    int hours = 0;
    int minutes = 15;
    int seconds = 0;

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return StatefulBuilder(builder: (context, setState) {
          return AlertDialog(
            title: Text(
              'Set Custom Timer',
              style: theme.textTheme.titleLarge?.copyWith(
                fontWeight: FontWeight.bold,
                color: colorScheme.onSurface,
              ),
              textAlign: TextAlign.center,
            ),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    // Hours
                    _buildTimeInput(
                      context,
                      'Hours',
                      hours,
                      (value) => setState(() => hours = value),
                      0,
                      5,
                      theme,
                      colorScheme,
                    ),
                    // Minutes
                    _buildTimeInput(
                      context,
                      'Minutes',
                      minutes,
                      (value) => setState(() => minutes = value),
                      0,
                      59,
                      theme,
                      colorScheme,
                    ),
                    // Seconds
                    _buildTimeInput(
                      context,
                      'Seconds',
                      seconds,
                      (value) => setState(() => seconds = value),
                      0,
                      59,
                      theme,
                      colorScheme,
                    ),
                  ],
                ),
              ],
            ),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: const Text('Cancel'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                  final duration = Duration(
                    hours: hours,
                    minutes: minutes,
                    seconds: seconds,
                  );

                  // Don't set a timer of 0 duration
                  if (duration.inSeconds > 0) {
                    // Start the timer with custom duration
                    ref.read(timerProvider.notifier).start(duration);

                    // Show confirmation
                    String durationText = '';
                    if (hours > 0) {
                      durationText += '$hours hour${hours > 1 ? 's' : ''} ';
                    }
                    if (minutes > 0) {
                      durationText +=
                          '$minutes minute${minutes > 1 ? 's' : ''} ';
                    }
                    if (seconds > 0) {
                      durationText +=
                          '$seconds second${seconds > 1 ? 's' : ''}';
                    }
                    if (durationText.isEmpty) durationText = '0 seconds';

                    Fluttertoast.showToast(
                      msg: 'Timer set for $durationText',
                      toastLength: Toast.LENGTH_SHORT,
                      gravity: ToastGravity.BOTTOM,
                      timeInSecForIosWeb: 2,
                      backgroundColor: colorScheme.primary,
                      textColor: colorScheme.onPrimary,
                      fontSize: 16.0,
                    );
                  }
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: colorScheme.primary,
                  foregroundColor: colorScheme.onPrimary,
                ),
                child: const Text('Set Timer'),
              ),
            ],
          );
        });
      },
    );
  }

  Widget _buildTimeInput(
    BuildContext context,
    String label,
    int value,
    Function(int) onChanged,
    int min,
    int max,
    ThemeData theme,
    ColorScheme colorScheme,
  ) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(label, style: theme.textTheme.bodySmall),
        const SizedBox(height: 8),
        Container(
          width: 80,
          decoration: BoxDecoration(
            border: Border.all(color: colorScheme.outline.withAlpha((0.3 * 255).round())),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                icon: const Icon(Icons.remove, size: 16),
                onPressed: () {
                  if (value > min) {
                    onChanged(value - 1);
                  }
                },
                padding: EdgeInsets.zero,
                constraints: const BoxConstraints(
                  minWidth: 24,
                  minHeight: 24,
                ),
              ),
              Text(
                value.toString().padLeft(2, '0'),
                style: theme.textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              IconButton(
                icon: const Icon(Icons.add, size: 16),
                onPressed: () {
                  if (value < max) {
                    onChanged(value + 1);
                  }
                },
                padding: EdgeInsets.zero,
                constraints: const BoxConstraints(
                  minWidth: 24,
                  minHeight: 24,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildTimerChip(BuildContext context, String timeLabel,
      VoidCallback onPressed, ThemeData theme, ColorScheme colorScheme) {
    return ActionChip(
      label: Text(timeLabel),
      backgroundColor: colorScheme.surfaceContainerHighest.withAlpha((0.3 * 255).round()),
      labelStyle: theme.textTheme.bodyMedium?.copyWith(
        color: colorScheme.onSurfaceVariant,
        fontWeight: FontWeight.bold,
      ),
      onPressed: onPressed,
    );
  }
}
