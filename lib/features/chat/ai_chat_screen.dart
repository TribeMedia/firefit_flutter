import 'dart:async';

import 'package:cross_cache/cross_cache.dart';
import 'package:firefit/features/chat/chat.dart';
import 'package:firefit/features/chat/chat_controller.dart';
import 'package:firefit/features/chat/chat_theme.dart';
import 'package:firefit/features/chat/message.dart';
import 'package:firefit/features/chat/user.dart';
import 'package:firefit/features/common/domain/chat_completion_message.dart';
import 'package:firefit/features/common/providers/providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:uuid/uuid.dart';

typedef ChatHandler = dynamic Function(String message);

final chatControllerProvider = Provider((ref) => ChatController());

class AIChatScreen extends HookConsumerWidget {
  const AIChatScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final chatController = ref.watch(chatControllerProvider);
    final chatService = ref.read(chatServiceProvider);
    final user = User(id: 'user');
    final assistant = User(id: 'assistant', firstName: 'AI Assistant');

    useMemoized(() => CrossCache());
    final scrollController = useScrollController();

    Future<void> handleStreamResponse(
        Stream<String> stream, User assistant) async {
      Message? aiMessage;
      late final StreamSubscription<String> subscription;
      subscription = stream.listen(
        (chunk) {
          if (chunk.isNotEmpty) {
            if (aiMessage == null) {
              aiMessage = Message(
                author: assistant,
                createdAt: DateTime.now().millisecondsSinceEpoch,
                id: const Uuid().v4(),
                text: chunk,
              );
              chatController.addMessage(aiMessage!);
            } else {
              aiMessage = aiMessage!.copyWith(
                text: aiMessage!.text + chunk,
              );
              chatController.updateMessage(aiMessage!);
            }
          }
        },
        onError: (error) {
          chatController.addMessage(Message(
            author: assistant,
            createdAt: DateTime.now().millisecondsSinceEpoch,
            id: const Uuid().v4(),
            text: 'Sorry, I encountered an error. Please try again.',
          ));
        },
        onDone: () {
          subscription.cancel();
        },
      );
    }

    handleSendPressed(String message) async {
      final textMessage = Message(
        author: user,
        createdAt: DateTime.now().millisecondsSinceEpoch,
        id: const Uuid().v4(),
        text: message,
      );
      chatController.addMessage(textMessage);

      try {
        final chatStream = chatService.streamChat([
          ChatCompletionMessage(
            role: 'user',
            content: message,
          ),
        ]);
        await handleStreamResponse(chatStream, assistant);
      } catch (e) {
        final errorMessage = Message(
          author: assistant,
          createdAt: DateTime.now().millisecondsSinceEpoch,
          id: const Uuid().v4(),
          text: 'Sorry, I encountered an error. Please try again.',
        );
        chatController.addMessage(errorMessage);
      }
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('AI Diet Assistant'),
        centerTitle: true,
      ),
      body: Chat(
        user: user,
        chatController: chatController,
        scrollController: scrollController,
        theme: ChatTheme.light(),
        darkTheme: ChatTheme.dark(),
        themeMode: ThemeMode.system,
        onMessageSend: handleSendPressed,
      ),
    );
  }
}
