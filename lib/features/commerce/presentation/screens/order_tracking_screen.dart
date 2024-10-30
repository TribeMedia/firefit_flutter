import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';

final orderTrackingProvider =
    FutureProvider.family<Order, String>((ref, orderId) async {
  // Simulating API call to fetch order details
  await Future.delayed(Duration(seconds: 1));
  return Order(
    id: orderId,
    date: DateTime.now().subtract(Duration(hours: 2)),
    items: [
      OrderItem(name: 'Grilled Chicken Salad', quantity: 2, price: 12.99),
      OrderItem(name: 'Protein Shake', quantity: 1, price: 5.99),
    ],
    status: OrderStatus.inProgress,
    trackingSteps: [
      TrackingStep(
          status: 'Order Placed',
          timestamp: DateTime.now().subtract(Duration(hours: 2))),
      TrackingStep(
          status: 'Preparing',
          timestamp: DateTime.now().subtract(Duration(hours: 1, minutes: 30))),
      TrackingStep(
          status: 'Ready for Pickup',
          timestamp: DateTime.now().subtract(Duration(minutes: 30))),
    ],
  );
});

class Order {
  final String id;
  final DateTime date;
  final List<OrderItem> items;
  final OrderStatus status;
  final List<TrackingStep> trackingSteps;

  Order(
      {required this.id,
      required this.date,
      required this.items,
      required this.status,
      required this.trackingSteps});

  double get total =>
      items.fold(0, (sum, item) => sum + (item.price * item.quantity));
}

class OrderItem {
  final String name;
  final int quantity;
  final double price;

  OrderItem({required this.name, required this.quantity, required this.price});
}

class TrackingStep {
  final String status;
  final DateTime timestamp;

  TrackingStep({required this.status, required this.timestamp});
}

enum OrderStatus { inProgress, delivered }

class OrderTrackingScreen extends HookConsumerWidget {
  final String orderId;

  OrderTrackingScreen({required this.orderId});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final orderTracking = ref.watch(orderTrackingProvider(orderId));

    return Scaffold(
      appBar: AppBar(
        title: Text('Order Tracking'),
      ),
      body: orderTracking.when(
        data: (order) => SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Order #${order.id}',
                    style: Theme.of(context).textTheme.titleLarge),
                SizedBox(height: 8),
                Text(
                    'Placed on ${DateFormat('MMM d, y - h:mm a').format(order.date)}'),
                SizedBox(height: 16),
                _buildTrackingTimeline(context, order.trackingSteps),
                SizedBox(height: 24),
                Text('Order Details',
                    style: Theme.of(context).textTheme.titleLarge),
                SizedBox(height: 8),
                ...order.items.map((item) => _buildOrderItemTile(item)),
                SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Total:',
                        style: Theme.of(context).textTheme.titleMedium),
                    Text('\$${order.total.toStringAsFixed(2)}',
                        style: Theme.of(context).textTheme.titleMedium),
                  ],
                ),
              ],
            ),
          ),
        ),
        loading: () => Center(child: CircularProgressIndicator()),
        error: (error, stack) => Center(child: Text('Error: $error')),
      ),
    );
  }

  Widget _buildTrackingTimeline(
      BuildContext context, List<TrackingStep> steps) {
    return Column(
      children: steps.asMap().entries.map((entry) {
        final index = entry.key;
        final step = entry.value;
        final isLast = index == steps.length - 1;

        return Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              children: [
                Container(
                  width: 20,
                  height: 20,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Theme.of(context).primaryColor,
                  ),
                  child: Icon(Icons.check, size: 12, color: Colors.white),
                ),
                if (!isLast)
                  Container(
                    width: 2,
                    height: 40,
                    color: Theme.of(context).primaryColor,
                  ),
              ],
            ),
            SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(step.status,
                      style: Theme.of(context).textTheme.titleMedium),
                  Text(DateFormat('MMM d, y - h:mm a').format(step.timestamp)),
                  SizedBox(height: isLast ? 0 : 24),
                ],
              ),
            ),
          ],
        );
      }).toList(),
    );
  }

  Widget _buildOrderItemTile(OrderItem item) {
    return ListTile(
      title: Text(item.name),
      subtitle: Text('Quantity: ${item.quantity}'),
      trailing: Text('\$${(item.price * item.quantity).toStringAsFixed(2)}'),
    );
  }
}
