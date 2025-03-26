import 'package:core/commerce/tax/domain/services/stripe_payment_service_interface.dart';
import 'package:core/common/failures/failure.dart';
import 'package:core/config/env.dart';
import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';

class StripePaymentService implements StripePaymentServiceInterface {
  final EnvInterface env;

  StripePaymentService({required this.env});
  @override
  Future<Either<Failure, PaymentIntentResponse>> createPaymentIntent(
      {required PaymentIntentRequest request}) async {
    final stripeSecretKey = env.stripeSecretKey;

    final dio = Dio();
    try {
      // Replace with your actual server URL
      final url =
          '${env.supabaseBaseUrl}/functions/v1/stripe-create-payment-intent';

      final response = await dio.post(
        url,
        options: Options(
          headers: {
            'Content-Type': 'application/json',
            'Authorization': 'Bearer $stripeSecretKey',
          },
        ),
        data: request,
      );

      if (response.statusCode == 200) {
        return right(PaymentIntentResponse.fromJson(response.data)
            .copyWith(success: true));
      } else {
        return left(Failure.unprocessableEntity(
            message: 'Failed to create payment intent'));
      }
    } catch (e) {
      return left(Failure.unprocessableEntity(message: e.toString()));
    }
  }
}
