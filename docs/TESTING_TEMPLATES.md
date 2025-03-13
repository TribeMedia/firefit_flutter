# Flutter Testing Templates

This document provides templates for different types of tests in Flutter projects, following best practices for testable code and comprehensive test coverage.

## Testing Stack

- **Unit Tests**: Dart test framework with Mockito/Mocktail
- **Widget Tests**: Flutter test package
- **Integration Tests**: Flutter Integration Test
- **BDD Tests**: Optional BDD style with Flutter Gherkin

## Unit Test Templates

### Repository Test

```dart
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:dartz/dartz.dart';
import 'package:your_app/features/feature_name/data/datasources/data_source.dart';
import 'package:your_app/features/feature_name/data/repositories/repository_impl.dart';
import 'package:your_app/features/feature_name/domain/entities/entity.dart';
import 'package:your_app/core/error/failures.dart';
import 'package:your_app/core/error/exceptions.dart';

class MockDataSource extends Mock implements DataSource {}

void main() {
  late RepositoryImpl repository;
  late MockDataSource mockDataSource;

  setUp(() {
    mockDataSource = MockDataSource();
    repository = RepositoryImpl(dataSource: mockDataSource);
  });

  group('repositoryMethod', () {
    final testParam = 'test_param';
    final testDto = TestDto(id: 'test', name: 'Test Entity');
    final testEntity = TestEntity(id: 'test', name: 'Test Entity');
    
    test('should return entity when datasource call is successful', () async {
      // Arrange
      when(() => mockDataSource.method(any()))
          .thenAnswer((_) async => testDto);
      
      // Act
      final result = await repository.method(testParam);
      
      // Assert
      expect(result, Right(testEntity));
      verify(() => mockDataSource.method(testParam)).called(1);
      verifyNoMoreInteractions(mockDataSource);
    });

    test('should return failure when datasource throws exception', () async {
      // Arrange
      when(() => mockDataSource.method(any()))
          .thenThrow(ServerException('Error message'));
      
      // Act
      final result = await repository.method(testParam);
      
      // Assert
      expect(result, Left(ServerFailure('Error message')));
      verify(() => mockDataSource.method(testParam)).called(1);
      verifyNoMoreInteractions(mockDataSource);
    });
  });
}
```

### Async Notifier Test

```dart
import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mocktail/mocktail.dart';
import 'package:dartz/dartz.dart';
import 'package:your_app/features/feature_name/domain/repositories/repository.dart';
import 'package:your_app/features/feature_name/domain/entities/entity.dart';
import 'package:your_app/features/feature_name/presentation/providers/view_model.dart';
import 'package:your_app/core/error/failures.dart';

class MockRepository extends Mock implements Repository {}

void main() {
  late MockRepository mockRepository;
  late ProviderContainer container;

  setUp(() {
    mockRepository = MockRepository();
    container = ProviderContainer(
      overrides: [
        repositoryProvider.overrideWithValue(mockRepository),
      ],
    );
    addTearDown(container.dispose);
  });

  group('loadData', () {
    final testParam = 'test_param';
    final testEntity = TestEntity(id: 'test', name: 'Test Entity');
    
    test('should emit loading then data when repository call is successful', () async {
      // Arrange
      when(() => mockRepository.method(any()))
          .thenAnswer((_) async => Right(testEntity));
      
      // Act - Create a listener
      final listener = Listener<AsyncValue<ViewState>>();
      container.listen(
        viewModelProvider.notifier.select((vm) => vm.state),
        listener,
        fireImmediately: true,
      );

      // Initial state should be loading
      verify(() => listener(null, const AsyncValue.loading()));
      
      // Trigger the method
      await container.read(viewModelProvider.notifier).loadData(testParam);
      
      // Assert
      verify(() => listener(
        const AsyncValue.loading(),
        AsyncValue.data(ViewState(data: testEntity)),
      )).called(1);
      verify(() => mockRepository.method(testParam)).called(1);
      verifyNoMoreInteractions(mockRepository);
    });

    test('should emit loading then error when repository call fails', () async {
      // Arrange
      final failure = ServerFailure('Error message');
      when(() => mockRepository.method(any()))
          .thenAnswer((_) async => Left(failure));
      
      // Act - Create a listener
      final listener = Listener<AsyncValue<ViewState>>();
      container.listen(
        viewModelProvider.notifier.select((vm) => vm.state),
        listener,
        fireImmediately: true,
      );

      // Initial state should be loading
      verify(() => listener(null, const AsyncValue.loading()));
      
      // Trigger the method
      await container.read(viewModelProvider.notifier).loadData(testParam);
      
      // Assert - Verify that error state was emitted
      verify(() => listener(
        const AsyncValue.loading(),
        any(that: predicate((AsyncValue<ViewState> p) => p.hasError)),
      )).called(1);
      verify(() => mockRepository.method(testParam)).called(1);
      verifyNoMoreInteractions(mockRepository);
    });
  });
}

class Listener<T> extends Mock {
  void call(T? previous, T next);
}
```

### Form Validation Test

```dart
import 'package:flutter_test/flutter_test.dart';
import 'package:your_app/features/feature_name/domain/validation/validators.dart';
import 'package:dartz/dartz.dart';

void main() {
  late Validators validators;

  setUp(() {
    validators = Validators();
  });

  group('validateEmail', () {
    test('should return valid email', () {
      // Arrange
      const email = 'test@example.com';
      
      // Act
      final result = validators.validateEmail(email);
      
      // Assert
      expect(result, Right(email));
    });

    test('should return validation error for empty email', () {
      // Arrange
      const email = '';
      
      // Act
      final result = validators.validateEmail(email);
      
      // Assert
      expect(result, Left(ValidationError.empty));
    });

    test('should return validation error for invalid email format', () {
      // Arrange
      const email = 'invalid_email';
      
      // Act
      final result = validators.validateEmail(email);
      
      // Assert
      expect(result, Left(ValidationError.invalidFormat));
    });
  });

  // More validation tests...
}
```

## Widget Test Templates

### Screen Widget Test

```dart
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mocktail/mocktail.dart';
import 'package:your_app/features/feature_name/domain/entities/entity.dart';
import 'package:your_app/features/feature_name/presentation/providers/view_model.dart';
import 'package:your_app/features/feature_name/presentation/screens/screen.dart';

class MockViewModel extends Mock implements ViewModel {}

void main() {
  late MockViewModel mockViewModel;

  setUp(() {
    mockViewModel = MockViewModel();
  });

  Widget createWidgetUnderTest() {
    return ProviderScope(
      overrides: [
        viewModelProvider.notifier.overrideWith((ref) => mockViewModel),
      ],
      child: const MaterialApp(
        home: Screen(),
      ),
    );
  }

  group('Screen', () {
    testWidgets('should display loading indicator when state is loading', (WidgetTester tester) async {
      // Arrange
      when(() => mockViewModel.state).thenReturn(const AsyncValue.loading());
      
      // Act
      await tester.pumpWidget(createWidgetUnderTest());
      
      // Assert
      expect(find.byType(CircularProgressIndicator), findsOneWidget);
      expect(find.text('Loading...'), findsOneWidget);
    });

    testWidgets('should display content when state has data', (WidgetTester tester) async {
      // Arrange
      final testEntity = TestEntity(id: 'test', name: 'Test Entity');
      when(() => mockViewModel.state).thenReturn(
        AsyncValue.data(ViewState(data: testEntity)),
      );
      
      // Act
      await tester.pumpWidget(createWidgetUnderTest());
      
      // Assert
      expect(find.text('Test Entity'), findsOneWidget);
      expect(find.byType(CircularProgressIndicator), findsNothing);
    });

    testWidgets('should display error message when state has error', (WidgetTester tester) async {
      // Arrange
      when(() => mockViewModel.state).thenReturn(
        AsyncValue.error('Error message', StackTrace.empty),
      );
      
      // Act
      await tester.pumpWidget(createWidgetUnderTest());
      
      // Assert
      expect(find.text('Error: Error message'), findsOneWidget);
      expect(find.byType(ElevatedButton), findsOneWidget); // Retry button
      
      // Test retry action
      when(() => mockViewModel.loadData()).thenReturn(Future.value());
      await tester.tap(find.byType(ElevatedButton));
      verify(() => mockViewModel.loadData()).called(1);
    });
  });
}
```

### Form Widget Test

```dart
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mocktail/mocktail.dart';
import 'package:your_app/features/feature_name/presentation/providers/form_provider.dart';
import 'package:your_app/features/feature_name/presentation/widgets/form_widget.dart';

class MockFormNotifier extends Mock implements FormNotifier {}

void main() {
  late MockFormNotifier mockFormNotifier;

  setUp(() {
    mockFormNotifier = MockFormNotifier();
  });

  Widget createWidgetUnderTest() {
    return ProviderScope(
      overrides: [
        formProvider.notifier.overrideWith((ref) => mockFormNotifier),
      ],
      child: const MaterialApp(
        home: Scaffold(
          body: FormWidget(),
        ),
      ),
    );
  }

  group('FormWidget', () {
    testWidgets('should validate and submit form when submit button is pressed', (WidgetTester tester) async {
      // Arrange
      when(() => mockFormNotifier.state).thenReturn(const FormState.initial());
      when(() => mockFormNotifier.submitForm(any(), any()))
          .thenAnswer((_) async {});
      
      // Act
      await tester.pumpWidget(createWidgetUnderTest());
      
      // Enter text in form fields
      await tester.enterText(find.byType(TextFormField).at(0), 'test@example.com');
      await tester.enterText(find.byType(TextFormField).at(1), 'password123');
      
      // Tap submit button
      await tester.tap(find.byType(ElevatedButton));
      await tester.pump();
      
      // Assert
      verify(() => mockFormNotifier.submitForm('test@example.com', 'password123')).called(1);
    });

    testWidgets('should display error messages for invalid input', (WidgetTester tester) async {
      // Arrange
      when(() => mockFormNotifier.state).thenReturn(const FormState.initial());
      
      // Act
      await tester.pumpWidget(createWidgetUnderTest());
      
      // Enter invalid email
      await tester.enterText(find.byType(TextFormField).at(0), 'invalid-email');
      
      // Tap submit button
      await tester.tap(find.byType(ElevatedButton));
      await tester.pump();
      
      // Assert
      expect(find.text('Please enter a valid email address'), findsOneWidget);
    });

    testWidgets('should display loading indicator during form submission', (WidgetTester tester) async {
      // Arrange
      when(() => mockFormNotifier.state).thenReturn(const FormState.loading());
      
      // Act
      await tester.pumpWidget(createWidgetUnderTest());
      
      // Assert
      expect(find.byType(CircularProgressIndicator), findsOneWidget);
      expect(find.byType(ElevatedButton), findsNothing); // Button should be replaced with indicator
    });
  });
}
```

## Integration Test Templates

### Feature Integration Test

```dart
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:integration_test/integration_test.dart';
import 'package:your_app/features/feature_name/data/repositories/repository_impl.dart';
import 'package:your_app/features/feature_name/domain/repositories/repository.dart';
import 'package:your_app/main.dart' as app;
import 'package:mocktail/mocktail.dart';
import 'package:dartz/dartz.dart';

class MockRepository extends Mock implements Repository {}

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  late MockRepository mockRepository;

  setUp(() {
    mockRepository = MockRepository();
  });

  group('End-to-end feature test', () {
    testWidgets('Complete feature flow', (WidgetTester tester) async {
      // Override repositories with mocks
      final container = ProviderContainer(
        overrides: [
          repositoryProvider.overrideWithValue(mockRepository),
        ],
      );

      // Set up mock responses
      when(() => mockRepository.getData())
          .thenAnswer((_) async => Right(testData));
      when(() => mockRepository.submitForm(any()))
          .thenAnswer((_) async => const Right(unit));

      // Launch the app with the provider container
      await app.main(container: container);
      await tester.pumpAndSettle();

      // Verify initial screen appears
      expect(find.text('Welcome'), findsOneWidget);

      // Navigate to feature screen
      await tester.tap(find.byKey(const Key('feature_button')));
      await tester.pumpAndSettle();

      // Verify feature screen loads with data
      expect(find.text('Feature Screen'), findsOneWidget);
      expect(find.text('Test Item 1'), findsOneWidget);

      // Interact with feature
      await tester.tap(find.byKey(const Key('item_1')));
      await tester.pumpAndSettle();

      // Verify detail screen
      expect(find.text('Item Details'), findsOneWidget);
      expect(find.text('Test Item 1 Details'), findsOneWidget);

      // Submit form
      await tester.enterText(find.byType(TextField), 'Test input');
      await tester.tap(find.text('Submit'));
      await tester.pumpAndSettle();

      // Verify submission was successful
      expect(find.text('Success!'), findsOneWidget);
      verify(() => mockRepository.submitForm('Test input')).called(1);
    });
  });
}
```

### Navigation Test

```dart
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:your_app/app/router/router.dart';
import 'package:your_app/features/feature_name/presentation/screens/screens.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('Navigation tests', () {
    testWidgets('Navigation flow through app', (WidgetTester tester) async {
      // Start with router configuration
      await tester.pumpWidget(
        ProviderScope(
          child: MaterialApp.router(
            routerConfig: appRouter,
          ),
        ),
      );
      await tester.pumpAndSettle();

      // Verify we're on the home screen
      expect(find.byType(HomeScreen), findsOneWidget);

      // Navigate to feature screen
      await tester.tap(find.text('Go to Feature'));
      await tester.pumpAndSettle();

      // Verify we've navigated to feature screen
      expect(find.byType(FeatureScreen), findsOneWidget);

      // Navigate to detail screen using a list item
      await tester.tap(find.text('Item 1'));
      await tester.pumpAndSettle();

      // Verify we're on the detail screen with correct parameters
      expect(find.byType(DetailScreen), findsOneWidget);
      expect(find.text('Details for Item 1'), findsOneWidget);

      // Test back navigation
      await tester.pageBack();
      await tester.pumpAndSettle();

      // Verify we're back on the feature screen
      expect(find.byType(FeatureScreen), findsOneWidget);
    });

    testWidgets('Deep linking works correctly', (WidgetTester tester) async {
      // Test deep linking by initializing the router with a specific location
      await tester.pumpWidget(
        ProviderScope(
          child: MaterialApp.router(
            routerConfig: appRouter.routerConfig.copyWith(
              initialLocation: '/feature/details/42',
            ),
          ),
        ),
      );
      await tester.pumpAndSettle();

      // Verify we're directly on the detail screen with correct parameters
      expect(find.byType(DetailScreen), findsOneWidget);
      expect(find.text('Details for Item 42'), findsOneWidget);
    });
  });
}
```

## BDD Test Template (Optional)

```dart
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_gherkin/flutter_gherkin.dart';
import 'package:gherkin/gherkin.dart';
import 'package:your_app/test_drivers/steps/given_steps.dart';
import 'package:your_app/test_drivers/steps/when_steps.dart';
import 'package:your_app/test_drivers/steps/then_steps.dart';

Future<void> main() {
  final config = FlutterTestConfiguration()
    ..features = [RegExp('features/.*\\.feature')]
    ..reporters = [
      ProgressReporter(),
      TestRunSummaryReporter(),
      JsonReporter(path: './report.json')
    ]
    ..stepDefinitions = [
      // Given
      givenIAmOnTheHomeScreen(),
      givenIAmLoggedIn(),
      
      // When
      whenITapOn(),
      whenIEnterTextIntoField(),
      whenINavigateTo(),
      
      // Then
      thenIShouldSee(),
      thenIShouldBeOnScreen(),
      thenIShouldNotSee(),
    ]
    ..customStepParameterDefinitions = []
    ..restartAppBetweenScenarios = true
    ..targetAppPath = 'test_driver/app.dart';
    
  return GherkinRunner().execute(config);
}
```

### Example Feature File

```gherkin
Feature: User Authentication
  As a user
  I want to log in to the application
  So that I can access my account

  Scenario: Successful login
    Given I am on the login screen
    When I enter "test@example.com" into the "email" field
    And I enter "password123" into the "password" field
    And I tap on the "Login" button
    Then I should see the "Home" screen
    And I should see "Welcome, User" text

  Scenario: Failed login with incorrect credentials
    Given I am on the login screen
    When I enter "wrong@example.com" into the "email" field
    And I enter "wrongpassword" into the "password" field
    And I tap on the "Login" button
    Then I should see "Invalid credentials" text
    And I should be on the "Login" screen
```

## Accessibility Test Template

```dart
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:your_app/features/feature_name/presentation/screens/screen.dart';

void main() {
  group('Accessibility tests', () {
    testWidgets('Screen passes accessibility checks', (WidgetTester tester) async {
      // Build the widget tree
      await tester.pumpWidget(
        const MaterialApp(
          home: Screen(),
        ),
      );
      
      // Check for sufficient contrast
      final SemanticsHandle handle = tester.ensureSemantics();
      
      // Check that all interactive elements have semantic labels
      final Finder buttons = find.byType(ElevatedButton);
      for (int i = 0; i < buttons.evaluate().length; i++) {
        final semantics = tester.getSemantics(buttons.at(i));
        expect(semantics.label, isNotEmpty, reason: 'Button ${i+1} is missing semantic label');
      }
      
      // Check text fields have labels
      final Finder textFields = find.byType(TextField);
      for (int i = 0; i < textFields.evaluate().length; i++) {
        final semantics = tester.getSemantics(textFields.at(i));
        expect(semantics.label, isNotEmpty, reason: 'TextField ${i+1} is missing semantic label');
      }
      
      // Check tap targets are sufficiently large (48x48dp minimum)
      final Finder tapTargets = find.byWidgetPredicate((widget) {
        return widget is GestureDetector || 
               widget is InkWell || 
               widget is IconButton || 
               widget is TextButton || 
               widget is ElevatedButton;
      });
      
      for (int i = 0; i < tapTargets.evaluate().length; i++) {
        final Size size = tester.getSize(tapTargets.at(i));
        expect(size.width, greaterThanOrEqualTo(48.0), reason: 'Tap target ${i+1} width is too small');
        expect(size.height, greaterThanOrEqualTo(48.0), reason: 'Tap target ${i+1} height is too small');
      }
      
      handle.dispose();
    });
  });
}
```

## Golden Test Template

```dart
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:golden_toolkit/golden_toolkit.dart';
import 'package:your_app/features/feature_name/presentation/widgets/widget.dart';

void main() {
  group('Widget golden tests', () {
    testGoldens('Widget renders correctly', (WidgetTester tester) async {
      // Build device builder with various device sizes
      final builder = DeviceBuilder()
        ..overrideDevicesForAllScenarios(devices: [
          Device.phone,
          Device.iphone11,
          Device.tabletPortrait,
          Device.tabletLandscape,
        ])
        ..addScenario(
          widget: const MyWidget(
            title: 'Test Title',
            subtitle: 'Test Subtitle',
          ),
          name: 'default',
        )
        ..addScenario(
          widget: const MyWidget(
            title: 'Long Title That Should Wrap To Two Lines On Most Devices',
            subtitle: 'Longer subtitle text that provides more context and should wrap on smaller devices',
          ),
          name: 'with_long_text',
        )
        ..addScenario(
          widget: const MyWidget(
            title: 'Loading State',
            isLoading: true,
          ),
          name: 'loading_state',
        );

      // Pump all scenarios on all devices
      await tester.pumpDeviceBuilder(builder);

      // Compare against golden files
      await screenMatchesGolden(tester, 'my_widget');
    });

    testGoldens('Widget theme variations', (WidgetTester tester) async {
      // Test with different themes
      await tester.pumpWidgetBuilder(
        const MyWidget(title: 'Test Title'),
        wrapper: materialAppWrapper(
          theme: ThemeData.light(),
          platform: TargetPlatform.android,
        ),
      );
      await screenMatchesGolden(tester, 'my_widget_light_theme');

      await tester.pumpWidgetBuilder(
        const MyWidget(title: 'Test Title'),
        wrapper: materialAppWrapper(
          theme: ThemeData.dark(),
          platform: TargetPlatform.android,
        ),
      );
      await screenMatchesGolden(tester, 'my_widget_dark_theme');
    });
  });
}
```

## Test Plans

When implementing tests for a feature, consider covering the following scenarios:

1. **Happy Path**: Test the expected successful flow
2. **Error Handling**: Test how the code handles errors
3. **Edge Cases**: Test boundary conditions and special values
4. **User Interaction**: Test user interface interactions
5. **Loading States**: Test proper loading state handling
6. **Accessibility**: Test for accessibility compliance
7. **Responsive Design**: Test on different screen sizes

## Mocking Best Practices

1. Mock dependencies at the boundary of the system under test
2. Use `mocktail` for cleaner mocking syntax
3. Verify interactions with mocks to ensure methods were called
4. Don't mock value objects or entities
5. Set up mocks to return realistic data that matches production scenarios
