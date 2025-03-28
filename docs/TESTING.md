# FireFit Flutter - Testing Strategy

This document outlines the testing strategy, setup procedures, and execution guidelines for the FireFit Flutter application.

## Table of Contents

- [Overview](#overview)
- [Testing Architecture](#testing-architecture)
- [Setup](#setup)
- [Running Tests](#running-tests)
- [Test Organization](#test-organization)
- [Best Practices](#best-practices)
- [CI/CD Integration](#cicd-integration)
- [Troubleshooting](#troubleshooting)

## Overview

The FireFit Flutter application follows a comprehensive testing strategy based on the clean architecture principles and hooks_riverpod state management. The testing pyramid consists of:

1. **Unit Tests**: Testing individual components in isolation
2. **Widget Tests**: Testing UI components and their interactions
3. **Integration Tests**: Testing complete user flows across multiple screens and components

The primary goals of our testing strategy are:

- Ensure application reliability through comprehensive test coverage
- Catch regressions early in the development process
- Document expected behavior through tests
- Support refactoring with confidence
- Maintain code quality through test-driven development practices

## Testing Architecture

### Test Types

#### Unit Tests

Unit tests target individual pieces of code (functions, methods, classes) in isolation. In our application, this primarily covers:

- Repository implementations
- Notifiers (state management)
- Business logic utilities

#### Widget Tests

Widget tests verify that UI components render correctly and respond appropriately to user interactions. They focus on:

- Screen layouts and component rendering
- Form validation
- UI feedback in response to user actions
- State reflection in the UI

#### Integration Tests

Integration tests verify entire user flows and the interaction between multiple components. They simulate real user scenarios like:

- Complete registration and authentication flows
- Shopping and checkout processes
- Order management workflows

### Test Doubles

We use the following test doubles for testing:

- **Mocks**: Using the `mocktail` package to create mock implementations of interfaces
- **Fakes**: Simplified implementations of services for testing purposes
- **Stubs**: Providing canned answers to calls made during tests

### Key Testing Libraries

- **flutter_test**: Flutter's built-in testing framework
- **mocktail**: Modern, null-safe mocking library
- **network_image_mock**: Utility for mocking network images in tests
- **integration_test**: Flutter's integration testing framework

## Setup

### Prerequisites

- Flutter SDK (latest stable version)
- Dart SDK (compatible with the Flutter version)
- Android or iOS simulator/device for integration tests

### Installing Dependencies

1. Ensure all required testing dependencies are in your `pubspec.yaml`:

```yaml
dev_dependencies:
  flutter_test:
    sdk: flutter
  flutter_lints: ^5.0.0
  build_runner: ^2.4.15
  freezed: ^3.0.3
  go_router_builder: ^2.8.2
  mocktail: ^1.0.3
  network_image_mock: ^2.1.1
  integration_test:
    sdk: flutter
```

2. Install the dependencies:

```bash
flutter pub get
```

### Test Directory Structure

The test directory is organized to mirror the app's feature-based architecture:

```
test/
├── unit/
│   ├── auth/
│   │   └── user_notifier_test.dart
│   ├── commerce/
│   │   ├── shopping_cart_notifier_test.dart
│   │   └── order_repository_test.dart
│   └── ...
├── widget/
│   ├── auth/
│   │   ├── login_screen_test.dart
│   │   └── registration_screen_test.dart
│   ├── commerce/
│   │   └── shopping_cart_screen_test.dart
│   └── ...
├── integration/
│   ├── auth_flow_test.dart
│   └── create_order_test.dart
└── e2e/
    ├── shopping_cart_e2e_test.dart
    └── order_totals_e2e_test.dart

integration_test/
```

## Running Tests

### Unit Tests

Run all unit tests with:

```bash
flutter test test/unit/
```

To run a specific unit test file:

```bash
flutter test test/unit/auth/user_notifier_test.dart
```

### Widget Tests

Run all widget tests with:

```bash
flutter test test/widget/
```

To run a specific widget test file:

```bash
flutter test test/widget/auth/login_screen_test.dart
```

### Integration Tests

Run integration tests with:

```bash
flutter test integration_test/
```

### Run All Tests

To run all tests (unit, widget, and integration):

```bash
flutter test
```

### Generating Coverage Reports

Generate a coverage report:

```bash
flutter test --coverage
```

Convert to a readable format (requires lcov):

```bash
genhtml coverage/lcov.info -o coverage/html
```

Open the coverage report:

```bash
open coverage/html/index.html
```

## End-to-End Server Tests

Unlike the unit and widget tests that use mocks, the end-to-end server tests interact with the actual backend server to validate complete functionality, including:

1. **Real API Responses**: Testing against actual server responses to ensure contract compatibility
2. **Shopping Cart Operations**: Validating that cart operations work correctly with the real backend
3. **Price Calculations**: Ensuring that client-side and server-side price calculations match
4. **Order Processing**: Testing complete order flows from cart to checkout

### Setup for E2E Server Tests

To run the end-to-end server tests:

1. **Prerequisites**:
   - A running backend server instance
   - A valid test account (credentials specified in the test files)
   - An emulator or physical device

2. **Running E2E Tests**:

```bash
flutter test test/e2e/shopping_cart_e2e_test.dart
flutter test test/e2e/order_totals_e2e_test.dart
```

### Key E2E Tests

1. **Shopping Cart Operations**:
   - `shopping_cart_e2e_test.dart`: Tests adding, removing, and updating quantities in the cart with real server sync
   - Validates that item prices and totals match expected calculations

2. **Order Totals Validation**:
   - `order_totals_e2e_test.dart`: Specifically validates the `orderTotalsProvider` calculations
   - Ensures subtotal, tax (8.25%), and total calculations are accurate
   - Verifies currency formatting and item count

## Test Organization

### Naming Conventions

- **Test file naming**: `{component_name}_test.dart`
- **Test group naming**: Describe the component or functionality being tested
- **Test case naming**: Describe the expected behavior in a specific scenario

### Test Structure

Each test file follows this general structure:

1. **Imports**: Flutter testing libraries and application files
2. **Mock declarations**: Declare any mocks used in the tests
3. **Main function**: Contains all test groups and setup
4. **Setup function**: Common setup for all tests in the file
5. **Test groups**: Organized by functionality or component
6. **Individual tests**: Test specific behaviors

Example:

```dart
void main() {
  late MockUserNotifier mockUserNotifier;
  
  setUp(() {
    mockUserNotifier = MockUserNotifier();
  });
  
  group('UserNotifier', () {
    test('should start with loading state', () {
      // Test implementation
    });
    
    test('should update state on successful login', () {
      // Test implementation
    });
  });
}
```

## Best Practices

### Writing Effective Tests

1. **Single responsibility**: Each test should verify one specific behavior
2. **Independence**: Tests should not depend on each other
3. **Readability**: Use descriptive test names and comments
4. **Consistency**: Follow the same patterns across all tests
5. **Maintainability**: Update tests when the code changes

### Testing AsyncNotifiers

When testing AsyncNotifiers with hooks_riverpod:

1. Use `ProviderContainer` to create an isolated environment
2. Override dependencies with mocks
3. Test initial state, loading state, and final state
4. Verify that the UI reacts correctly to state changes

Example:

```dart
final container = ProviderContainer(
  overrides: [
    userNotifierProvider.overrideWith(() => mockUserNotifier),
  ],
);

// Test initial state
expect(container.read(userNotifierProvider), isA<AsyncLoading<UserState>>());

// Test state after action
await container.read(userNotifierProvider.notifier).login(...);
verify(...).called(1);
```

### Testing UI Components

When testing UI components:

1. Create a test harness that wraps the widget in a MaterialApp
2. Use `tester.pumpWidget()` to render the widget
3. Use finder methods to locate elements
4. Use `tester.tap()`, `tester.enterText()`, etc. to interact with the UI
5. Use `tester.pumpAndSettle()` to let animations complete

### Mocking

Effective mocking strategies:

1. Mock only what's necessary; use real implementations when possible
2. Use `when()` to define behavior before the test runs
3. Use `verify()` to confirm method calls after the test runs
4. Set up `thenAnswer()` for asynchronous operations

## CI/CD Integration

### GitHub Actions

Basic GitHub Actions workflow for Flutter tests:

```yaml
name: Flutter Tests

on:
  push:
    branches: [ main, develop ]
  pull_request:
    branches: [ main, develop ]

jobs:
  test:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v3
      - uses: subosito/flutter-action@v2
        with:
          flutter-version: '3.16.x'
          channel: 'stable'
      - run: flutter pub get
      - run: flutter analyze
      - run: flutter test --coverage
      - uses: codecov/codecov-action@v3
        with:
          file: ./coverage/lcov.info
```

## Troubleshooting

### Common Issues

#### Widget Testing

- **Issue**: Missing MaterialApp wrapper
- **Solution**: Always wrap your widget under test in a MaterialApp

```dart
await tester.pumpWidget(
  MaterialApp(
    home: YourWidget(),
  ),
);
```

#### Mock Verification Failures

- **Issue**: `Wanted: foo() But: no matching calls.`
- **Solution**: Ensure the method is being called in your test, check parameter types and values

#### Network Images in Tests

- **Issue**: Network image loading errors in tests
- **Solution**: Use the `network_image_mock` package:

```dart
await mockNetworkImagesFor(() async {
  await tester.pumpWidget(yourWidget);
});
```

#### Asynchronous Operations

- **Issue**: Test completes before async operations finish
- **Solution**: Use `await` and `tester.pumpAndSettle()` to ensure async operations complete

### Getting Help

If you encounter issues with testing:

1. Check the Flutter testing documentation
2. Review the mocktail package documentation
3. Consult the project's testing examples
4. Reach out to the development team in the #testing channel

## Conclusion

This testing strategy provides a comprehensive approach to ensuring the FireFit Flutter application's quality and reliability. By following these guidelines, developers can create effective tests that catch issues early and support ongoing development.

Last updated: March 26, 2025
