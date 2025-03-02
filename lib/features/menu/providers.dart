import 'package:collection/collection.dart';
import 'package:core/core.dart';
import 'package:firefit/config/providers.dart';
import 'package:firefit/env/env.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'providers.g.dart';

final globalProviderId = '9944860d-6de0-421a-a409-9fd169913480';

final productRepositoryProvider = Provider<ProductRepositoryInterface>((ref) {
  final talker = ref.watch(loggingProvider);
  return ProductRepository(talker: talker, env: Environment());
});

class MenuViewModel {
  final String? error;
  final bool isLoading;
  final List<Product> products;
  final String providerId;

  MenuViewModel({
    this.error,
    this.isLoading = false,
    this.products = const [],
    required this.providerId,
  });
}

@Riverpod(keepAlive: true)
class MenuController extends _$MenuController {
  @override
  FutureOr<MenuViewModel> build(String providerId) async {
    state = const AsyncLoading();
    return await load(providerId);
  }

  FutureOr<MenuViewModel> load(String providerId) async {
    final menuRepository = ref.read(productRepositoryProvider);
    final menuResult = await menuRepository.queryProducts(
      orderBy: [Input$ProductsOrderBy(createdAt: Enum$OrderByDirection.AscNullsLast)],
    );
    return menuResult.fold(
      (l) {
        final viewModel = MenuViewModel(providerId: providerId, error: l.error);
        state = AsyncData(viewModel);
        return viewModel;
      },
      (r) {
        final viewModel = MenuViewModel(providerId: providerId, products: r);
        state = AsyncData(viewModel);
        return viewModel;
      },
    );
  }

}
