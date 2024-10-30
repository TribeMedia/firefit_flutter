import 'package:flutter/material.dart';

class ChatTheme {
  final Color backgroundColor;
  final Color userBubbleColor;
  final Color otherBubbleColor;
  final Color userTextColor;
  final Color otherTextColor;
  final Color inputBackgroundColor;
  final Color inputFillColor;
  final Color sendButtonColor;

  const ChatTheme({
    required this.backgroundColor,
    required this.userBubbleColor,
    required this.otherBubbleColor,
    required this.userTextColor,
    required this.otherTextColor,
    required this.inputBackgroundColor,
    required this.inputFillColor,
    required this.sendButtonColor,
  });

  factory ChatTheme.light() {
    return const ChatTheme(
      backgroundColor: Colors.white,
      userBubbleColor: Colors.blue,
      otherBubbleColor: Colors.grey,
      userTextColor: Colors.white,
      otherTextColor: Colors.black,
      inputBackgroundColor: Colors.white,
      inputFillColor: Colors.grey,
      sendButtonColor: Colors.blue,
    );
  }

  factory ChatTheme.dark() {
    return const ChatTheme(
      backgroundColor: Color(0xFF121212),
      userBubbleColor: Colors.blue,
      otherBubbleColor: Colors.grey,
      userTextColor: Colors.white,
      otherTextColor: Colors.white,
      inputBackgroundColor: Color(0xFF1E1E1E),
      inputFillColor: Color(0xFF2C2C2C),
      sendButtonColor: Colors.blue,
    );
  }
}