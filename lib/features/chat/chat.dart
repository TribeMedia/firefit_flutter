import 'package:firefit/features/chat/chat_controller.dart';
import 'package:firefit/features/chat/chat_theme.dart';
import 'package:firefit/features/chat/database/message.dart';
import 'package:firefit/features/chat/database/user.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_highlight/flutter_highlight.dart';
import 'package:flutter_highlight/themes/dark.dart';
import 'package:flutter_highlight/themes/github.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:markdown/markdown.dart' as md;
import 'package:provider/provider.dart';
import 'package:share_plus/share_plus.dart';

class Chat extends StatelessWidget {
  final User user;
  final ChatController chatController;
  final ScrollController scrollController;
  final ChatTheme theme;
  final ChatTheme darkTheme;
  final ThemeMode themeMode;
  final Function(String) onMessageSend;

  const Chat({
    super.key,
    required this.user,
    required this.chatController,
    required this.scrollController,
    required this.theme,
    required this.darkTheme,
    this.themeMode = ThemeMode.system,
    required this.onMessageSend,
  });

  @override
  Widget build(BuildContext context) {
    final currentTheme = _getCurrentTheme(context);

    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(value: chatController),
        Provider.value(value: user),
        Provider.value(value: currentTheme),
      ],
      child: Builder(
        builder: (context) {
          final messages =
              context.watch<ChatController>().messages.reversed.toList();

          return Column(
            children: [
              Expanded(
                child: ListView.builder(
                  controller: scrollController,
                  itemCount: messages.length,
                  itemBuilder: (context, index) {
                    final message = messages[index];
                    return _MessageBubble(message: message);
                  },
                ),
              ),
              _InputField(onSend: onMessageSend),
            ],
          );
        },
      ),
    );
  }

  ChatTheme _getCurrentTheme(BuildContext context) {
    switch (themeMode) {
      case ThemeMode.light:
        return theme;
      case ThemeMode.dark:
        return darkTheme;
      case ThemeMode.system:
        final brightness = MediaQuery.of(context).platformBrightness;
        return brightness == Brightness.dark ? darkTheme : theme;
    }
  }
}

class _MessageBubble extends StatelessWidget {
  final Message message;

  const _MessageBubble({required this.message});

  @override
  Widget build(BuildContext context) {
    final theme = context.read<ChatTheme>();
    final user = context.read<User>();
    final isUserMessage = message.author?.userId == user.userId;
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      child: Column(
        crossAxisAlignment:
            isUserMessage ? CrossAxisAlignment.end : CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(
              left: isUserMessage ? 0 : 40,
              right: isUserMessage ? 40 : 0,
            ),
            child: Row(
              mainAxisAlignment: isUserMessage
                  ? MainAxisAlignment.end
                  : MainAxisAlignment.start,
              children: [
                if (!isUserMessage) ...[
                  IconButton(
                    icon: const Icon(Icons.share, size: 16),
                    onPressed: () => _shareContent(message.text, context),
                    tooltip: 'Share message',
                    style: ButtonStyle(
                      padding: WidgetStateProperty.all(EdgeInsets.zero),
                      minimumSize: WidgetStateProperty.all(Size(24, 24)),
                    ),
                  ),
                  IconButton(
                    icon: const Icon(Icons.copy, size: 16),
                    onPressed: () => _copyToClipboard(message.text, context),
                    tooltip: 'Copy message',
                    style: ButtonStyle(
                      padding: WidgetStateProperty.all(EdgeInsets.zero),
                      minimumSize: WidgetStateProperty.all(Size(24, 24)),
                    ),
                  ),
                ] else ...[
                  IconButton(
                    icon: const Icon(Icons.copy, size: 16),
                    onPressed: () => _copyToClipboard(message.text, context),
                    tooltip: 'Copy message',
                    style: ButtonStyle(
                      padding: WidgetStateProperty.all(EdgeInsets.zero),
                      minimumSize: WidgetStateProperty.all(Size(24, 24)),
                    ),
                  ),
                  IconButton(
                    icon: const Icon(Icons.share, size: 16),
                    onPressed: () => _shareContent(message.text, context),
                    tooltip: 'Share message',
                    style: ButtonStyle(
                      padding: WidgetStateProperty.all(EdgeInsets.zero),
                      minimumSize: WidgetStateProperty.all(Size(24, 24)),
                    ),
                  ),
                ],
              ],
            ),
          ),
          Row(
            mainAxisAlignment:
                isUserMessage ? MainAxisAlignment.end : MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (!isUserMessage)
                CircleAvatar(
                  radius: 16,
                  backgroundColor: theme.otherBubbleColor,
                  child: const Icon(
                    Icons.smart_toy_outlined, // Assistant icon
                    size: 20,
                    color: Colors.white,
                  ),
                ),
              const SizedBox(width: 8),
              Flexible(
                child: Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: isUserMessage
                        ? theme.userBubbleColor
                        : theme.otherBubbleColor,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      MarkdownBody(
                        data: message.text,
                        styleSheet: MarkdownStyleSheet(
                          p: TextStyle(
                            color: isUserMessage
                                ? theme.userTextColor
                                : theme.otherTextColor,
                          ),
                          code: TextStyle(
                            backgroundColor:
                                isDarkMode ? Colors.white10 : Colors.black12,
                            fontFamily: 'monospace',
                          ),
                        ),
                        builders: {
                          'code': CustomCodeBlockBuilder(
                            isDarkMode: isDarkMode,
                            onCopy: (code) => _copyToClipboard(code, context),
                            onShare: (code) => _shareContent(code, context),
                          ),
                        },
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(width: 8),
              if (isUserMessage)
                CircleAvatar(
                  radius: 16,
                  backgroundColor: theme.userBubbleColor,
                  child: const Icon(
                    Icons.person_outline, // User icon
                    size: 20,
                    color: Colors.white,
                  ),
                ),
            ],
          ),
        ],
      ),
    );
  }

  void _copyToClipboard(String text, BuildContext context) {
    Clipboard.setData(ClipboardData(text: text));
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('Copied to clipboard'),
        duration: Duration(seconds: 2),
      ),
    );
  }

  void _shareContent(String text, BuildContext context) {
    Share.share(text);
  }
}

class CustomCodeBlockBuilder extends MarkdownElementBuilder {
  final bool isDarkMode;
  final Function(String) onCopy;
  final Function(String) onShare;

  CustomCodeBlockBuilder({
    required this.isDarkMode,
    required this.onCopy,
    required this.onShare,
  });

  @override
  Widget? visitElementAfter(md.Element element, TextStyle? preferredStyle) {
    final String code = element.textContent;
    final String? language =
        element.attributes['class']?.replaceAll('language-', '');

    return Stack(
      children: [
        Container(
          margin: const EdgeInsets.only(top: 8, bottom: 8),
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: isDarkMode ? Colors.white10 : Colors.black12,
          ),
          child: HighlightView(
            code,
            language: language ?? 'plaintext',
            theme: isDarkMode ? darkTheme : githubTheme,
            padding: EdgeInsets.zero,
            textStyle: TextStyle(
              fontFamily: 'monospace',
              fontSize: 14,
            ),
          ),
        ),
        Positioned(
          top: 4,
          right: 4,
          child: Row(
            children: [
              IconButton(
                icon: const Icon(Icons.share, size: 16),
                onPressed: () => onShare(code),
                tooltip: 'Share code',
                style: ButtonStyle(
                  padding: WidgetStateProperty.all(EdgeInsets.zero),
                  minimumSize: WidgetStateProperty.all(Size(24, 24)),
                ),
              ),
              IconButton(
                icon: const Icon(Icons.copy, size: 16),
                onPressed: () => onCopy(code),
                tooltip: 'Copy code',
                style: ButtonStyle(
                  padding: WidgetStateProperty.all(EdgeInsets.zero),
                  minimumSize: WidgetStateProperty.all(Size(24, 24)),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class _InputField extends StatefulWidget {
  final Function(String) onSend;

  const _InputField({required this.onSend});

  @override
  _InputFieldState createState() => _InputFieldState();
}

class _InputFieldState extends State<_InputField> {
  final _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final theme = context.read<ChatTheme>();

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      color: theme.inputBackgroundColor,
      child: Row(
        children: [
          Expanded(
            child: TextField(
              controller: _controller,
              decoration: InputDecoration(
                hintText: 'Type a message...',
                border: InputBorder.none,
                fillColor: theme.inputFillColor,
                filled: true,
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              ),
            ),
          ),
          IconButton(
            icon: Icon(Icons.send, color: theme.sendButtonColor),
            onPressed: () {
              if (_controller.text.isNotEmpty) {
                widget.onSend(_controller.text);
                _controller.clear();
              }
            },
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
