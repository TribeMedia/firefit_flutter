import 'package:freezed_annotation/freezed_annotation.dart';

part 'menu.freezed.dart';
part 'menu.g.dart';

@freezed
class MenuType with _$MenuType {
  const factory MenuType({
    required String id,
    required String name,
    required String key,
    String? description,
    required DateTime createdAt,
    String? iconUrl,
    String? coverUrl,
    Map<String, dynamic>? schema,
  }) = _MenuType;

  factory MenuType.fromJson(Map<String, dynamic> json) =>
      _$MenuTypeFromJson(json);
}

@freezed
class Menu with _$Menu {
  const factory Menu({
    required String id,
    required String name,
    required String providerId,
    String? description,
    required List<MenuItem> items,
    required MenuType type,
    String? imageUrl,
    DateTime? lastUpdated,
    String? coverImageUrl,
    Map<String, dynamic>? data,
  }) = _Menu;

  factory Menu.fromJson(Map<String, dynamic> json) => _$MenuFromJson(json);
}

@freezed
class MenuItem with _$MenuItem {
  const factory MenuItem({
    required String id,
    required String name,
    required String description,
    required String imageUrl,
    Map<String, dynamic>? data,
    double? price,
    required bool isAvailable,
    bool? isPopular,
    List<String>? categories,
  }) = _MenuItem;

  factory MenuItem.fromJson(Map<String, dynamic> json) =>
      _$MenuItemFromJson(json);
}

// Static array of predefined menu types
final List<MenuType> menuTypes = [
  MenuType(
      id: '1a2b3c4d-1234-5678-9abc-def012345678',
      name: 'Breakfast',
      key: 'breakfast',
      description:
          'Morning meals served from 6 AM to 11 AM, featuring classic breakfast items and healthy morning options.',
      createdAt: DateTime.parse('2024-01-01T00:00:00Z'),
      iconUrl: '/icons/breakfast.svg',
      coverUrl: '/covers/breakfast-cover.jpg',
      schema: {
        'type': 'object',
        'properties': {
          'servingTime': {
            'type': 'object',
            'properties': {
              'start': {'type': 'string', 'format': 'time'},
              'end': {'type': 'string', 'format': 'time'}
            }
          },
          'dietaryOptions': {
            'type': 'array',
            'items': {
              'type': 'string',
              'enum': ['vegetarian', 'vegan', 'gluten-free', 'dairy-free']
            }
          },
          'temperature': {
            'type': 'string',
            'enum': ['hot', 'cold', 'both']
          }
        }
      }),
  MenuType(
      id: '2b3c4d5e-2345-6789-bcde-f01234567890',
      name: 'Lunch',
      key: 'lunch',
      description:
          'Midday meals served from 11 AM to 4 PM, offering a variety of sandwiches, salads, and hot entrees.',
      createdAt: DateTime.parse('2024-01-01T00:00:00Z'),
      iconUrl: '/icons/lunch.svg',
      coverUrl: '/covers/lunch-cover.jpg',
      schema: {
        'type': 'object',
        'properties': {
          'servingTime': {
            'type': 'object',
            'properties': {
              'start': {'type': 'string', 'format': 'time'},
              'end': {'type': 'string', 'format': 'time'}
            }
          },
          'portionSize': {
            'type': 'string',
            'enum': ['small', 'regular', 'large']
          },
          'preparationTime': {'type': 'integer', 'minimum': 5, 'maximum': 30}
        }
      }),
  MenuType(
      id: '3c4d5e6f-3456-789a-cdef-012345678901',
      name: 'Dinner',
      key: 'dinner',
      description:
          'Evening meals served from 4 PM to 10 PM, featuring full entrees, sides, and chef specialties.',
      createdAt: DateTime.parse('2024-01-01T00:00:00Z'),
      iconUrl: '/icons/dinner.svg',
      coverUrl: '/covers/dinner-cover.jpg',
      schema: {
        'type': 'object',
        'properties': {
          'servingTime': {
            'type': 'object',
            'properties': {
              'start': {'type': 'string', 'format': 'time'},
              'end': {'type': 'string', 'format': 'time'}
            }
          },
          'courseType': {
            'type': 'string',
            'enum': ['appetizer', 'main', 'dessert']
          },
          'pairings': {
            'type': 'array',
            'items': {'type': 'string'}
          }
        }
      }),
  MenuType(
      id: '4d5e6f7g-4567-89ab-def0-123456789012',
      name: 'Thanksgiving Special',
      key: 'thanksgiving',
      description:
          'Special holiday menu featuring traditional Thanksgiving dishes and seasonal favorites.',
      createdAt: DateTime.parse('2024-01-01T00:00:00Z'),
      iconUrl: '/icons/thanksgiving.svg',
      coverUrl: '/covers/thanksgiving-cover.jpg',
      schema: {
        'type': 'object',
        'properties': {
          'servingDate': {'type': 'string', 'format': 'date'},
          'servingStyle': {
            'type': 'string',
            'enum': ['family', 'buffet', 'plated']
          },
          'courseOrder': {'type': 'integer', 'minimum': 1, 'maximum': 5},
          'isTraditional': {'type': 'boolean'},
          'servingSize': {
            'type': 'object',
            'properties': {
              'servings': {'type': 'integer'},
              'portionSize': {
                'type': 'string',
                'enum': ['individual', 'family', 'group']
              }
            }
          }
        }
      }),
];

// Helper function to get a menu type by key
MenuType? getMenuTypeByKey(String key) {
  try {
    return menuTypes.firstWhere((type) => type.key == key);
  } catch (e) {
    return null;
  }
}

// Helper function to get a menu type by id
MenuType? getMenuTypeById(String id) {
  try {
    return menuTypes.firstWhere((type) => type.id == id);
  } catch (e) {
    return null;
  }
}
