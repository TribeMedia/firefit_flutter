import 'package:flutter/material.dart';

class AiAssistantFab extends StatelessWidget {
  final VoidCallback onPressed;

  const AiAssistantFab({
    super.key,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: onPressed,
      child: const Icon(Icons.chat),
    );
  }
}
