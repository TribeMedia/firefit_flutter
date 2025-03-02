import 'package:core/core.dart';
import 'package:firefit/config/providers.dart';
import 'package:firefit/env/env.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'providers.g.dart';

final productRepositoryProvider = Provider<ProductRepositoryInterface>((ref) {
  final talker = ref.watch(loggingProvider);
  return ProductRepository(talker: talker, env: Environment());
});

class MenuViewModel {
  final String? error;
  final bool isLoading;
  final List<Product> products;

  MenuViewModel({
    this.error,
    this.isLoading = false,
    this.products = const [],
  });
}

@Riverpod(keepAlive: true)
class MenuController extends _$MenuController {
  @override
  FutureOr<MenuViewModel> build() async {
    state = const AsyncLoading();
    return await load();
  }

  FutureOr<MenuViewModel> load() async {
    final menuRepository = ref.read(productRepositoryProvider);
    final menuResult = await menuRepository.queryProducts(
      orderBy: [
        Input$ProductsOrderBy(createdAt: Enum$OrderByDirection.AscNullsLast)
      ],
    );
    return menuResult.fold(
      (l) {
        final viewModel = MenuViewModel(error: l.error);
        state = AsyncData(viewModel);
        return viewModel;
      },
      (r) {
        final viewModel = MenuViewModel(
            isLoading: false,
            products: r,
           error: null,
        );
        state = AsyncData(viewModel);
        return viewModel;
      },
    );
  }
}
