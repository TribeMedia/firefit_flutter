import 'package:firefit/features/menu/presentation/widgets/timer_notifier.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class TinyTimerView extends ConsumerWidget {
  final Duration duration;
  final VoidCallback? onComplete;
  final VoidCallback? onCancel;

  const TinyTimerView({
    super.key,
    required this.duration,
    this.onComplete,
    this.onCancel,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isPaused = ref.watch(timerProvider.select((state) => state.status == TimerStatus.paused));
    final timerState = ref.watch(timerProvider);
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    // Initialize the timer if it's in running or paused state and matches our duration
    if (timerState.status == TimerStatus.idle && duration.inSeconds > 0) {
      // Use a post-frame callback to avoid building during build
      WidgetsBinding.instance.addPostFrameCallback((_) {
        ref.read(timerProvider.notifier).start(duration);
      });
    }

    // Listen for timer completion
    ref.listen(timerProvider, (previous, current) {
      if (previous?.status != TimerStatus.completed &&
          current.status == TimerStatus.completed &&
          onComplete != null) {
        onComplete!();
      }
    });

    // Format time as MM:SS
    String formatTime(Duration duration) {
      final minutes = duration.inMinutes.remainder(60).toString().padLeft(2, '0');
      final seconds = duration.inSeconds.remainder(60).toString().padLeft(2, '0');
      return '$minutes:$seconds';
    }

    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // Timer display
        Text(
          formatTime(timerState.remaining),
          style: theme.textTheme.titleMedium?.copyWith(
            fontWeight: FontWeight.bold,
            fontFamily: 'monospace',
            color: colorScheme.onPrimary,
          ),
        ),
        const SizedBox(width: 8),

        // Pause/Play button
        IconButton(
          icon: Icon(
            isPaused ? Icons.play_arrow : Icons.pause,
            color: colorScheme.onPrimary,
            size: 20,
          ),
          onPressed: () {
            if (isPaused) {
              ref.read(timerProvider.notifier).resume();
            } else {
              ref.read(timerProvider.notifier).pause();
            }
          },
          padding: EdgeInsets.zero,
          constraints: const BoxConstraints(
            minWidth: 32,
            minHeight: 32,
          ),
        ),

        // Stop button
        IconButton(
          icon: Icon(
            Icons.stop,
            color: colorScheme.onPrimary,
            size: 20,
          ),
          onPressed: () {
            ref.read(timerProvider.notifier).stop();
            if (onCancel != null) {
              onCancel!();
            }
          },
          padding: EdgeInsets.zero,
          constraints: const BoxConstraints(
            minWidth: 32,
            minHeight: 32,
          ),
        ),
      ],
    );
  }
}