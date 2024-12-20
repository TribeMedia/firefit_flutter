import 'package:cached_network_image/cached_network_image.dart';
import 'package:core/core.dart';
import 'package:firefit/features/commerce/domain/entities/cart_item.dart';
import 'package:firefit/features/commerce/domain/entities/shopping_cart_model.dart';
import 'package:firefit/features/commerce/presentation/providers/shopping_cart_notifier.dart';
import 'package:firefit/features/common/presentation/screens/error_screen.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

class MenuItemDetailScreen extends HookConsumerWidget {
  final MenuItem menuItem;

  const MenuItemDetailScreen({super.key, required this.menuItem});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final cartModelValue = ref.watch(shoppingCartProvider);
    final cartNotifier = ref.watch(shoppingCartProvider.notifier);

    return cartModelValue.when(
      data: (cartModel) => _buildScreen(context, cartModel, cartNotifier),
      loading: () => const SizedBox.shrink(),
      error: (error, stack) => ErrorScreen(
        errorMessage: error.toString(),
        onRetry: () => cartNotifier.calculateTotalPrice(),
      ),
    );
  }

  Widget _buildScreen(BuildContext context, ShoppingCartModel cartModel,
      ShoppingCartNotifier notifier) {
    final quantity =
        cartModel.items.where((item) => item.id == menuItem.id).length;
    return Scaffold(
      appBar: AppBar(
        title: Text(menuItem.name),
        actions: [
          IconButton(
            icon: Badge(
              label: Text(cartModel.items.length.toString()),
              child: Icon(Icons.shopping_cart),
            ),
            onPressed: () {
              // TODO: Navigate to cart screen
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CachedNetworkImage(
              imageUrl: menuItem.imageUrl ?? '',
              fit: BoxFit.cover,
              placeholder: (context, url) => const CircularProgressIndicator(),
              errorWidget: (context, url, error) => const Icon(Icons.error),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    menuItem.name,
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                  SizedBox(height: 8),
                  Text(
                    menuItem.notes ?? '',
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Price: \$${menuItem.price.toStringAsFixed(2)}',
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                      Row(
                        children: [
                          ShadButton.outline(
                            size: ShadButtonSize.sm,
                            icon: Icon(Icons.remove, size: 16),
                            onPressed: () => notifier.removeItem(menuItem.id),
                          ),
                          SizedBox(width: 8),
                          Text(
                            quantity.toString(),
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                          SizedBox(width: 8),
                          ShadButton.outline(
                            size: ShadButtonSize.sm,
                            icon: Icon(Icons.add, size: 16),
                            onPressed: () => notifier.addItem(CartItem(
                              id: menuItem.id,
                              name: menuItem.name,
                              price: menuItem.price,
                              imageUrl: menuItem.imageUrl,
                            )),
                          ),
                        ],
                      ),
                    ],
                  ),
                  /*SizedBox(height: 24),
                  if (menuItem.nutrition != null) ...[
                    Text(
                      'Nutrition Information',
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    SizedBox(height: 16),
                    _buildNutritionInfo(context, menuItem.nutrition!),
                  ],*/
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  /*Widget _buildNutritionInfo(BuildContext context, MealNutrition nutrition) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildServingSize(context, nutrition.servingSize),
        SizedBox(height: 16),
        _buildMacronutrients(context, nutrition.totalNutrition.macronutrients),
        SizedBox(height: 16),
        _buildMicronutrients(context, nutrition.totalNutrition.micronutrients),
        SizedBox(height: 16),
        _buildAllergens(context, nutrition.allergens),
        SizedBox(height: 16),
        _buildDietaryInfo(context, nutrition.dietaryInfo),
      ],
    );
  }

  Widget _buildServingSize(BuildContext context, ServingSize? servingSize) {
    if (servingSize == null) return SizedBox.shrink();
    return ShadCard(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Serving Size',
                style: Theme.of(context).textTheme.titleMedium),
            Text('${servingSize.amount} ${servingSize.unit.name}'),
          ],
        ),
      ),
    );
  }

  Widget _buildMacronutrients(BuildContext context, Macronutrients macros) {
    return ShadCard(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Macronutrients',
                style: Theme.of(context).textTheme.titleMedium),
            SizedBox(height: 8),
            _buildNutrientRow('Calories',
                '${macros.protein.total + macros.carbohydrates.total * 4 + macros.fats.total * 9} kcal'),
            _buildNutrientRow('Protein', '${macros.protein.total}g'),
            _buildNutrientRow(
                'Carbohydrates', '${macros.carbohydrates.total}g'),
            _buildNutrientRow('Fat', '${macros.fats.total}g'),
            if (macros.carbohydrates.breakdown != null) ...[
              SizedBox(height: 8),
              Text('Carbohydrate Breakdown',
                  style: Theme.of(context).textTheme.titleSmall),
              _buildNutrientRow(
                  'Fiber', '${macros.carbohydrates.breakdown?.fiber ?? 0}g'),
              _buildNutrientRow(
                  'Sugar', '${macros.carbohydrates.breakdown?.sugar ?? 0}g'),
              _buildNutrientRow(
                  'Starch', '${macros.carbohydrates.breakdown?.starch ?? 0}g'),
            ],
            if (macros.fats.breakdown != null) ...[
              SizedBox(height: 8),
              Text('Fat Breakdown',
                  style: Theme.of(context).textTheme.titleSmall),
              _buildNutrientRow(
                  'Saturated', '${macros.fats.breakdown?.saturated ?? 0}g'),
              _buildNutrientRow('Monounsaturated',
                  '${macros.fats.breakdown?.monounsaturated ?? 0}g'),
              _buildNutrientRow('Polyunsaturated',
                  '${macros.fats.breakdown?.polyunsaturated ?? 0}g'),
              _buildNutrientRow(
                  'Trans', '${macros.fats.breakdown?.trans ?? 0}g'),
              _buildNutrientRow(
                  'Omega-3', '${macros.fats.breakdown?.omega3 ?? 0}g'),
              _buildNutrientRow(
                  'Omega-6', '${macros.fats.breakdown?.omega6 ?? 0}g'),
            ],
          ],
        ),
      ),
    );
  }

  Widget _buildMicronutrients(BuildContext context, Micronutrients micros) {
    return ShadCard(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Micronutrients',
                style: Theme.of(context).textTheme.titleMedium),
            SizedBox(height: 8),
            if (micros.vitamins != null) ...[
              Text('Vitamins', style: Theme.of(context).textTheme.titleSmall),
              ...micros.vitamins!
                  .toJson()
                  .entries
                  .where((entry) => entry.value != null)
                  .map((entry) => _buildNutrientRow(
                      entry.key.capitalize(), '${entry.value}mg')),
            ],
            SizedBox(height: 8),
            if (micros.minerals != null) ...[
              Text('Minerals', style: Theme.of(context).textTheme.titleSmall),
              ...micros.minerals!
                  .toJson()
                  .entries
                  .where((entry) => entry.value != null)
                  .map((entry) => _buildNutrientRow(
                      entry.key.capitalize(), '${entry.value}mg')),
            ],
          ],
        ),
      ),
    );
  }

  Widget _buildAllergens(BuildContext context, List<Allergen>? allergens) {
    if (allergens == null || allergens.isEmpty) return SizedBox.shrink();
    return ShadCard(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Allergens', style: Theme.of(context).textTheme.titleMedium),
            SizedBox(height: 8),
            Wrap(
              spacing: 8,
              runSpacing: 8,
              children: allergens
                  .map((allergen) => ShadBadge(
                        label: Text(allergen.name.capitalize()),
                        color: ShadColors.destructive,
                      ))
                  .toList(),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDietaryInfo(
      BuildContext context, List<DietaryInfo>? dietaryInfo) {
    if (dietaryInfo == null || dietaryInfo.isEmpty) return SizedBox.shrink();
    return ShadCard(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Dietary Information',
                style: Theme.of(context).textTheme.titleMedium),
            SizedBox(height: 8),
            Wrap(
              spacing: 8,
              runSpacing: 8,
              children: dietaryInfo
                  .map((info) => ShadBadge(
                        label:
                            Text(info.name.replaceAll('-', ' ').capitalize()),
                        color: ShadColors.secondary,
                      ))
                  .toList(),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildNutrientRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(label),
          Text(value),
        ],
      ),
    );
  }
}

extension StringExtension on String {
  String capitalize() {
    return "${this[0].toUpperCase()}${this.substring(1)}";
  }*/
}
