import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:toggle_switch/toggle_switch.dart';

final viewModeProvider = StateProvider<ViewMode>((ref) => ViewMode.list);
final expandedItemProvider = StateProvider<String?>((ref) => null);
final searchQueryProvider = StateProvider<String>((ref) => '');
final cartItemsProvider = StateNotifierProvider<CartNotifier, List<CartItem>>(
    (ref) => CartNotifier());

final foodItemsProvider =
    FutureProvider.family<List<FoodItem>, String>((ref, query) async {
  // Simulating API call to get food items based on AI-assisted search
  await Future.delayed(Duration(seconds: 1));
  // In a real implementation, this would use the query to fetch relevant items
  return [
    FoodItem(
      id: '1',
      name: 'Grilled Chicken Salad',
      description: 'Fresh mixed greens with grilled chicken breast',
      price: 12.99,
      imageUrl: 'https://example.com/grilled-chicken-salad.jpg',
      nutritionInfo: 'Calories: 350, Protein: 30g, Carbs: 15g, Fat: 18g',
      source: 'Healthy Eats Restaurant',
    ),
    FoodItem(
      id: '2',
      name: 'Veggie Stir Fry',
      description: 'Assorted vegetables stir-fried in a light soy sauce',
      price: 10.99,
      imageUrl: 'https://example.com/veggie-stir-fry.jpg',
      nutritionInfo: 'Calories: 280, Protein: 12g, Carbs: 35g, Fat: 10g',
      source: 'Green Garden Market',
    ),
    FoodItem(
      id: '3',
      name: 'Protein Power Bowl',
      description: 'Quinoa, grilled chicken, avocado, and mixed vegetables',
      price: 14.99,
      imageUrl: 'https://example.com/protein-power-bowl.jpg',
      nutritionInfo: 'Calories: 450, Protein: 35g, Carbs: 40g, Fat: 20g',
      source: 'FireFit Kitchen Services',
    ),
  ];
});

enum ViewMode { list, card }

class FoodItem {
  final String id;
  final String name;
  final String description;
  final double price;
  final String imageUrl;
  final String nutritionInfo;
  final String source;

  FoodItem({
    required this.id,
    required this.name,
    required this.description,
    required this.price,
    required this.imageUrl,
    required this.nutritionInfo,
    required this.source,
  });
}

class CartItem {
  final FoodItem item;
  int quantity;

  CartItem({required this.item, this.quantity = 1});
}

class CartNotifier extends StateNotifier<List<CartItem>> {
  CartNotifier() : super([]);

  void addToCart(FoodItem item) {
    final existingIndex =
        state.indexWhere((cartItem) => cartItem.item.id == item.id);
    if (existingIndex >= 0) {
      state = [
        for (final cartItem in state)
          if (cartItem.item.id == item.id)
            CartItem(item: cartItem.item, quantity: cartItem.quantity + 1)
          else
            cartItem,
      ];
    } else {
      state = [...state, CartItem(item: item)];
    }
  }

  void removeFromCart(String itemId) {
    state = state.where((cartItem) => cartItem.item.id != itemId).toList();
  }

  void updateQuantity(String itemId, int quantity) {
    state = [
      for (final cartItem in state)
        if (cartItem.item.id == itemId)
          CartItem(item: cartItem.item, quantity: quantity)
        else
          cartItem,
    ];
  }
}

class AIAssistedSearchScreen extends HookConsumerWidget {
  const AIAssistedSearchScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final viewMode = ref.watch(viewModeProvider);
    final searchQuery = ref.watch(searchQueryProvider);
    final foodItems = ref.watch(foodItemsProvider(searchQuery));
    final cartItems = ref.watch(cartItemsProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text('Search Meals'),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: ToggleSwitch(
              minWidth: 90.0,
              initialLabelIndex: viewMode == ViewMode.list ? 0 : 1,
              cornerRadius: 20.0,
              activeFgColor: Colors.white,
              inactiveBgColor: Colors.grey,
              inactiveFgColor: Colors.white,
              totalSwitches: 2,
              labels: ['List', 'Card'],
              icons: [Icons.list, Icons.grid_view],
              activeBgColors: [
                [Colors.blue],
                [Colors.blue]
              ],
              onToggle: (index) {
                ref.read(viewModeProvider.notifier).state =
                    index == 0 ? ViewMode.list : ViewMode.card;
              },
            ),
          ),
          Stack(
            alignment: Alignment.center,
            children: [
              IconButton(
                icon: Icon(Icons.shopping_cart),
                onPressed: () {
                  // Navigate to shopping cart screen
                  // Navigator.of(context).push(MaterialPageRoute(
                  //   builder: (context) => ShoppingCartScreen(),
                  // ));
                  context.go('/shopping-cart');
                },
              ),
              if (cartItems.isNotEmpty)
                Positioned(
                  right: 0,
                  top: 0,
                  child: Container(
                    padding: EdgeInsets.all(2),
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    constraints: BoxConstraints(
                      minWidth: 16,
                      minHeight: 16,
                    ),
                    child: Text(
                      '${cartItems.length}',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 10,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
            ],
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search for meals or ingredients...',
                suffixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
              onChanged: (value) {
                ref.read(searchQueryProvider.notifier).state = value;
              },
            ),
          ),
          Expanded(
            child: foodItems.when(
              data: (items) => _buildFoodItemList(context, ref, items),
              loading: () => Center(child: CircularProgressIndicator()),
              error: (error, stack) => Center(child: Text('Error: $error')),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildFoodItemList(
      BuildContext context, WidgetRef ref, List<FoodItem> items) {
    final viewMode = ref.watch(viewModeProvider);

    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        return viewMode == ViewMode.list
            ? _buildListItem(context, ref, items[index])
            : _buildCardItem(context, ref, items[index]);
      },
    );
  }

  Widget _buildListItem(BuildContext context, WidgetRef ref, FoodItem item) {
    final expandedItem = ref.watch(expandedItemProvider);
    final isExpanded = expandedItem == item.id;

    return Card(
      child: Column(
        children: [
          ListTile(
            leading: Image.network(
              item.imageUrl,
              width: 60,
              height: 60,
              fit: BoxFit.cover,
            ),
            title: Text(item.name),
            subtitle:
                Text('${item.description}\n\$${item.price.toStringAsFixed(2)}'),
            trailing: IconButton(
              icon: Icon(isExpanded ? Icons.expand_less : Icons.expand_more),
              onPressed: () {
                ref.read(expandedItemProvider.notifier).state =
                    isExpanded ? null : item.id;
              },
            ),
          ),
          if (isExpanded) _buildExpandedContent(context, ref, item),
        ],
      ),
    );
  }

  Widget _buildCardItem(BuildContext context, WidgetRef ref, FoodItem item) {
    final expandedItem = ref.watch(expandedItemProvider);
    final isExpanded = expandedItem == item.id;

    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(
            item.imageUrl,
            width: double.infinity,
            height: 200,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(item.name, style: Theme.of(context).textTheme.titleLarge),
                SizedBox(height: 8),
                Text(item.description),
                SizedBox(height: 8),
                Text('\$${item.price.toStringAsFixed(2)}',
                    style: Theme.of(context).textTheme.titleMedium),
                SizedBox(height: 8),
                ElevatedButton(
                  onPressed: () {
                    ref.read(expandedItemProvider.notifier).state =
                        isExpanded ? null : item.id;
                  },
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(isExpanded ? 'Less Info' : 'More Info'),
                      Icon(isExpanded ? Icons.expand_less : Icons.expand_more),
                    ],
                  ),
                ),
              ],
            ),
          ),
          if (isExpanded) _buildExpandedContent(context, ref, item),
        ],
      ),
    );
  }

  Widget _buildExpandedContent(
      BuildContext context, WidgetRef ref, FoodItem item) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Nutrition Information:',
              style: TextStyle(fontWeight: FontWeight.bold)),
          SizedBox(height: 4),
          Text(item.nutritionInfo),
          SizedBox(height: 8),
          Text('Source:', style: TextStyle(fontWeight: FontWeight.bold)),
          SizedBox(height: 4),
          Text(item.source),
          SizedBox(height: 16),
          ElevatedButton(
            onPressed: () {
              ref.read(cartItemsProvider.notifier).addToCart(item);
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('${item.name} added to cart')),
              );
            },
            child: Text('Add to Cart'),
          ),
        ],
      ),
    );
  }
}
