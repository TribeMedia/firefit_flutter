import 'package:core/commerce/domain/models/product.dart';
import 'package:core/common/failures/failure.dart';
import 'package:core/schema.graphql.dart';
import 'package:fpdart/fpdart.dart';

abstract class ProductRepositoryInterface {
  Future<Either<Failure, List<Product>>> queryProducts({
    int? first,
    int? last,
    String? before,
    String? after,
    Input$ProductsFilter? filter,
    List<Input$ProductsOrderBy>? orderBy,
  });

  Future<Either<Failure, List<Product>>> queryFeaturedProducts();

  /// Subscribe to product changes
  /// Returns a stream of product lists that will emit when products are added, updated, or removed
  Stream<List<Product>> subscribeToProducts();
}
