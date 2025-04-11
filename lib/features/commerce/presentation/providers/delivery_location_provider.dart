import 'package:core/commerce/commerce.dart';
import 'package:core/common/failures/failure.dart';
import 'package:firefit/features/auth/providers/user_notifier.dart';
import 'package:firefit/features/commerce/presentation/providers/providers.dart';
import 'package:fpdart/fpdart.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

/// A model that combines a DeliveryLocation with its associated DeliveryPeriod information
class DeliveryLocationWithPeriod {
  final DeliveryLocation location;

  DeliveryLocationWithPeriod({
    required this.location,
  });
}

/// Provider that fetches delivery locations with their associated delivery periods
final siteDeliveryLocationWithPeriodProvider =
    FutureProvider<Either<Failure, List<DeliveryLocation>>>((ref) async {
  final repository = ref.read(orderRepositoryProvider);
  final currentUser = await ref
      .read(userNotifierProvider.notifier)
      .authenticationService
      .getCurrentUser();

  if (currentUser == null) {
    return Left(Failure.unauthorized());
  }

  if (currentUser.user.primaryStation == null) {
    return Left(Failure.unauthorized());
  }

  final result = await repository.getValidDeliveryLocations();

  return result.fold(
    (l) => Left(l),
    (r) => Right(r),
  );
});
