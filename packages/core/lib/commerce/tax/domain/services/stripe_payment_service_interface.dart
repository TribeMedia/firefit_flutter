import 'package:core/common/failures/failure.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'stripe_payment_service_interface.g.dart';
part 'stripe_payment_service_interface.freezed.dart';

@freezed
abstract class PaymentIntentResponse with _$PaymentIntentResponse {
  const factory PaymentIntentResponse({
    required String clientSecret,
    required String paymentIntentId,
    bool? success,
    String? errorMessage,
  }) = _PaymentIntentResponse;

  factory PaymentIntentResponse.fromJson(Map<String, dynamic> json) =>
      _$PaymentIntentResponseFromJson(json);
}

@freezed
abstract class PaymentIntentRequest with _$PaymentIntentRequest {
  const factory PaymentIntentRequest({
    required String currency,
    required double amount,
    Map<String, dynamic>? metadata,
  }) = _PaymentIntentRequest;

  factory PaymentIntentRequest.fromJson(Map<String, dynamic> json) =>
      _$PaymentIntentRequestFromJson(json);
}

abstract class StripePaymentServiceInterface {
  Future<Either<Failure, PaymentIntentResponse>> createPaymentIntent(
      {required PaymentIntentRequest request});
}
