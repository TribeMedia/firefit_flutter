# Example Feature Structure for Flutter Projects

This document outlines a complete example of a feature following the clean architecture pattern specified in `CONFIG_AI.md`.

## Authentication Feature Example

Below is a comprehensive structure for an authentication feature including user registration, login, and profile management:

```
lib/
├── features/
│   └── auth/
│       ├── data/
│       │   ├── datasources/
│       │   │   ├── auth_remote_datasource.dart
│       │   │   └── auth_local_datasource.dart
│       │   ├── dtos/
│       │   │   ├── user_dto.dart
│       │   │   └── auth_response_dto.dart
│       │   └── repositories/
│       │       └── auth_repository_impl.dart
│       ├── domain/
│       │   ├── entities/
│       │   │   └── user.dart
│       │   ├── repositories/
│       │   │   └── auth_repository_interface.dart
│       │   ├── validation/
│       │   │   └── auth_validators.dart
│       │   └── failures/
│       │       └── auth_failure.dart
│       └── presentation/
│           ├── screens/
│           │   ├── login_screen.dart
│           │   ├── register_screen.dart
│           │   └── profile_screen.dart
│           ├── widgets/
│           │   ├── auth_form.dart
│           │   └── profile_header.dart
│           └── providers/
│               └── auth_view_model.dart
```

## Sample Code for Each Layer

### Domain Layer

#### Entity (user.dart)

```dart
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';

@freezed
class User with _$User {
  const factory User({
    required String id,
    required String email,
    required String name,
    String? photoUrl,
    required bool isEmailVerified,
  }) = _User;
}
```

#### Repository Interface (auth_repository_interface.dart)

```dart
import 'package:dartz/dartz.dart';
import 'package:fp_dart/fp_dart.dart' as fp;
import '../entities/user.dart';
import '../failures/auth_failure.dart';

abstract class AuthRepositoryInterface {
  /// Signs in a user with email and password
  Future<Either<AuthFailure, User>> signIn(String email, String password);
  
  /// Registers a new user with email and password
  Future<Either<AuthFailure, User>> register(String email, String password, String name);
  
  /// Signs out the current user
  Future<Either<AuthFailure, Unit>> signOut();
  
  /// Gets the current authenticated user
  Future<Either<AuthFailure, User?>> getCurrentUser();
  
  /// Updates user profile information
  Future<Either<AuthFailure, User>> updateProfile(User user);
  
  /// Stream of authentication state changes
  Stream<fp.Option<User>> get authStateChanges;
}
```

#### Failure (auth_failure.dart)

```dart
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_failure.freezed.dart';

@freezed
class AuthFailure with _$AuthFailure {
  const factory AuthFailure.serverError([String? message]) = ServerError;
  const factory AuthFailure.invalidCredentials() = InvalidCredentials;
  const factory AuthFailure.emailAlreadyInUse() = EmailAlreadyInUse;
  const factory AuthFailure.weakPassword() = WeakPassword;
  const factory AuthFailure.userNotFound() = UserNotFound;
  const factory AuthFailure.networkError() = NetworkError;
  const factory AuthFailure.unexpected() = Unexpected;
}
```

#### Validation (auth_validators.dart)

```dart
import 'package:dartz/dartz.dart';

enum ValidationError {
  empty,
  invalidFormat,
  tooShort,
  tooLong,
}

class AuthValidators {
  Either<ValidationError, String> validateEmail(String email) {
    if (email.isEmpty) {
      return left(ValidationError.empty);
    }
    
    final emailRegex = RegExp(r'^[^@]+@[^@]+\.[^@]+$');
    if (!emailRegex.hasMatch(email)) {
      return left(ValidationError.invalidFormat);
    }
    
    return right(email);
  }
  
  Either<ValidationError, String> validatePassword(String password) {
    if (password.isEmpty) {
      return left(ValidationError.empty);
    }
    
    if (password.length < 8) {
      return left(ValidationError.tooShort);
    }
    
    return right(password);
  }
  
  Either<ValidationError, String> validateName(String name) {
    if (name.isEmpty) {
      return left(ValidationError.empty);
    }
    
    if (name.length < 2) {
      return left(ValidationError.tooShort);
    }
    
    if (name.length > 50) {
      return left(ValidationError.tooLong);
    }
    
    return right(name);
  }
}
```

### Data Layer

#### DTO (user_dto.dart)

```dart
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';
import '../../domain/entities/user.dart';

part 'user_dto.freezed.dart';
part 'user_dto.g.dart';

@freezed
class UserDto with _$UserDto {
  const factory UserDto({
    required String id,
    required String email,
    required String name,
    String? photoUrl,
    @Default(false) bool isEmailVerified,
  }) = _UserDto;
  
  factory UserDto.fromJson(Map<String, dynamic> json) => _$UserDtoFromJson(json);
  
  factory UserDto.fromDomain(User user) => UserDto(
    id: user.id,
    email: user.email,
    name: user.name,
    photoUrl: user.photoUrl,
    isEmailVerified: user.isEmailVerified,
  );
}

extension UserDtoX on UserDto {
  User toDomain() => User(
    id: id,
    email: email,
    name: name,
    photoUrl: photoUrl,
    isEmailVerified: isEmailVerified,
  );
}
```

#### Remote Data Source (auth_remote_datasource.dart)

```dart
import 'package:dio/dio.dart';
import '../dtos/user_dto.dart';
import '../dtos/auth_response_dto.dart';
import '../../../../core/error/exceptions.dart';

abstract class AuthRemoteDataSource {
  Future<UserDto> signIn(String email, String password);
  Future<UserDto> register(String email, String password, String name);
  Future<UserDto> getCurrentUser();
  Future<UserDto> updateProfile(UserDto user);
}

class AuthRemoteDataSourceImpl implements AuthRemoteDataSource {
  final Dio _dio;
  
  AuthRemoteDataSourceImpl(this._dio);
  
  @override
  Future<UserDto> signIn(String email, String password) async {
    try {
      final response = await _dio.post<Map<String, dynamic>>(
        '/auth/login',
        data: {
          'email': email,
          'password': password,
        },
      );
      
      final authResponse = AuthResponseDto.fromJson(response.data!);
      // Store token in the local storage or secure storage
      return authResponse.user;
    } on DioException catch (e) {
      if (e.response?.statusCode == 401) {
        throw const UnauthorizedException('Invalid credentials');
      }
      throw ServerException(e.message ?? 'Server error');
    } catch (e) {
      throw ServerException('Unexpected error occurred');
    }
  }
  
  @override
  Future<UserDto> register(String email, String password, String name) async {
    try {
      final response = await _dio.post<Map<String, dynamic>>(
        '/auth/register',
        data: {
          'email': email,
          'password': password,
          'name': name,
        },
      );
      
      final authResponse = AuthResponseDto.fromJson(response.data!);
      // Store token in the local storage or secure storage
      return authResponse.user;
    } on DioException catch (e) {
      if (e.response?.statusCode == 409) {
        throw const ConflictException('Email already in use');
      }
      throw ServerException(e.message ?? 'Server error');
    } catch (e) {
      throw ServerException('Unexpected error occurred');
    }
  }
  
  @override
  Future<UserDto> getCurrentUser() async {
    try {
      final response = await _dio.get<Map<String, dynamic>>('/auth/me');
      return UserDto.fromJson(response.data!);
    } on DioException catch (e) {
      if (e.response?.statusCode == 401) {
        throw const UnauthorizedException('Not authenticated');
      }
      throw ServerException(e.message ?? 'Server error');
    } catch (e) {
      throw ServerException('Unexpected error occurred');
    }
  }
  
  @override
  Future<UserDto> updateProfile(UserDto user) async {
    try {
      final response = await _dio.put<Map<String, dynamic>>(
        '/users/${user.id}',
        data: user.toJson(),
      );
      return UserDto.fromJson(response.data!);
    } on DioException catch (e) {
      throw ServerException(e.message ?? 'Server error');
    } catch (e) {
      throw ServerException('Unexpected error occurred');
    }
  }
}
```

#### Local Data Source (auth_local_datasource.dart)

```dart
import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';
import '../dtos/user_dto.dart';
import '../../../../core/error/exceptions.dart';

abstract class AuthLocalDataSource {
  Future<void> cacheUser(UserDto user);
  Future<UserDto?> getLastLoggedInUser();
  Future<void> clearUser();
  Future<void> cacheToken(String token);
  Future<String?> getToken();
  Future<void> clearToken();
}

class AuthLocalDataSourceImpl implements AuthLocalDataSource {
  final SharedPreferences _prefs;
  
  AuthLocalDataSourceImpl(this._prefs);
  
  static const userKey = 'CACHED_USER';
  static const tokenKey = 'AUTH_TOKEN';
  
  @override
  Future<void> cacheUser(UserDto user) async {
    await _prefs.setString(userKey, jsonEncode(user.toJson()));
  }
  
  @override
  Future<UserDto?> getLastLoggedInUser() async {
    final jsonString = _prefs.getString(userKey);
    if (jsonString == null) return null;
    
    try {
      return UserDto.fromJson(jsonDecode(jsonString));
    } catch (e) {
      throw CacheException('Failed to parse cached user');
    }
  }
  
  @override
  Future<void> clearUser() async {
    await _prefs.remove(userKey);
  }
  
  @override
  Future<void> cacheToken(String token) async {
    await _prefs.setString(tokenKey, token);
  }
  
  @override
  Future<String?> getToken() async {
    return _prefs.getString(tokenKey);
  }
  
  @override
  Future<void> clearToken() async {
    await _prefs.remove(tokenKey);
  }
}
```

#### Repository Implementation (auth_repository_impl.dart)

```dart
import 'package:dartz/dartz.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:fp_dart/fp_dart.dart' as fp;
import 'package:rxdart/rxdart.dart';

import '../datasources/auth_remote_datasource.dart';
import '../datasources/auth_local_datasource.dart';
import '../dtos/user_dto.dart';
import '../../domain/entities/user.dart';
import '../../domain/repositories/auth_repository_interface.dart';
import '../../domain/failures/auth_failure.dart';
import '../../../../core/error/exceptions.dart';

class AuthRepositoryImpl implements AuthRepositoryInterface {
  final AuthRemoteDataSource _remoteDataSource;
  final AuthLocalDataSource _localDataSource;
  final Connectivity _connectivity;
  final BehaviorSubject<fp.Option<User>> _authStateController = BehaviorSubject.seeded(fp.none());
  
  AuthRepositoryImpl(
    this._remoteDataSource,
    this._localDataSource,
    this._connectivity,
  ) {
    // Initialize auth state
    _initAuthState();
  }
  
  Future<void> _initAuthState() async {
    final user = await _localDataSource.getLastLoggedInUser();
    if (user != null) {
      _authStateController.add(fp.some(user.toDomain()));
    }
  }
  
  @override
  Stream<fp.Option<User>> get authStateChanges => _authStateController.stream;
  
  @override
  Future<Either<AuthFailure, User>> signIn(String email, String password) async {
    if (!await _isConnected()) {
      return left(const AuthFailure.networkError());
    }
    
    try {
      final userDto = await _remoteDataSource.signIn(email, password);
      await _localDataSource.cacheUser(userDto);
      
      final user = userDto.toDomain();
      _authStateController.add(fp.some(user));
      
      return right(user);
    } on UnauthorizedException {
      return left(const AuthFailure.invalidCredentials());
    } on ServerException catch (e) {
      return left(AuthFailure.serverError(e.message));
    } catch (e) {
      return left(const AuthFailure.unexpected());
    }
  }
  
  @override
  Future<Either<AuthFailure, User>> register(String email, String password, String name) async {
    if (!await _isConnected()) {
      return left(const AuthFailure.networkError());
    }
    
    try {
      final userDto = await _remoteDataSource.register(email, password, name);
      await _localDataSource.cacheUser(userDto);
      
      final user = userDto.toDomain();
      _authStateController.add(fp.some(user));
      
      return right(user);
    } on ConflictException {
      return left(const AuthFailure.emailAlreadyInUse());
    } on ServerException catch (e) {
      return left(AuthFailure.serverError(e.message));
    } catch (e) {
      return left(const AuthFailure.unexpected());
    }
  }
  
  @override
  Future<Either<AuthFailure, Unit>> signOut() async {
    try {
      await _localDataSource.clearUser();
      await _localDataSource.clearToken();
      
      _authStateController.add(fp.none());
      
      return right(unit);
    } catch (e) {
      return left(const AuthFailure.unexpected());
    }
  }
  
  @override
  Future<Either<AuthFailure, User?>> getCurrentUser() async {
    try {
      // First try to get from local cache
      final cachedUser = await _localDataSource.getLastLoggedInUser();
      if (cachedUser != null) {
        return right(cachedUser.toDomain());
      }
      
      // If not connected, return null
      if (!await _isConnected()) {
        return right(null);
      }
      
      // Try to get from the server
      final token = await _localDataSource.getToken();
      if (token == null) {
        return right(null);
      }
      
      final userDto = await _remoteDataSource.getCurrentUser();
      await _localDataSource.cacheUser(userDto);
      
      final user = userDto.toDomain();
      _authStateController.add(fp.some(user));
      
      return right(user);
    } on UnauthorizedException {
      // Token is invalid, clear local data
      await _localDataSource.clearToken();
      await _localDataSource.clearUser();
      _authStateController.add(fp.none());
      
      return right(null);
    } on ServerException catch (e) {
      return left(AuthFailure.serverError(e.message));
    } catch (e) {
      return left(const AuthFailure.unexpected());
    }
  }
  
  @override
  Future<Either<AuthFailure, User>> updateProfile(User user) async {
    if (!await _isConnected()) {
      return left(const AuthFailure.networkError());
    }
    
    try {
      final userDto = UserDto.fromDomain(user);
      final updatedUserDto = await _remoteDataSource.updateProfile(userDto);
      await _localDataSource.cacheUser(updatedUserDto);
      
      final updatedUser = updatedUserDto.toDomain();
      _authStateController.add(fp.some(updatedUser));
      
      return right(updatedUser);
    } on ServerException catch (e) {
      return left(AuthFailure.serverError(e.message));
    } catch (e) {
      return left(const AuthFailure.unexpected());
    }
  }
  
  Future<bool> _isConnected() async {
    final result = await _connectivity.checkConnectivity();
    return result != ConnectivityResult.none;
  }
  
  void dispose() {
    _authStateController.close();
  }
}
```

### Presentation Layer

#### View Model (auth_view_model.dart)

```dart
import 'dart:async';
import 'package:dartz/dartz.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:fp_dart/fp_dart.dart' as fp;

import '../../domain/entities/user.dart';
import '../../domain/failures/auth_failure.dart';
import '../../domain/repositories/auth_repository_interface.dart';
import '../../domain/validation/auth_validators.dart';

part 'auth_view_model.freezed.dart';
part 'auth_view_model.g.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState({
    User? user,
    @Default(false) bool isLoading,
    AuthFailure? error,
  }) = _AuthState;
  
  const factory AuthState.initial() = _Initial;
  const factory AuthState.authenticated(User user) = _Authenticated;
  const factory AuthState.unauthenticated() = _Unauthenticated;
  const factory AuthState.loading() = _Loading;
  const factory AuthState.error(AuthFailure failure) = _Error;
}

final authRepositoryProvider = Provider<AuthRepositoryInterface>((ref) {
  throw UnimplementedError('Provider must be overridden');
});

@riverpod
class AuthViewModel extends _$AuthViewModel {
  StreamSubscription<fp.Option<User>>? _authStateSubscription;
  
  @override
  AuthState build() {
    final repository = ref.watch(authRepositoryProvider);
    
    // Listen to auth state changes
    _authStateSubscription?.cancel();
    _authStateSubscription = repository.authStateChanges.listen((userOption) {
      userOption.fold(
        () => state = const AuthState.unauthenticated(),
        (user) => state = AuthState.authenticated(user),
      );
    });
    
    ref.onDispose(() {
      _authStateSubscription?.cancel();
    });
    
    return const AuthState.initial();
  }
  
  Future<void> checkAuthState() async {
    if (state.isLoading) return;
    
    state = const AuthState.loading();
    
    final repository = ref.read(authRepositoryProvider);
    final result = await repository.getCurrentUser();
    
    state = result.fold(
      (failure) => AuthState.error(failure),
      (user) => user != null 
        ? AuthState.authenticated(user)
        : const AuthState.unauthenticated(),
    );
  }
  
  Future<Either<AuthFailure, User>> signIn(String email, String password) async {
    if (state.isLoading) return left(const AuthFailure.unexpected());
    
    state = state.copyWith(isLoading: true, error: null);
    
    final validators = AuthValidators();
    final emailValidation = validators.validateEmail(email);
    final passwordValidation = validators.validatePassword(password);
    
    // Validate input
    if (emailValidation.isLeft() || passwordValidation.isLeft()) {
      state = state.copyWith(
        isLoading: false, 
        error: const AuthFailure.invalidCredentials(),
      );
      return left(const AuthFailure.invalidCredentials());
    }
    
    final repository = ref.read(authRepositoryProvider);
    final result = await repository.signIn(email, password);
    
    result.fold(
      (failure) => state = state.copyWith(isLoading: false, error: failure),
      (user) => state = AuthState.authenticated(user),
    );
    
    return result;
  }
  
  Future<Either<AuthFailure, User>> register(String email, String password, String name) async {
    if (state.isLoading) return left(const AuthFailure.unexpected());
    
    state = state.copyWith(isLoading: true, error: null);
    
    final validators = AuthValidators();
    final emailValidation = validators.validateEmail(email);
    final passwordValidation = validators.validatePassword(password);
    final nameValidation = validators.validateName(name);
    
    // Validate input
    if (emailValidation.isLeft() || passwordValidation.isLeft() || nameValidation.isLeft()) {
      state = state.copyWith(
        isLoading: false, 
        error: const AuthFailure.invalidCredentials(),
      );
      return left(const AuthFailure.invalidCredentials());
    }
    
    final repository = ref.read(authRepositoryProvider);
    final result = await repository.register(email, password, name);
    
    result.fold(
      (failure) => state = state.copyWith(isLoading: false, error: failure),
      (user) => state = AuthState.authenticated(user),
    );
    
    return result;
  }
  
  Future<Either<AuthFailure, Unit>> signOut() async {
    if (state.isLoading) return left(const AuthFailure.unexpected());
    
    state = state.copyWith(isLoading: true, error: null);
    
    final repository = ref.read(authRepositoryProvider);
    final result = await repository.signOut();
    
    result.fold(
      (failure) => state = state.copyWith(isLoading: false, error: failure),
      (_) => state = const AuthState.unauthenticated(),
    );
    
    return result;
  }
  
  Future<Either<AuthFailure, User>> updateProfile(User user) async {
    if (state.isLoading) return left(const AuthFailure.unexpected());
    
    state = state.copyWith(isLoading: true, error: null);
    
    final repository = ref.read(authRepositoryProvider);
    final result = await repository.updateProfile(user);
    
    result.fold(
      (failure) => state = state.copyWith(isLoading: false, error: failure),
      (updatedUser) => state = AuthState.authenticated(updatedUser),
    );
    
    return result;
  }
}
```

#### Login Screen (login_screen.dart)

```dart
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:go_router/go_router.dart';

import '../providers/auth_view_model.dart';
import '../widgets/auth_form.dart';

class LoginScreen extends HookConsumerWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authState = ref.watch(authViewModelProvider);
    
    // Create form using hooks
    final form = useMemoized(() => FormGroup({
      'email': FormControl<String>(
        validators: [Validators.required, Validators.email],
      ),
      'password': FormControl<String>(
        validators: [Validators.required, Validators.minLength(8)],
      ),
    }));
    
    // Handle auth state changes
    useEffect(() {
      if (authState is _Authenticated) {
        // Navigate to home screen
        context.go('/home');
      }
      return null;
    }, [authState]);
    
    // Handle login
    final handleLogin = useCallback(() {
      if (form.valid) {
        final email = form.control('email').value as String;
        final password = form.control('password').value as String;
        
        ref.read(authViewModelProvider.notifier).signIn(email, password);
      } else {
        form.markAllAsTouched();
      }
    }, [form]);
    
    return Scaffold(
      appBar: AppBar(title: const Text('Login')),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Text(
                'Welcome Back',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 32),
              
              // Login form
              AuthForm(
                form: form,
                isLoading: authState.isLoading,
                error: authState.error,
                onSubmit: handleLogin,
                submitButtonText: 'Login',
              ),
              
              const SizedBox(height: 16),
              
              // Register link
              TextButton(
                onPressed: () => context.go('/register'),
                child: const Text('Don\'t have an account? Register'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
```

#### Auth Form Widget (auth_form.dart)

```dart
import 'package:flutter/material.dart';
import 'package:reactive_forms/reactive_forms.dart';

import '../../domain/failures/auth_failure.dart';

class AuthForm extends StatelessWidget {
  final FormGroup form;
  final bool isLoading;
  final AuthFailure? error;
  final VoidCallback onSubmit;
  final String submitButtonText;
  final bool showNameField;

  const AuthForm({
    Key? key,
    required this.form,
    required this.isLoading,
    this.error,
    required this.onSubmit,
    required this.submitButtonText,
    this.showNameField = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ReactiveForm(
      formGroup: form,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // Name field (optional)
          if (showNameField) ...[
            ReactiveTextField<String>(
              formControlName: 'name',
              decoration: const InputDecoration(
                labelText: 'Name',
                prefixIcon: Icon(Icons.person),
              ),
              validationMessages: {
                'required': (error) => 'Name is required',
                'minLength': (error) => 'Name must be at least 2 characters',
                'maxLength': (error) => 'Name must be less than 50 characters',
              },
              keyboardType: TextInputType.name,
              textInputAction: TextInputAction.next,
            ),
            const SizedBox(height: 16),
          ],
          
          // Email field
          ReactiveTextField<String>(
            formControlName: 'email',
            decoration: const InputDecoration(
              labelText: 'Email',
              prefixIcon: Icon(Icons.email),
            ),
            validationMessages: {
              'required': (error) => 'Email is required',
              'email': (error) => 'Please enter a valid email address',
            },
            keyboardType: TextInputType.emailAddress,
            textInputAction: TextInputAction.next,
          ),
          const SizedBox(height: 16),
          
          // Password field
          ReactiveTextField<String>(
            formControlName: 'password',
            obscureText: true,
            decoration: const InputDecoration(
              labelText: 'Password',
              prefixIcon: Icon(Icons.lock),
            ),
            validationMessages: {
              'required': (error) => 'Password is required',
              'minLength': (error) => 'Password must be at least 8 characters',
            },
            keyboardType: TextInputType.visiblePassword,
            textInputAction: TextInputAction.done,
          ),
          const SizedBox(height: 24),
          
          // Error message
          if (error != null)
            Padding(
              padding: const EdgeInsets.only(bottom: 16),
              child: Text(
                _getErrorMessage(error!),
                style: TextStyle(color: Theme.of(context).colorScheme.error),
                textAlign: TextAlign.center,
              ),
            ),
          
          // Submit button
          SizedBox(
            height: 50,
            child: isLoading
                ? const Center(child: CircularProgressIndicator())
                : ElevatedButton(
                    onPressed: onSubmit,
                    child: Text(submitButtonText),
                  ),
          ),
        ],
      ),
    );
  }
  
  String _getErrorMessage(AuthFailure failure) {
    return failure.maybeWhen(
      serverError: (message) => message ?? 'Server error occurred',
      invalidCredentials: () => 'Invalid email or password',
      emailAlreadyInUse: () => 'Email is already in use',
      weakPassword: () => 'Password is too weak',
      userNotFound: () => 'User not found',
