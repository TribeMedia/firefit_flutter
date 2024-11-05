import 'package:core/commerce/domain/models/billing_address.dart';

class PaymentInfo {
  final String id;
  final PaymentMethod method;
  final PaymentStatus status;
  final double amount;
  final String currency;
  final DateTime timestamp;
  final String? transactionId;
  final String? receiptUrl;
  final Map<String, dynamic>? paymentDetails;
  final BillingAddress? billingAddress;
  final Map<String, dynamic>? metadata;

  const PaymentInfo({
    required this.id,
    required this.method,
    required this.status,
    required this.amount,
    required this.currency,
    required this.timestamp,
    this.transactionId,
    this.receiptUrl,
    this.paymentDetails,
    this.billingAddress,
    this.metadata,
  });

  Map<String, dynamic> toJson() => {
        'id': id,
        'method': method.toString(),
        'status': status.toString(),
        'amount': amount,
        'currency': currency,
        'timestamp': timestamp.toIso8601String(),
        if (transactionId != null) 'transactionId': transactionId,
        if (receiptUrl != null) 'receiptUrl': receiptUrl,
        if (paymentDetails != null) 'paymentDetails': paymentDetails,
        if (billingAddress != null) 'billingAddress': billingAddress!.toJson(),
        if (metadata != null) 'metadata': metadata,
      };

  factory PaymentInfo.fromJson(Map<String, dynamic> json) => PaymentInfo(
        id: json['id'] as String,
        method: PaymentMethod.values
            .firstWhere((e) => e.toString() == json['method']),
        status: PaymentStatus.values
            .firstWhere((e) => e.toString() == json['status']),
        amount: (json['amount'] as num).toDouble(),
        currency: json['currency'] as String,
        timestamp: DateTime.parse(json['timestamp']),
        transactionId: json['transactionId'] as String?,
        receiptUrl: json['receiptUrl'] as String?,
        paymentDetails: json['paymentDetails'] as Map<String, dynamic>?,
        billingAddress: json['billingAddress'] != null
            ? BillingAddress.fromJson(json['billingAddress'])
            : null,
        metadata: json['metadata'] as Map<String, dynamic>?,
      );
}

enum PaymentMethod {
  creditCard,
  debitCard,
  paypal,
  applePay,
  googlePay,
  cash,
  other
}

enum PaymentStatus {
  pending,
  authorized,
  completed,
  failed,
  refunded,
  cancelled
}
