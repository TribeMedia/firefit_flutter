import 'package:core/providers/domain/models/provider.dart';
import 'package:core/providers/domain/models/provider_details.dart';
import 'package:core/providers/domain/models/provider_search_criteria.dart';
import 'package:core/meals/domain/models/menu.dart';
import 'package:core/commerce/domain/models/provider_rating.dart';
import 'package:core/commerce/domain/models/order.dart';

abstract class ProviderService {
  Future<List<Provider>> getNearbyProviders();
  Future<ProviderDetails> getProviderDetails(String providerId);
  Future<List<MenuItem>> getProviderMenu(String providerId);
  Future<void> submitOrder(Order order);
  Future<List<Order>> getOrderHistory();
  Future<List<Provider>> searchProviders(ProviderSearchCriteria criteria);
  Future<void> rateProvider(String providerId, ProviderRating rating);
}
