# AI Configuration for Flutter Projects

## Project Standards and Configuration (2025)

### Naming Conventions and Package Management
1. Use snake_case for file and directory names
2. Use camelCase for variable and function names
3. Use PascalCase for class, enum, and typedef names
4. Use melos for monorepo management and package versioning

### Technology Stack
1. Flutter (latest stable version) with support for web, mobile, and desktop
2. hooks_riverpod with flutter_hooks for state management
3. go_router with go_router_generator for navigation
4. freezed and json_serializable for immutable models and serialization
5. fp_dart for functional programming patterns
6. reactive_forms for form management
7. Dart (latest stable version) with strict type checking and null safety

### Project Structure
Feature-based clean architecture with the following directories:
- `lib/`
  - `app/` - Application-level components (root widget, theme, routes)
  - `features/` - Feature modules
    - `feature_name/` - Individual feature module
      - `data/` - Repositories, remote/local data sources, DTOs
      - `domain/` - Entities, interfaces, use cases
      - `presentation/` - Screens, widgets, view models (AsyncNotifiers)
  - `core/` - Shared code across features
    - `network/` - API clients, interceptors
    - `storage/` - Local storage utilities
    - `utils/` - Helper functions and extensions
    - `widgets/` - Common widgets
  - `main.dart` - Entry point
- `packages/` - Shared packages (in monorepo)
  - `core/` - Core package with entities and interfaces

### Architecture Guidelines

#### Repository Pattern
- Create an interface (`*_interface.dart`) in the domain layer
- Implement the interface in the data layer
- Methods should return `Future<Either<Failure, Success>>` for error handling
- Use dependency injection to provide repository implementations

#### AsyncNotifier
- Use AsyncNotifier for view models
- Return `FutureOr<T>` from the build method
- State should include `isLoading` and `error` properties
- Use riverpod code generator (`@riverpod`) to create providers
- AsyncNotifiers should communicate with repositories, not data sources directly

#### Navigation
- Use go_router for navigation
- Define typed route classes using go_router_generator
- Implement deep linking support
- Use StatefulShellRoute for complex navigation patterns (tabs, nested navigation)

#### Models
- Use freezed for immutable data models
- Add `copyWith()` functionality to all models
- Implement `toJson()` and `fromJson()` using json_serializable
- Keep models specific to their layer (DTOs in data, entities in domain)

### Best Practices
1. **State Management**:
   - Components never talk to providers directly, use hooks instead
   - Prefer AsyncNotifiers over StateNotifiers
   - Use riverpod code generation with `@riverpod` annotation
   - Implement proper loading and error states

2. **Error Handling**:
   - Use Either<Failure, Success> for functional error handling
   - Create custom Failure classes for different error types
   - Handle loading, error, and data states in the UI
   - Implement proper error logging

3. **Real-time Updates**:
   - Model real-time updates as streams in view models
   - Handle the connection inside an AsyncNotifier
   - Expose streams to components

4. **Form Management**:
   - Use reactive_forms for complex forms
   - Implement validation logic in separate form models
   - Connect forms to AsyncNotifiers for submission

5. **Testing**:
   - Write unit tests for domain and data layers
   - Write widget tests for presentation layer
   - Use mockito or mocktail for mocking dependencies
   - Achieve high test coverage for business logic

## Code Examples

### Repository Pattern with Either

```dart
// Domain layer - interface
abstract class AuthRepository {
  Future<Either<AuthFailure, User>> signIn(String email, String password);
}

// Data layer - implementation
class AuthRepositoryImpl implements AuthRepository {
  final AuthApi _authApi;
  
  AuthRepositoryImpl(this._authApi);
  
  @override
  Future<Either<AuthFailure, User>> signIn(String email, String password) async {
    try {
      final userDto = await _authApi.signIn(email, password);
      return right(userDto.toDomain());
    } on ApiException catch (e) {
      return left(AuthFailure.serverError(e.message));
    } catch (e) {
      return left(const AuthFailure.unexpected());
    }
  }
}
```

### AsyncNotifier View Model

```dart
@riverpod
class AuthViewModel extends _$AuthViewModel {
  @override
  FutureOr<AuthState> build() {
    return const AuthState.initial();
  }
  
  Future<void> signIn(String email, String password) async {
    state = const AsyncValue.loading();
    
    final authRepository = ref.read(authRepositoryProvider);
    final result = await authRepository.signIn(email, password);
    
    state = result.fold(
      (failure) => AsyncValue.error(failure, StackTrace.current),
      (user) => AsyncValue.data(AuthState.authenticated(user)),
    );
  }
}

@freezed
class AuthState with _$AuthState {
  const factory AuthState.initial() = _Initial;
  const factory AuthState.authenticated(User user) = _Authenticated;
}
```

### Routing with go_router

```dart
@TypedGoRoute<HomeRoute>(
  path: '/',
  name: 'home',
)
class HomeRoute extends GoRouteData {
  const HomeRoute();
  
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const HomeScreen();
  }
}

@TypedGoRoute<ProfileRoute>(
  path: '/profile/:id',
  name: 'profile',
)
class ProfileRoute extends GoRouteData {
  const ProfileRoute({required this.id});
  
  final String id;
  
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return ProfileScreen(userId: id);
  }
}
```

## Common Patterns

### Loading, Error, and Data States

```dart
class DataScreen extends HookConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final dataState = ref.watch(dataViewModelProvider);
    
    return dataState.when(
      loading: () => const LoadingIndicator(),
      error: (error, stackTrace) => ErrorDisplay(
        error: error,
        onRetry: () => ref.refresh(dataViewModelProvider),
      ),
      data: (data) => DataDisplay(data: data),
    );
  }
}
```

### Form Management

```dart
class LoginForm extends HookConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final form = useMemoized(() => FormGroup({
      'email': FormControl<String>(
        validators: [Validators.required, Validators.email],
      ),
      'password': FormControl<String>(
        validators: [Validators.required, Validators.minLength(8)],
      ),
    }));
    
    return ReactiveForm(
      formGroup: form,
      child: Column(
        children: [
          ReactiveTextField(
            formControlName: 'email',
            decoration: const InputDecoration(labelText: 'Email'),
          ),
          ReactiveTextField(
            formControlName: 'password',
            obscureText: true,
            decoration: const InputDecoration(labelText: 'Password'),
          ),
          ReactiveFormConsumer(
            builder: (context, form, child) {
              return ElevatedButton(
                onPressed: form.valid
                  ? () => ref.read(authViewModelProvider.notifier).signIn(
                      form.control('email').value,
                      form.control('password').value,
                    )
                  : null,
                child: const Text('Login'),
              );
            },
          ),
        ],
      ),
    );
  }
}
```

### Models with Freezed

```dart
@freezed
class User with _$User {
  const factory User({
    required String id,
    required String name,
    required String email,
    String? photoUrl,
  }) = _User;
  
  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
```

## Recommended Configurations

- **Analysis Options**: Enable strict type checking with `implicit-casts: false` and `implicit-dynamic: false`
- **Build Runner**: Use `dart run build_runner watch --delete-conflicting-outputs` for code generation
- **Melos**: Configure with `melos.yaml` for managing multiple packages
- **Environment Variables**: Use envy for environment management with different configurations per environment
