import 'dart:async';
import 'package:hooks_riverpod/hooks_riverpod.dart';

// Timer states
enum TimerStatus {
  idle,
  running,
  paused,
  completed,
}

// A class to hold timer state
class TimerState {
  final Duration remaining;
  final TimerStatus status;
  final Duration initial;

  const TimerState({
    required this.remaining,
    required this.status,
    required this.initial,
  });

  TimerState copyWith({
    Duration? remaining,
    TimerStatus? status,
    Duration? initial,
  }) {
    return TimerState(
      remaining: remaining ?? this.remaining,
      status: status ?? this.status,
      initial: initial ?? this.initial,
    );
  }
}

// A notifier to handle timer state
class TimerNotifier extends StateNotifier<TimerState> {
  Timer? _timer;
  final Ref _ref;

  TimerNotifier(this._ref)
      : super(const TimerState(
    remaining: Duration.zero,
    status: TimerStatus.idle,
    initial: Duration.zero,
  ));

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  void start(Duration duration) {
    // Cancel any existing timer
    _timer?.cancel();

    // Set up initial state
    state = TimerState(
      remaining: duration,
      status: TimerStatus.running,
      initial: duration,
    );

    // Start a periodic timer with 1-second intervals
    _tick();
  }

  void _tick() {
    if (state.status != TimerStatus.running) return;

    // Use a basic Timer for accurate timing
    _timer = Timer(const Duration(seconds: 1), () {
      if (state.remaining.inSeconds <= 1) {
        // Timer completed
        state = state.copyWith(
          remaining: Duration.zero,
          status: TimerStatus.completed,
        );
      } else if (state.status == TimerStatus.running) {
        // Decrement time and continue
        state = state.copyWith(
          remaining: Duration(seconds: state.remaining.inSeconds - 1),
        );
        _tick(); // Schedule next tick
      }
    });
  }

  void pause() {
    if (state.status == TimerStatus.running) {
      _timer?.cancel();
      state = state.copyWith(status: TimerStatus.paused);
    }
  }

  void resume() {
    if (state.status == TimerStatus.paused) {
      state = state.copyWith(status: TimerStatus.running);
      _tick();
    }
  }

  void reset() {
    _timer?.cancel();
    state = state.copyWith(
      remaining: state.initial,
      status: TimerStatus.idle,
    );
  }

  void stop() {
    _timer?.cancel();
    state = const TimerState(
      remaining: Duration.zero,
      status: TimerStatus.idle,
      initial: Duration.zero,
    );
  }
}

// Provider for the timer
final timerProvider = StateNotifierProvider<TimerNotifier, TimerState>((ref) {
  return TimerNotifier(ref);
});