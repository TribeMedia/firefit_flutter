import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:forui/forui.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:toggle_switch/toggle_switch.dart';

class EcosystemProvider {
  final String id;
  final String name;
  final String slogan;
  final String address;
  final String iconUrl;
  final String coverImageUrl;
  final String story;
  final List<Product> products;
  final List<Product> featuredProducts;

  EcosystemProvider({
    required this.id,
    required this.name,
    required this.slogan,
    required this.address,
    required this.iconUrl,
    required this.coverImageUrl,
    required this.story,
    required this.products,
    required this.featuredProducts,
  });
}

class Product {
  final String id;
  final String name;
  final String description;
  final double price;
  final String imageUrl;

  Product({
    required this.id,
    required this.name,
    required this.description,
    required this.price,
    required this.imageUrl,
  });
}

final ecosystemProvidersProvider =
    FutureProvider<List<EcosystemProvider>>((ref) async {
  // Simulating API call to fetch ecosystem providers
  await Future.delayed(Duration(seconds: 1));
  return [
    EcosystemProvider(
      id: '1',
      name: 'Green Farms',
      slogan: 'Fresh from our fields to your table',
      address: '123 Farm Road, Greenville, GA 30222',
      iconUrl: 'https://example.com/green-farms-icon.jpg',
      coverImageUrl: 'https://example.com/green-farms-cover.jpg',
      story: '''
# Green Farms

We are a family-owned farm dedicated to providing the freshest, organic produce to our community. 

## Our Mission

- Sustainable farming practices
- Supporting local ecosystems
- Delivering nutrient-rich foods

Join us in our journey towards a healthier, more sustainable future!
      ''',
      products: [
        Product(
            id: '1',
            name: 'Organic Apples',
            description: 'Fresh, crisp apples',
            price: 2.99,
            imageUrl: 'https://example.com/organic-apples.jpg'),
        Product(
            id: '2',
            name: 'Free-range Eggs',
            description: 'Farm-fresh eggs',
            price: 4.99,
            imageUrl: 'https://example.com/free-range-eggs.jpg'),
      ],
      featuredProducts: [
        Product(
            id: '3',
            name: 'Organic Vegetable Box',
            description: 'Assorted seasonal vegetables',
            price: 15.99,
            imageUrl: 'https://example.com/organic-vegetable-box.jpg'),
      ],
    ),
    // Add more ecosystem providers here
  ];
});

final searchQueryProvider = StateProvider<String>((ref) => '');
final viewModeProvider = StateProvider<ViewMode>((ref) => ViewMode.list);

enum ViewMode { list, card }

class EcosystemProviderSearchScreen extends HookConsumerWidget {
  const EcosystemProviderSearchScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final ecosystemProviders = ref.watch(ecosystemProvidersProvider);
    final searchQuery = ref.watch(searchQueryProvider);
    final viewMode = ref.watch(viewModeProvider);

    return FScaffold(
      header: FHeader(
        title: Text('Ecosystem Providers'),
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
        ],
      ),
      contentPad: false,
      content: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search providers...',
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
            child: ecosystemProviders.when(
              data: (providers) {
                final filteredProviders = providers
                    .where((provider) =>
                        provider.name
                            .toLowerCase()
                            .contains(searchQuery.toLowerCase()) ||
                        provider.slogan
                            .toLowerCase()
                            .contains(searchQuery.toLowerCase()))
                    .toList();

                return viewMode == ViewMode.list
                    ? _buildProviderList(context, filteredProviders)
                    : _buildProviderGrid(context, filteredProviders);
              },
              loading: () => Center(child: CircularProgressIndicator()),
              error: (error, stack) => Center(child: Text('Error: $error')),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildProviderList(
      BuildContext context, List<EcosystemProvider> providers) {
    return ListView.builder(
      itemCount: providers.length,
      itemBuilder: (context, index) {
        final provider = providers[index];
        return Card(
          child: ListTile(
            leading: Image.network(
              provider.iconUrl,
              width: 50,
              height: 50,
              fit: BoxFit.cover,
            ),
            title: Text(provider.name),
            subtitle: Text(provider.slogan),
            trailing: IconButton(
              icon: Icon(Icons.arrow_forward_ios),
              onPressed: () => _showProviderDetails(context, provider),
            ),
          ),
        );
      },
    );
  }

  Widget _buildProviderGrid(
      BuildContext context, List<EcosystemProvider> providers) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 0.75,
      ),
      itemCount: providers.length,
      itemBuilder: (context, index) {
        final provider = providers[index];
        return Card(
          child: InkWell(
            onTap: () => _showProviderDetails(context, provider),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.network(
                  provider.coverImageUrl,
                  width: double.infinity,
                  height: 120,
                  fit: BoxFit.cover,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(provider.name,
                          style: Theme.of(context).textTheme.titleLarge),
                      SizedBox(height: 4),
                      Text(provider.slogan,
                          style: Theme.of(context).textTheme.bodySmall),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  void _showProviderDetails(BuildContext context, EcosystemProvider provider) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => EcosystemProviderDetailScreen(provider: provider),
      ),
    );
  }
}

class EcosystemProviderDetailScreen extends HookConsumerWidget {
  final EcosystemProvider provider;

  const EcosystemProviderDetailScreen({
    super.key,
    required this.provider,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: Text(provider.name),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
              provider.coverImageUrl,
              width: double.infinity,
              height: 200,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(provider.slogan,
                      style: Theme.of(context).textTheme.titleMedium),
                  SizedBox(height: 8),
                  Text(provider.address,
                      style: Theme.of(context).textTheme.bodySmall),
                  SizedBox(height: 16),
                  Text('Our Story',
                      style: Theme.of(context).textTheme.titleLarge),
                  SizedBox(height: 8),
                  MarkdownBody(data: provider.story),
                  SizedBox(height: 24),
                  Text('Featured Products',
                      style: Theme.of(context).textTheme.titleLarge),
                  SizedBox(height: 8),
                  CarouselSlider(
                    options: CarouselOptions(
                      height: 200,
                      enlargeCenterPage: true,
                      autoPlay: true,
                      aspectRatio: 16 / 9,
                      autoPlayCurve: Curves.fastOutSlowIn,
                      enableInfiniteScroll: true,
                      autoPlayAnimationDuration: Duration(milliseconds: 800),
                      viewportFraction: 0.8,
                    ),
                    items: provider.featuredProducts.map((product) {
                      return Builder(
                        builder: (BuildContext context) {
                          return Container(
                            width: MediaQuery.of(context).size.width,
                            margin: EdgeInsets.symmetric(horizontal: 5.0),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(8.0),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black
                                      .withAlpha((0.1 * 255).round()),
                                  blurRadius: 5,
                                  spreadRadius: 1,
                                ),
                              ],
                            ),
                            child: Column(
                              children: [
                                Image.network(
                                  product.imageUrl,
                                  width: double.infinity,
                                  height: 120,
                                  fit: BoxFit.cover,
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(product.name,
                                          style: Theme.of(context)
                                              .textTheme
                                              .titleMedium),
                                      Text(
                                          '\$${product.price.toStringAsFixed(2)}',
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodySmall),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      );
                    }).toList(),
                  ),
                  SizedBox(height: 24),
                  Text('All Products',
                      style: Theme.of(context).textTheme.titleLarge),
                  SizedBox(height: 8),
                  ListView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: provider.products.length,
                    itemBuilder: (context, index) {
                      final product = provider.products[index];
                      return Card(
                        child: ListTile(
                          leading: Image.network(
                            product.imageUrl,
                            width: 50,
                            height: 50,
                            fit: BoxFit.cover,
                          ),
                          title: Text(product.name),
                          subtitle: Text(product.description),
                          trailing:
                              Text('\$${product.price.toStringAsFixed(2)}'),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
