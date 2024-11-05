import 'package:firefit/features/commerce/presentation/screens/order_detail_screen.dart';
import 'package:flutter/material.dart';
import 'package:forui/forui.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

final orderHistoryProvider = FutureProvider<List<Order>>((ref) async {
  // Simulating API call to fetch order history
  await Future.delayed(Duration(seconds: 1));
  return [
    Order(
      id: '1001',
      date: DateTime.now().subtract(Duration(days: 2)),
      items: [
        OrderItem(name: 'Grilled Chicken Salad', quantity: 2, price: 12.99),
        OrderItem(name: 'Protein Shake', quantity: 1, price: 5.99),
      ],
      status: OrderStatus.delivered,
      trackingSteps: [],
    ),
    Order(
      id: '1002',
      date: DateTime.now().subtract(Duration(days: 5)),
      items: [
        OrderItem(name: 'Veggie Stir Fry', quantity: 1, price: 10.99),
        OrderItem(name: 'Fruit Smoothie', quantity: 2, price: 4.99),
      ],
      status: OrderStatus.delivered,
      trackingSteps: [],
    ),
    Order(
      id: '1003',
      date: DateTime.now().subtract(Duration(hours: 6)),
      items: [
        OrderItem(name: 'Protein Power Bowl', quantity: 1, price: 14.99),
        OrderItem(name: 'Green Tea', quantity: 1, price: 2.99),
      ],
      status: OrderStatus.inProgress,
      trackingSteps: [],
    ),
  ];
});

class OrderHistoryScreen extends HookConsumerWidget {
  const OrderHistoryScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final orderHistory = ref.watch(orderHistoryProvider);

    return FScaffold(
      header: FHeader(
        title: Text('Order History'),
      ),
      content: orderHistory.when(
        data: (orders) => ListView.builder(
          itemCount: orders.length,
          itemBuilder: (context, index) {
            final order = orders[index];
            return ShadCard(
              child: ListTile(
                title: Text('Order #${order.id}'),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(DateFormat('MMM d, y - h:mm a').format(order.date)),
                    Text('Total: \$${order.total.toStringAsFixed(2)}'),
                    Text(
                        'Status: ${order.status == OrderStatus.inProgress ? 'In Progress' : 'Delivered'}'),
                    Text('Last item: ${order.items.last.name}'),
                  ],
                ),
                trailing: ShadButton(
                  icon: Icon(Icons.arrow_forward_ios),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            OrderDetailScreen(orderId: order.id),
                      ),
                    );
                  },
                ),
              ),
            );
          },
        ),
        loading: () => Center(child: CircularProgressIndicator()),
        error: (error, stack) => Center(child: Text('Error: $error')),
      ),
    );
  }
}
