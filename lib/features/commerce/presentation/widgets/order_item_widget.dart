import 'package:core/core.dart';
import 'package:firefit/features/commerce/presentation/providers/providers.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

class OrderItemWidget extends ConsumerWidget {
  final Order order;
  final VoidCallback onTap;

  const OrderItemWidget({
    super.key,
    required this.order,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ShadTheme.of(context);
    final dateFormat = DateFormat('MMM d, yyyy • h:mm a');
    final formattedDate = dateFormat.format(order.createdAt);

    // Get order totals from provider
    final orderTotals = ref.watch(orderTotalsProvider(order));
    final totalItems = orderTotals.itemCount;
    final formattedAmount = orderTotals.formattedSubtotal;

    // Determine if order is waiting to be filled
    final isWaiting = order.orderStatus == Enum$OrderStatus.in_progress ||
        order.orderStatus == Enum$OrderStatus.out_for_delivery ||
        order.orderStatus == Enum$OrderStatus.placed ||
        order.orderStatus == Enum$OrderStatus.made;

    return ShadCard(
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(8),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Order #${order.id.substring(0, 8)}',
                    style: theme.textTheme.h4,
                  ),
                  if (isWaiting)
                    ShadBadge(
                      backgroundColor: Colors.amber.shade100,
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(
                            Icons.access_time,
                            size: 14,
                            color: Colors.amber.shade800,
                          ),
                          const SizedBox(width: 4),
                          Text(
                            'Waiting',
                            style: theme.textTheme.small.copyWith(
                              color: Colors.amber.shade800,
                            ),
                          ),
                        ],
                      ),
                    ),
                ],
              ),
              const SizedBox(height: 8),
              Text(
                formattedDate,
                style: theme.textTheme.muted,
              ),
              const SizedBox(height: 12),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '$totalItems ${totalItems == 1 ? 'item' : 'items'}',
                    style: theme.textTheme.p,
                  ),
                  Text(
                    formattedAmount,
                    style: theme.textTheme.p.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _buildStatusBadge(context, ref, order.orderStatus),
                  const Icon(
                    Icons.chevron_right,
                    color: Colors.grey,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildStatusBadge(
      BuildContext context, WidgetRef ref, Enum$OrderStatus status) {
    final theme = ShadTheme.of(context);

    // Get label and color from providers
    final label = ref.watch(orderStatusLabelProvider(status));
    final color = ref.watch(orderStatusColorProvider(status));

    // Create lighter background color and darker text color
    final backgroundColor = color.withAlpha((255 * 0.15).toInt());
    final textColor = color.withAlpha((255 * 0.8).toInt());

    return ShadBadge(
      backgroundColor: backgroundColor,
      child: Text(
        label,
        style: theme.textTheme.small.copyWith(
          color: textColor,
        ),
      ),
    );
  }
}
