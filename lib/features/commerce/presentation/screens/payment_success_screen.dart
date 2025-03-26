import 'dart:convert';

import 'package:firefit/env/env.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:http/http.dart' as http;
import 'package:icons_plus/icons_plus.dart';
import 'package:lottie/lottie.dart';

// Payment verification provider to fetch payment details
final paymentSessionProvider =
    FutureProvider.family<Map<String, dynamic>?, String?>(
        (ref, sessionId) async {
  if (sessionId == null) return null;

  try {
    final response = await http.post(
      Uri.parse(
          '${Environment().supabaseBaseUrl}/functions/v1/verify-payment-session'),
      headers: {
        'Content-Type': 'application/json',
      },
      body: jsonEncode({'sessionId': sessionId}),
    );

    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    }
    return null;
  } catch (e) {
    return null;
  }
});

class PaymentSuccessScreen extends ConsumerWidget {
  const PaymentSuccessScreen({super.key, this.sessionId});

  final String? sessionId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final paymentDetailsAsync = ref.watch(paymentSessionProvider(sessionId));

    return Scaffold(
      appBar: AppBar(
        title: const Text('Payment Successful'),
        automaticallyImplyLeading: false,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 24),
                // Success animation
                SizedBox(
                  height: 200,
                  width: 200,
                  child: Lottie.asset(
                    'assets/animations/payment-success.json',
                    repeat: false,
                  ),
                )
                    .animate()
                    .fadeIn(duration: const Duration(milliseconds: 500))
                    .scale(delay: const Duration(milliseconds: 200)),
                const SizedBox(height: 24),

                // Success message
                Text(
                  'Payment Completed Successfully!',
                  style: theme.textTheme.headlineSmall?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: theme.colorScheme.primary,
                  ),
                  textAlign: TextAlign.center,
                )
                    .animate()
                    .fadeIn(delay: const Duration(milliseconds: 300))
                    .slideY(begin: 0.3, end: 0),
                const SizedBox(height: 16),

                // Subtitle
                Text(
                  'Thank you for your purchase',
                  style: theme.textTheme.titleMedium?.copyWith(
                    color: theme.colorScheme.onSurface.withOpacity(0.7),
                  ),
                  textAlign: TextAlign.center,
                ).animate().fadeIn(delay: const Duration(milliseconds: 400)),
                const SizedBox(height: 32),

                // Transaction details card
                paymentDetailsAsync.when(
                  data: (paymentDetails) => _buildTransactionDetailsCard(
                    context,
                    theme,
                    paymentDetails,
                  )
                      .animate()
                      .fadeIn(delay: const Duration(milliseconds: 500))
                      .slideY(begin: 0.2, end: 0),
                  loading: () => const Center(
                    child: CircularProgressIndicator(),
                  ),
                  error: (_, __) => _buildTransactionDetailsCard(
                    context,
                    theme,
                    null,
                  )
                      .animate()
                      .fadeIn(delay: const Duration(milliseconds: 500))
                      .slideY(begin: 0.2, end: 0),
                ),
                const SizedBox(height: 32),

                // Action buttons
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: theme.colorScheme.primary,
                        foregroundColor: theme.colorScheme.onPrimary,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 24, vertical: 16),
                      ),
                      onPressed: () => context.go('/orders'),
                      icon: const Icon(Icons.receipt_long),
                      label: const Text('View Orders'),
                    ),
                    const SizedBox(width: 16),
                    OutlinedButton.icon(
                      style: OutlinedButton.styleFrom(
                        foregroundColor: theme.colorScheme.primary,
                        side: BorderSide(color: theme.colorScheme.primary),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 24, vertical: 16),
                      ),
                      onPressed: () => context.go('/home'),
                      icon: const Icon(Icons.home_outlined),
                      label: const Text('Home'),
                    ),
                  ],
                ).animate().fadeIn(delay: const Duration(milliseconds: 700)),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildTransactionDetailsCard(
    BuildContext context,
    ThemeData theme,
    Map<String, dynamic>? paymentDetails,
  ) {
    final String amount = paymentDetails?['amount'] != null
        ? '\$${(paymentDetails!['amount'] / 100).toStringAsFixed(2)}'
        : 'N/A';

    final String paymentMethod = paymentDetails?['payment_method_types'] != null
        ? paymentDetails!['payment_method_types'][0] ?? 'Credit Card'
        : 'Credit Card';

    final String orderNumber = paymentDetails?['order_id'] ?? 'N/A';

    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(
                  Icons.check_circle,
                  color: Colors.green,
                  size: 28,
                ),
                const SizedBox(width: 10),
                Text(
                  'Transaction Details',
                  style: theme.textTheme.titleLarge?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const Divider(height: 30),
            _buildDetailRow(
              context,
              'Transaction ID',
              sessionId ?? 'N/A',
              Icons.numbers,
            ),
            const SizedBox(height: 16),
            _buildDetailRow(
              context,
              'Order Number',
              orderNumber,
              Icons.receipt,
            ),
            const SizedBox(height: 16),
            _buildDetailRow(
              context,
              'Amount',
              amount,
              Icons.attach_money,
              valueColor: theme.colorScheme.primary,
            ),
            const SizedBox(height: 16),
            _buildDetailRow(
              context,
              'Date',
              _formatCurrentDate(),
              Icons.calendar_today,
            ),
            const SizedBox(height: 16),
            _buildDetailRow(
              context,
              'Payment Method',
              _formatPaymentMethod(paymentMethod),
              FontAwesome.credit_card,
            ),
            const SizedBox(height: 16),
            _buildDetailRow(
              context,
              'Status',
              'Completed',
              Icons.verified,
              valueColor: Colors.green,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDetailRow(
    BuildContext context,
    String label,
    String value,
    IconData icon, {
    Color? valueColor,
  }) {
    final theme = Theme.of(context);
    return Row(
      children: [
        Icon(
          icon,
          size: 20,
          color: theme.colorScheme.primary.withOpacity(0.7),
        ),
        const SizedBox(width: 10),
        Expanded(
          flex: 2,
          child: Text(
            label,
            style: theme.textTheme.bodyLarge?.copyWith(
              color: theme.colorScheme.onSurface.withOpacity(0.7),
            ),
          ),
        ),
        Expanded(
          flex: 3,
          child: Text(
            value,
            style: theme.textTheme.bodyLarge?.copyWith(
              fontWeight: FontWeight.w500,
              color: valueColor ?? theme.colorScheme.onSurface,
            ),
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ],
    );
  }

  String _formatCurrentDate() {
    final now = DateTime.now();
    return '${now.day}/${now.month}/${now.year}';
  }

  String _formatPaymentMethod(String method) {
    // Capitalize first letter of each word
    final words = method.split('_');
    final formattedWords = words.map((word) {
      if (word.isEmpty) return '';
      return word[0].toUpperCase() + word.substring(1).toLowerCase();
    });
    return formattedWords.join(' ');
  }
}
