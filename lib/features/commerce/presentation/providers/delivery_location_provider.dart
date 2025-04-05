import 'package:core/commerce/commerce.dart';
import 'package:core/common/failures/failure.dart';
import 'package:firefit/features/auth/providers/user_notifier.dart';
import 'package:firefit/features/commerce/presentation/providers/providers.dart';
import 'package:fpdart/fpdart.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

/// A model that combines a DeliveryLocation with its associated DeliveryPeriod information
class DeliveryLocationWithPeriod {
  final DeliveryLocation location;
  final DeliveryPeriod period;

  DeliveryLocationWithPeriod({
    required this.location,
    required this.period,
  });
}

/// Provider that fetches delivery locations for the current user's site and delivery period
final siteDeliveryLocationProvider = FutureProvider<Either<Failure, List<DeliveryLocation>>>((ref) async {
  final repository = ref.read(orderRepositoryProvider);
  final deliveryPeriod = await repository.getDeliveryPeriods();
  final currentUser = await ref.read(userNotifierProvider.notifier).authenticationService.getCurrentUser();

  if (currentUser == null) {
    return Left(Failure.unauthorized());
  }

  if (currentUser.user.primaryStation == null) {
    return Left(Failure.unauthorized());
  }

  final siteId = currentUser.user.primaryStation!.siteId;

  return deliveryPeriod.fold(
    (l) => Left(l),
    (r) async {
      if (r.isEmpty) {
        return Right([]);
      }

      final deliveryLocation = <DeliveryLocation>[];
      for (var period in r) {
        final result = await repository.getSiteDeliveryLocations(
          siteId: siteId,
          deliveryPeriodId: period.id,
        );
        result.fold(
          (l) {},
          (r) {
            deliveryLocation.addAll(r);
          },
        );
      }
      return Right(deliveryLocation);
    },
  );
});

/// Provider that fetches delivery locations with their associated delivery periods
final siteDeliveryLocationWithPeriodProvider = FutureProvider<Either<Failure, List<DeliveryLocationWithPeriod>>>((ref) async {
  final repository = ref.read(orderRepositoryProvider);
  final currentUser = await ref.read(userNotifierProvider.notifier).authenticationService.getCurrentUser();

  if (currentUser == null) {
    return Left(Failure.unauthorized());
  }

  if (currentUser.user.primaryStation == null) {
    return Left(Failure.unauthorized());
  }

  final siteId = currentUser.user.primaryStation!.siteId;
  final deliveryPeriods = await repository.getDeliveryPeriods();

  return deliveryPeriods.fold(
    (l) => Left(l),
    (periods) async {
      if (periods.isEmpty) {
        return const Right([]);
      }

      final locationsWithPeriods = <DeliveryLocationWithPeriod>[];
      
      for (var period in periods) {
        final result = await repository.getSiteDeliveryLocations(
          siteId: siteId,
          deliveryPeriodId: period.id,
        );
        
        result.fold(
          (l) {},
          (locations) {
            for (var location in locations) {
              locationsWithPeriods.add(
                DeliveryLocationWithPeriod(
                  location: location,
                  period: period,
                ),
              );
            }
          },
        );
      }
      
      return Right(locationsWithPeriods);
    },
  );
});
