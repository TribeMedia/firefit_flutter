import 'package:core/commerce/tax/domain/services/sales_tax_service_interface.dart';
import 'package:core/config/env.dart';
import 'package:core/core.dart';
import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';
import 'package:talker_flutter/talker_flutter.dart';

class SalesTaxService implements SalesTaxServiceInterface {
  SalesTaxService({
    required this.talker,
    required this.env,
  });

  final Talker talker;
  final EnvInterface env;
  late Dio _dio;

  Dio get dio {
    _dio = Dio(
      BaseOptions(
        baseUrl: env.apiNinjasUrl,
        headers: {
          'X-Api-Key': env.apiNinjasKey,
        },
      ),
    );
    if (_dio.interceptors.isEmpty) {
      _dio.interceptors.add(InterceptorsWrapper(
        onRequest: (options, handler) {
          options.headers['X-Api-Key'] = env.apiNinjasKey;
          handler.next(options);
        },
      ));
    }
    return _dio;
  }

  @override
  Future<Either<Failure, TaxResponse>> calculateTax(
      {required double amount, required String zipCode}) async {
    try {
      final response = await dio.get(
        '',
        queryParameters: {
          'zip_code': zipCode,
        },
      );
      if (response.statusCode != 200) {
        return Left(
            Failure.unprocessableEntity(message: 'Failed to get sales tax'));
      }

      final data = response.data;

      talker.info('Sales tax response: $data');

      if (data == null) {
        return Left(
            Failure.unprocessableEntity(message: 'Invalid response format'));
      }

      try {
        final taxRate = data[0] as Map;
        final stateRateValue = double.tryParse(taxRate['state_rate']);
        final taxResponse = TaxResponse(
          zipCode: zipCode,
          totalRate: stateRateValue ?? 0,
          stateRate: stateRateValue ?? 0,
          cityRate:
              double.tryParse(taxRate['city_rate']) ?? stateRateValue ?? 0,
          countyRate:
              double.tryParse(taxRate['county_rate']) ?? stateRateValue ?? 0,
          additionalRate: double.tryParse(taxRate['additional_rate']) ??
              stateRateValue ??
              0,
        );
        return Right(taxResponse);
      } catch (e) {
        talker.error('Error parsing tax response: $e');
        return Left(Failure.unprocessableEntity(
            message: 'Failed to parse tax response'));
      }
    } catch (e) {
      return Left(Failure.unprocessableEntity(message: e.toString()));
    }
  }
}
