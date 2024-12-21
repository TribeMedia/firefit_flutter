import 'package:firefit/features/commerce/presentation/providers/providers.dart';
import 'package:firefit/features/common/presentation/widgets/empty_view_state.dart';
import 'package:firefit/features/menu/providers.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shadcn_ui/shadcn_ui.dart';


class OrdersScreen extends HookConsumerWidget {
  const OrdersScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final orderController = ref.watch(orderControllerProvider(globalProviderId));
    final theme = ShadTheme.of(context);

    return orderController.when(
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (error, _) => Center(child: Text('Error: $error')),
      data: (viewModel) {
        return Scaffold(
          appBar: AppBar(
            title: Text('Orders', style: theme.textTheme.h1),
          ),
            body: viewModel.orders.isNotEmpty ?
            Center(child: Text('Orders Screen')) :
          EmptyViewState(
              lottieAssetFile: 'empty_orders.json',
              title: 'No Orders Found',
              message: 'There are currently no orders in your account.',
            ),
        );
      },
    );
  }
}