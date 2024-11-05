import 'package:fpdart/fpdart.dart';
import 'package:core/common/failures/failure.dart';
import 'package:core/meals/domain/models/menu.dart';

abstract class MealRepository {
  Future<Either<Failure, List<Menu>>> getProviderMenus(String providerId);
}
