import 'package:core/meals/domain/models/menu.dart';
import 'package:core/commerce/domain/models/order.dart';
import 'package:core/commerce/domain/models/provider_rating.dart';
import 'package:core/providers/domain/models/provider.dart';
import 'package:core/providers/domain/models/provider_details.dart';
import 'package:core/providers/domain/models/provider_search_criteria.dart';
import 'package:core/providers/services/provider_service.dart';

class ProviderServiceImpl implements ProviderService {
  Future<List<Provider>> getProviders() async => [];

  @override
  Future<List<Provider>> getNearbyProviders() {
    // TODO: implement getNearbyProviders
    throw UnimplementedError();
  }

  @override
  Future<List<Order>> getOrderHistory() {
    // TODO: implement getOrderHistory
    throw UnimplementedError();
  }

  @override
  Future<ProviderDetails> getProviderDetails(String providerId) {
    // TODO: implement getProviderDetails
    throw UnimplementedError();
  }

  @override
  Future<List<MenuItem>> getProviderMenu(String providerId) {
    // TODO: implement getProviderMenu
    throw UnimplementedError();
  }

  @override
  Future<void> rateProvider(String providerId, ProviderRating rating) {
    // TODO: implement rateProvider
    throw UnimplementedError();
  }

  @override
  Future<List<Provider>> searchProviders(ProviderSearchCriteria criteria) {
    // TODO: implement searchProviders
    throw UnimplementedError();
  }

  @override
  Future<void> submitOrder(Order order) {
    // TODO: implement submitOrder
    throw UnimplementedError();
  }
}
