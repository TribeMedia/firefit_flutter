import 'package:core/core.dart';
import 'package:firefit/features/commerce/presentation/providers/providers.dart';
import 'package:firefit/features/commerce/providers/providers.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

class OrderDetailScreen extends ConsumerWidget {
  final Order order;

  const OrderDetailScreen({
    super.key,
    required this.order,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final shadTheme = ShadTheme.of(context);
    final dateFormat = DateFormat('MMMM d, yyyy • h:mm a');
    final formattedDate = dateFormat.format(order.createdAt);

    // Get order totals from provider
    final orderTotals = ref.watch(orderTotalsProvider(order));

    return Scaffold(
      appBar: AppBar(
        title: Text('Order Details', style: shadTheme.textTheme.h3),
      ),
      body: Column(
        children: [
          // Header with total order information
          _buildOrderHeader(
              context, ref, formattedDate, orderTotals.formattedTotal),

          // List of order items (scrollable)
          Expanded(
            child: _buildOrderItemsList(context),
          ),

          // Pinned bottom pane showing order amount totals
          _buildOrderTotals(context, ref, orderTotals, order.deliveryZip!),
        ],
      ),
    );
  }

  Widget _buildOrderHeader(BuildContext context, WidgetRef ref,
      String formattedDate, String formattedAmount) {
    final theme = Theme.of(context);
    final shadTheme = ShadTheme.of(context);

    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: theme.scaffoldBackgroundColor,
        boxShadow: [
          BoxShadow(
            color: Color.fromRGBO(0, 0, 0, 0.05),
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Order #${order.id.substring(0, 8)}',
                style: shadTheme.textTheme.h3,
              ),
              _buildStatusBadge(context, ref, order.orderStatus),
            ],
          ),
          const SizedBox(height: 8),
          Text(
            formattedDate,
            style: shadTheme.textTheme.muted,
          ),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Total Amount:',
                style: shadTheme.textTheme.p,
              ),
              Text(
                formattedAmount,
                style: shadTheme.textTheme.h4.copyWith(
                  color: theme.primaryColor,
                ),
              ),
            ],
          ),
          if (order.notes != null && order.notes!.isNotEmpty) ...[
            const SizedBox(height: 16),
            Text(
              'Notes:',
              style: shadTheme.textTheme.p.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              order.notes!,
              style: shadTheme.textTheme.p,
            ),
          ],
        ],
      ),
    );
  }

  Widget _buildOrderItemsList(BuildContext context) {
    final shadTheme = ShadTheme.of(context);

    final collection = order.orderItemsCollection;
    final edges = collection?.edges;
    
    if (collection == null || edges == null || edges.isEmpty) {
      return Center(
        child: Text(
          'No items in this order',
          style: shadTheme.textTheme.p,
        ),
      );
    }

    return ListView.separated(
      padding: const EdgeInsets.all(16.0),
      // We've checked that edges isn't null above
      itemCount: edges.length,
      separatorBuilder: (context, index) => const Divider(),
      itemBuilder: (context, index) {
        final item = edges[index].node;
        final product = item.product;
        final totalPrice = item.unitPrice * item.quantity;
        final formattedPrice =
            NumberFormat.currency(symbol: '\$').format(totalPrice);

        return ListTile(
          contentPadding: EdgeInsets.zero,
          leading: product?.photoUrl != null && product!.photoUrl!.isNotEmpty
              ? ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.network(
                    product.photoUrl!,
                    width: 60,
                    height: 60,
                    fit: BoxFit.cover,
                  ),
                )
              : Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: const Icon(Icons.fastfood, color: Colors.grey),
                ),
          title: Text(
            product?.name ?? 'Unknown Product',
            style: shadTheme.textTheme.p.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
          subtitle: Text(
            '${item.quantity} × ${NumberFormat.currency(symbol: '\$').format(item.unitPrice)}',
            style: shadTheme.textTheme.small,
          ),
          trailing: Text(
            formattedPrice,
            style: shadTheme.textTheme.p.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
        );
      },
    );
  }

  Widget _buildOrderTotals(BuildContext context, WidgetRef ref,
      OrderTotals orderTotals, String zipCode) {
    final theme = Theme.of(context);
    final shadTheme = ShadTheme.of(context);

    final taxRate = ref.watch(salesTaxProvider(zipCode));

    return taxRate.when(
      data: (data) {
        final taxAmount = data;

        final formattedTax =
            NumberFormat.decimalPercentPattern(decimalDigits: 2)
                .format(taxAmount.stateRate);

        final taxedTotal =
            orderTotals.subtotal + (orderTotals.subtotal * taxAmount.stateRate);

        final formattedTotal =
            NumberFormat.currency(symbol: '\$').format(taxedTotal);

        return Container(
          padding: const EdgeInsets.all(16.0),
          decoration: BoxDecoration(
            color: theme.scaffoldBackgroundColor,
            boxShadow: [
              BoxShadow(
                color: Color.fromRGBO(0, 0, 0, 0.1),
                blurRadius: 4,
                offset: const Offset(0, -2),
              ),
            ],
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Subtotal',
                    style: shadTheme.textTheme.p,
                  ),
                  Text(
                    orderTotals.formattedSubtotal,
                    style: shadTheme.textTheme.p,
                  ),
                ],
              ),
              const SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Tax ($formattedTax)',
                    style: shadTheme.textTheme.p,
                  ),
                  Text(
                    formattedTax,
                    style: shadTheme.textTheme.p,
                  ),
                ],
              ),
              const Divider(height: 24),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Total',
                    style: shadTheme.textTheme.p.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    formattedTotal,
                    style: shadTheme.textTheme.h4.copyWith(
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
      error: (error, _) => Center(
        child: Text('Error: $error'),
      ),
      loading: () => const Center(
        child: CircularProgressIndicator(),
      ),
    );
  }

  Widget _buildStatusBadge(
      BuildContext context, WidgetRef ref, Enum$OrderStatus status) {
    final shadTheme = ShadTheme.of(context);

    // Get label and color from providers
    final label = ref.watch(orderStatusLabelProvider(status));
    final color = ref.watch(orderStatusColorProvider(status));

    // Create lighter background color and darker text color
    final backgroundColor = color.withValues(
      alpha: color.a * 0.15,
      red: color.r.toDouble(),
      green: color.g.toDouble(),
      blue: color.b.toDouble(),
    );
    final textColor = color.withValues(
      alpha: color.a * 0.8,
      red: color.r.toDouble(),
      green: color.g.toDouble(),
      blue: color.b.toDouble(),
    );

    return ShadBadge(
      backgroundColor: backgroundColor,
      child: Text(
        label,
        style: shadTheme.textTheme.small.copyWith(
          color: textColor,
        ),
      ),
    );
  }
}
