import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

enum LoadingIndicatorStyle {
  circular,
  threeRotatingDots,
  waveDots,
  inkDrop,
  twistingDots,
  fourRotatingDots,
  staggeredDotsWave,
  fallingDot,
  progressBar
}

class LoadingIndicator extends StatelessWidget {
  final String message;
  final LoadingIndicatorStyle style;
  final Color? color;
  final double size;
  final bool showMessage;
  final TextStyle? messageStyle;
  final EdgeInsetsGeometry padding;
  final bool isOverlay;
  final Color? backgroundColor;

  const LoadingIndicator({
    super.key,
    this.message = 'Loading...',
    this.style = LoadingIndicatorStyle.threeRotatingDots,
    this.color,
    this.size = 50.0,
    this.showMessage = true,
    this.messageStyle,
    this.padding = const EdgeInsets.all(16.0),
    this.isOverlay = false,
    this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final Color indicatorColor = color ?? theme.colorScheme.primary;
    final TextStyle defaultMessageStyle = theme.textTheme.bodyLarge ??
        const TextStyle(fontSize: 16.0, fontWeight: FontWeight.normal);

    Widget loadingWidget;
    switch (style) {
      case LoadingIndicatorStyle.circular:
        loadingWidget = CircularProgressIndicator(
          color: indicatorColor,
          strokeWidth: 4.0,
        );
      case LoadingIndicatorStyle.threeRotatingDots:
        loadingWidget = LoadingAnimationWidget.threeRotatingDots(
          color: indicatorColor,
          size: size,
        );
      case LoadingIndicatorStyle.waveDots:
        loadingWidget = LoadingAnimationWidget.waveDots(
          color: indicatorColor,
          size: size,
        );
      case LoadingIndicatorStyle.inkDrop:
        loadingWidget = LoadingAnimationWidget.inkDrop(
          color: indicatorColor,
          size: size,
        );
      case LoadingIndicatorStyle.twistingDots:
        loadingWidget = LoadingAnimationWidget.twistingDots(
          leftDotColor: indicatorColor,
          rightDotColor: indicatorColor.withAlpha((0.6 * 255).round()),
          size: size,
        );
      case LoadingIndicatorStyle.fourRotatingDots:
        loadingWidget = LoadingAnimationWidget.fourRotatingDots(
          color: indicatorColor,
          size: size,
        );
      case LoadingIndicatorStyle.staggeredDotsWave:
        loadingWidget = LoadingAnimationWidget.staggeredDotsWave(
          color: indicatorColor,
          size: size,
        );
      case LoadingIndicatorStyle.fallingDot:
        loadingWidget = LoadingAnimationWidget.fallingDot(
          color: indicatorColor,
          size: size,
        );
      case LoadingIndicatorStyle.progressBar:
        loadingWidget = SizedBox(
          width: size * 2,
          child: LinearProgressIndicator(
            color: indicatorColor,
            backgroundColor: indicatorColor.withAlpha((0.2 * 255).round()),
          ),
        );
    }

    Widget content = Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        loadingWidget,
        if (showMessage && message.isNotEmpty) ...[
          SizedBox(height: padding.vertical / 2),
          Text(
            message,
            style: messageStyle ?? defaultMessageStyle,
            textAlign: TextAlign.center,
          ),
        ],
      ],
    );

    if (isOverlay) {
      content = Container(
        color: backgroundColor ?? Colors.black54,
        child: Center(
          child: Card(
            elevation: 4.0,
            child: Padding(
              padding: padding,
              child: content,
            ),
          ),
        ),
      );
    } else {
      content = Padding(
        padding: padding,
        child: content,
      );
    }

    return content;
  }
}

// Extension method for easy loading overlay
extension LoadingOverlayExtension on BuildContext {
  void showLoadingOverlay({
    String message = 'Loading...',
    LoadingIndicatorStyle style = LoadingIndicatorStyle.threeRotatingDots,
    Color? color,
    double size = 50.0,
    bool showMessage = true,
    TextStyle? messageStyle,
    Color? backgroundColor,
  }) {
    showDialog(
      context: this,
      barrierDismissible: false,
      builder: (BuildContext context) => LoadingIndicator(
        message: message,
        style: style,
        color: color,
        size: size,
        showMessage: showMessage,
        messageStyle: messageStyle,
        isOverlay: true,
        backgroundColor: backgroundColor,
      ),
    );
  }
}

// Example usage of loading overlay with custom duration
Future<void> showTimedLoadingOverlay(
  BuildContext context, {
  required Duration duration,
  String message = 'Loading...',
  LoadingIndicatorStyle style = LoadingIndicatorStyle.threeRotatingDots,
}) async {
  context.showLoadingOverlay(
    message: message,
    style: style,
  );

  await Future.delayed(duration);

  if (context.mounted) {
    Navigator.of(context).pop();
  }
}

// Example usage of loading overlay with async operation
Future<T> showLoadingOverlayUntilComplete<T>({
  required BuildContext context,
  required Future<T> Function() asyncOperation,
  String message = 'Loading...',
  LoadingIndicatorStyle style = LoadingIndicatorStyle.threeRotatingDots,
}) async {
  context.showLoadingOverlay(
    message: message,
    style: style,
  );

  try {
    final result = await asyncOperation();
    if (context.mounted) {
      Navigator.of(context).pop();
    }
    return result;
  } catch (e) {
    if (context.mounted) {
      Navigator.of(context).pop();
    }
    rethrow;
  }
}

// Example usage:
// Widget buildExampleUsage(BuildContext context) {
//   return Column(
//     children: [
//       // Basic usage
//       const LoadingIndicator(
//         message: 'Loading data...',
//         style: LoadingIndicatorStyle.threeRotatingDots,
//       ),
//
//       // Show loading overlay
//       ElevatedButton(
//         onPressed: () {
//           context.showLoadingOverlay(
//             message: 'Processing...',
//             style: LoadingIndicatorStyle.waveDots,
//           );
//         },
//         child: const Text('Show Loading Overlay'),
//       ),
//
//       // Show timed loading overlay
//       ElevatedButton(
//         onPressed: () async {
//           await showTimedLoadingOverlay(
//             context,
//             duration: const Duration(seconds: 2),
//             message: 'Please wait...',
//           );
//         },
//         child: const Text('Show Timed Loading'),
//       ),
//
//       // Show loading during async operation
//       ElevatedButton(
//         onPressed: () async {
//           await showLoadingOverlayUntilComplete(
//             context: context,
//             asyncOperation: () => Future.delayed(
//               const Duration(seconds: 2),
//               () => 'Operation completed',
//             ),
//             message: 'Processing request...',
//           );
//         },
//         child: const Text('Process with Loading'),
//       ),
//     ],
//   );
// }
