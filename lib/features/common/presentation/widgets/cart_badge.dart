import 'package:flutter/material.dart';

class CartBadge extends StatelessWidget {
  final int itemCount;

  const CartBadge({super.key, required this.itemCount});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(2),
      decoration: BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.circular(10),
      ),
      constraints: BoxConstraints(
        minWidth: 16,
        minHeight: 16,
      ),
      child: Text(
        '$itemCount',
        style: TextStyle(
          color: Colors.white,
          fontSize: 10,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
