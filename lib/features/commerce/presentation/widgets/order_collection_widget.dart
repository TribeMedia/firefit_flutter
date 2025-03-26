import 'package:core/core.dart';
import 'package:firefit/features/commerce/presentation/screens/order_detail_screen.dart';
import 'package:firefit/features/commerce/presentation/widgets/order_item_widget.dart';
import 'package:flutter/material.dart';

class OrderCollectionWidget extends StatelessWidget {
  final List<Order> orders;

  const OrderCollectionWidget({
    super.key,
    required this.orders,
  });

  @override
  Widget build(BuildContext context) {
    // Sort orders from newest to oldest
    final sortedOrders = List<Order>.from(orders)
      ..sort((a, b) => b.createdAt.compareTo(a.createdAt));

    return ListView.builder(
      padding: const EdgeInsets.all(16.0),
      itemCount: sortedOrders.length,
      itemBuilder: (context, index) {
        final order = sortedOrders[index];
        return OrderItemWidget(
          order: order,
          onTap: () {
            // Navigate to order detail screen
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => OrderDetailScreen(order: order),
              ),
            );
          },
        );
      },
    );
  }
}
