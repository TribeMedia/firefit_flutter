import 'package:core/common/failures/failure.dart';
import 'package:fpdart/fpdart.dart';

class TaxResponse {
  const TaxResponse({
    required this.zipCode,
    required this.totalRate,
    required this.stateRate,
    required this.cityRate,
    required this.countyRate,
    required this.additionalRate,
  });

  final String zipCode;
  final double totalRate;
  final double stateRate;
  final double cityRate;
  final double countyRate;
  final double additionalRate;

  /// Factory constructor for creating a new [TaxResponse] instance from a JSON object.
  factory TaxResponse.fromJson(Map<String, dynamic> json) {
    return TaxResponse(
      zipCode: json['zip_code'] as String,
      totalRate: json['total_rate'] as double,
      stateRate: json['state_rate'] as double,
      cityRate: json['city_rate'] as double,
      countyRate: json['county_rate'] as double,
      additionalRate: json['additional_rate'] as double,
    );
  }

  /// Converts this [TaxResponse] instance to a JSON object.
  Map<String, dynamic> toJson() {
    return {
      'zip_code': zipCode,
      'total_rate': totalRate,
      'state_rate': stateRate,
      'city_rate': cityRate,
      'county_rate': countyRate,
      'additional_rate': additionalRate,
    };
  }

  @override
  String toString() {
    return 'TaxResponse{zipCode: $zipCode, totalRate: $totalRate, stateRate: $stateRate, '
        'cityRate: $cityRate, countyRate: $countyRate, additionalRate: $additionalRate}';
  }
}

abstract class SalesTaxServiceInterface {
  Future<Either<Failure, TaxResponse>> calculateTax(
      {required double amount, required String zipCode});
}
