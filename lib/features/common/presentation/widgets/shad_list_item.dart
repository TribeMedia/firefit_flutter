import 'package:flutter/material.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

class ShadListItem extends StatelessWidget {
  final Widget? leading;
  final Widget title;
  final Widget? subtitle;
  final Widget price;
  final Widget actionButton;
  final VoidCallback? onTap;
  final EdgeInsetsGeometry contentPadding;

  const ShadListItem({
    super.key,
    this.leading,
    required this.title,
    this.subtitle,
    required this.price,
    required this.actionButton,
    this.onTap,
    this.contentPadding = const EdgeInsets.symmetric(
      horizontal: 16.0,
      vertical: 12.0,
    ),
  });

  @override
  Widget build(BuildContext context) {
    final theme = ShadTheme.of(context);

    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: contentPadding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                if (leading != null) ...[
                  ConstrainedBox(
                    constraints: const BoxConstraints(
                      minWidth: 72,
                      maxWidth: 72,
                      minHeight: 72,
                      maxHeight: 72,
                    ),
                    child: leading!,
                  ),
                  const SizedBox(width: 16),
                ],
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      DefaultTextStyle(
                        style: theme.textTheme.h4,
                        child: title,
                      ),
                      if (subtitle != null) ...[
                        const SizedBox(height: 4),
                        DefaultTextStyle(
                          style: theme.textTheme.small.copyWith(
                            color: theme.colorScheme.mutedForeground,
                          ),
                          child: subtitle!,
                        ),
                      ],
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                price,
                actionButton,
              ],
            ),
          ],
        ),
      ),
    );
  }
}