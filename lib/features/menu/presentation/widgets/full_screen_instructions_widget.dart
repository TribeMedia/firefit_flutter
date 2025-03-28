import 'package:firefit/features/menu/presentation/widgets/timer_notifier.dart';
import 'package:firefit/features/menu/presentation/widgets/tiny_timer_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class FullScreenInstructions extends ConsumerWidget {
  final String title;
  final String instructions;

  const FullScreenInstructions({
    super.key,
    required this.title,
    required this.instructions,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final timerState = ref.watch(timerProvider);
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

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
          'Cooking Instructions',
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
              // Implement sharing functionality here
              Fluttertoast.showToast(
                msg: 'Sharing instructions...',
                toastLength: Toast.LENGTH_SHORT,
                gravity: ToastGravity.BOTTOM,
                timeInSecForIosWeb: 1,
                backgroundColor: colorScheme.primary,
                textColor: colorScheme.onPrimary,
                fontSize: 16.0,
              );
            },
          ),
          // Print button
          IconButton(
            icon: Icon(
              Icons.print,
              color: colorScheme.primary,
            ),
            onPressed: () {
              // Implement print functionality here
              Fluttertoast.showToast(
                msg: 'Preparing to print...',
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Recipe title
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
              child: Divider(color: colorScheme.outline.withValues(alpha: 0.3)),
            ),

            // Instructions in a scrollable container
            Expanded(
              child: Markdown(
                data: instructions,
                padding: const EdgeInsets.all(20),
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
                  a: theme.textTheme.bodyLarge?.copyWith(
                    color: colorScheme.primary,
                    decoration: TextDecoration.underline,
                  ),
                  blockquote: theme.textTheme.bodyLarge?.copyWith(
                    color: colorScheme.onSurface.withValues(alpha: 0.8),
                    fontStyle: FontStyle.italic,
                  ),
                  blockquoteDecoration: BoxDecoration(
                    color: colorScheme.surfaceContainerHighest.withValues(alpha: 0.3),
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(
                      color: colorScheme.primary.withValues(alpha: 0.2),
                    ),
                  ),
                  blockquotePadding: const EdgeInsets.all(16),
                  tableHead: theme.textTheme.bodyLarge?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: colorScheme.onSurface,
                  ),
                  tableBorder: TableBorder.all(
                    color: colorScheme.outline.withValues(alpha: 0.3),
                    width: 1,
                    borderRadius: BorderRadius.circular(4),
                  ),
                  tableCellsPadding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  code: theme.textTheme.bodyMedium?.copyWith(
                    fontFamily: 'monospace',
                    backgroundColor: colorScheme.surfaceContainerHighest
                        .withValues(alpha: 0.5),
                    color: colorScheme.primary,
                  ),
                  codeblockDecoration: BoxDecoration(
                    color: colorScheme.surfaceContainerHighest
                        .withValues(alpha: 0.2),
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(
                      color: colorScheme.outline.withValues(alpha: 0.2),
                    ),
                  ),
                  codeblockPadding: const EdgeInsets.all(16),
                ),
                physics: const BouncingScrollPhysics(),
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
                    color: Colors.black.withValues(alpha: 0.06),
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Save button
                  Expanded(
                    child: OutlinedButton.icon(
                      onPressed: () {
                        // Save to favorites logic
                        Fluttertoast.showToast(
                          msg: 'Saved to favorites!',
                          toastLength: Toast.LENGTH_SHORT,
                          gravity: ToastGravity.BOTTOM,
                          timeInSecForIosWeb: 1,
                          backgroundColor: colorScheme.primary,
                          textColor: colorScheme.onPrimary,
                          fontSize: 16.0,
                        );
                      },
                      icon: const Icon(Icons.bookmark_border),
                      label: const Text('Save'),
                      style: OutlinedButton.styleFrom(
                        side: BorderSide(color: colorScheme.primary),
                        foregroundColor: colorScheme.primary,
                        padding: const EdgeInsets.symmetric(vertical: 12),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 16),
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
              ),
            ),
          ],
        ),
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
            border: Border.all(color: colorScheme.outline.withValues(alpha: 0.3)),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                icon: Icon(Icons.remove, size: 16),
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
                icon: Icon(Icons.add, size: 16),
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
      backgroundColor: colorScheme.surfaceContainerHighest,
      labelStyle: theme.textTheme.bodyMedium?.copyWith(
        color: colorScheme.onSurfaceVariant,
        fontWeight: FontWeight.bold,
      ),
      onPressed: onPressed,
    );
  }
}
