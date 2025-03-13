import 'package:firefit/features/auth/providers/user_notifier.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

// Custom validator for PDS server
Map<String, dynamic>? pdsServerValidator(AbstractControl<dynamic> control) {
  final value = control.value as String?;
  if (value == null || value.isEmpty) {
    return {'required': true};
  }

  // Check if it's a domain name without protocol (e.g., bsky.social)
  final domainRegex = RegExp(
      r'^([a-zA-Z0-9]([a-zA-Z0-9\-]{0,61}[a-zA-Z0-9])?\.)+[a-zA-Z]{2,}$');

  // Check if it's an HTTPS URL (e.g., https://bsky.social)
  final httpsUrlRegex = RegExp(
      r'^https:\/\/([a-zA-Z0-9]([a-zA-Z0-9\-]{0,61}[a-zA-Z0-9])?\.)+[a-zA-Z]{2,}(\/.*)?$');

  if (domainRegex.hasMatch(value) || httpsUrlRegex.hasMatch(value)) {
    return null;
  }

  return {'pdsFormat': true};
}

final formGroupProvider = StateProvider<FormGroup>((ref) {
  return FormGroup({
    'firstName': FormControl<String>(
      value: '',
      validators: [Validators.required],
    ),
    'lastName': FormControl<String>(
      value: '',
      validators: [Validators.required],
    ),
    'email': FormControl<String>(
      value: '',
      validators: [Validators.required, Validators.email],
    ),
    'password': FormControl<String>(
      value: '',
      validators: [
        Validators.required,
        Validators.minLength(8),
        Validators.pattern(r'^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$'),
      ],
    ),
    'pdsServer': FormControl<String>(
      value: 'bsky.social',
      disabled: true,
    ),
    'handle': FormControl<String>(
      value: '',
      validators: [Validators.required],
    ),
  });
});

// Provider to track if custom PDS server is enabled
final customPdsEnabledProvider = StateProvider<bool>((ref) => false);

class RegistrationScreen extends HookConsumerWidget {
  final String stationCode;

  const RegistrationScreen({super.key, required this.stationCode});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final formGroup = ref.watch(formGroupProvider);
    final authNotifier = ref.watch(userNotifierProvider.notifier);
    final authState = ref.watch(userNotifierProvider);
    final isCustomPdsEnabled = ref.watch(customPdsEnabledProvider);

    // Set custom validator for PDS server
    formGroup.control('pdsServer').setValidators([
      Validators.required,
      Validators.pattern(
          r'^(([a-zA-Z0-9]([a-zA-Z0-9\-]{0,61}[a-zA-Z0-9])?\.)+[a-zA-Z]{2,}|https:\/\/([a-zA-Z0-9]([a-zA-Z0-9\-]{0,61}[a-zA-Z0-9])?\.)+[a-zA-Z]{2,}(\/.*)?)?$'),
    ]);

    // Update PDS server control enabled/disabled state when checkbox changes
    ref.listen<bool>(customPdsEnabledProvider, (_, isEnabled) {
      final pdsServerControl = formGroup.control('pdsServer');
      if (isEnabled) {
        pdsServerControl.markAsEnabled();
      } else {
        pdsServerControl.markAsDisabled();
      }
    });

    return authState.when(
      data: (state) {
        return Scaffold(
          body: CustomScrollView(
            slivers: [
              SliverAppBar(
                expandedHeight: 200.0,
                floating: false,
                pinned: true,
                flexibleSpace: FlexibleSpaceBar(
                  title: const Text('Register'),
                  background: Stack(
                    fit: StackFit.expand,
                    children: [
                      Image.network(
                        state.user!.user.primaryStation?.coverUrl ?? '',
                        fit: BoxFit.cover,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Colors.transparent,
                              Colors.black.withValues(alpha: 0.7),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: ReactiveForm(
                  formGroup: formGroup,
                  child: Padding(
                    padding: const EdgeInsets.all(24.0),
                    child: LayoutBuilder(
                      builder: (context, constraints) {
                        return Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: constraints.maxWidth * 0.15,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              ReactiveTextField<String>(
                                formControlName: 'firstName',
                                decoration: InputDecoration(
                                  labelText: 'First Name',
                                  hintText: 'Enter your first name',
                                  hintStyle: TextStyle(color: Colors.grey[600]),
                                  labelStyle:
                                      TextStyle(color: Colors.grey[800]),
                                  floatingLabelBehavior:
                                      FloatingLabelBehavior.never,
                                  border: InputBorder.none,
                                  filled: true,
                                  fillColor: Colors.grey[200],
                                ),
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.grey[900],
                                ),
                                validationMessages: {
                                  'required': (error) =>
                                      'First name is required',
                                },
                              ),
                              const SizedBox(height: 16),
                              ReactiveTextField<String>(
                                formControlName: 'lastName',
                                decoration: InputDecoration(
                                  labelText: 'Last Name',
                                  hintText: 'Enter your last name',
                                  hintStyle: TextStyle(color: Colors.grey[600]),
                                  labelStyle:
                                      TextStyle(color: Colors.grey[800]),
                                  floatingLabelBehavior:
                                      FloatingLabelBehavior.never,
                                  border: InputBorder.none,
                                  filled: true,
                                  fillColor: Colors.grey[200],
                                ),
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.grey[900],
                                ),
                                validationMessages: {
                                  'required': (error) =>
                                      'Last name is required',
                                },
                              ),
                              const SizedBox(height: 16),
                              ReactiveTextField<String>(
                                formControlName: 'email',
                                decoration: InputDecoration(
                                  labelText: 'Email',
                                  hintText: 'Enter your email address',
                                  hintStyle: TextStyle(color: Colors.grey[600]),
                                  labelStyle:
                                      TextStyle(color: Colors.grey[800]),
                                  floatingLabelBehavior:
                                      FloatingLabelBehavior.never,
                                  border: InputBorder.none,
                                  filled: true,
                                  fillColor: Colors.grey[200],
                                ),
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.grey[900],
                                ),
                                keyboardType: TextInputType.emailAddress,
                                validationMessages: {
                                  'required': (error) => 'Email is required',
                                  'email': (error) =>
                                      'Please enter a valid email',
                                },
                              ),
                              const SizedBox(height: 16),
                              ReactiveTextField<String>(
                                formControlName: 'handle',
                                decoration: InputDecoration(
                                  labelText: 'Handle',
                                  hintText: 'Enter your handle (username)',
                                  hintStyle: TextStyle(color: Colors.grey[600]),
                                  labelStyle:
                                      TextStyle(color: Colors.grey[800]),
                                  floatingLabelBehavior:
                                      FloatingLabelBehavior.never,
                                  border: InputBorder.none,
                                  filled: true,
                                  fillColor: Colors.grey[200],
                                ),
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.grey[900],
                                ),
                                validationMessages: {
                                  'required': (error) => 'Handle is required',
                                },
                              ),
                              const SizedBox(height: 16),
                              ReactiveTextField<String>(
                                formControlName: 'password',
                                decoration: InputDecoration(
                                  labelText: 'Password',
                                  hintText:
                                      'Create a password (8+ chars with letters and numbers)',
                                  hintStyle: TextStyle(color: Colors.grey[600]),
                                  labelStyle:
                                      TextStyle(color: Colors.grey[800]),
                                  floatingLabelBehavior:
                                      FloatingLabelBehavior.never,
                                  border: InputBorder.none,
                                  filled: true,
                                  fillColor: Colors.grey[200],
                                ),
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.grey[900],
                                ),
                                obscureText: true,
                                validationMessages: {
                                  'required': (error) => 'Password is required',
                                  'minLength': (error) =>
                                      'Password must be at least 8 characters long',
                                  'pattern': (error) =>
                                      'Password must contain at least one letter and one number',
                                },
                              ),
                              const SizedBox(height: 16),
                              // PDS Server section with checkbox
                              Row(
                                children: [
                                  Checkbox(
                                    value: isCustomPdsEnabled,
                                    onChanged: (value) {
                                      ref
                                          .read(
                                              customPdsEnabledProvider.notifier)
                                          .state = value ?? false;
                                    },
                                  ),
                                  const Text('Use custom PDS server'),
                                ],
                              ),
                              const SizedBox(height: 8),
                              Stack(
                                children: [
                                  // This shows the default value when the field is disabled
                                  if (!isCustomPdsEnabled)
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 12.0, vertical: 16.0),
                                      child: Text(
                                        'bsky.social',
                                        style: TextStyle(
                                          fontSize: 16,
                                          color: Colors.grey[800],
                                        ),
                                      ),
                                    ),
                                  ReactiveTextField<String>(
                                    formControlName: 'pdsServer',
                                    decoration: InputDecoration(
                                      labelText: 'PDS Server',
                                      hintText:
                                          'bsky.social or https://bsky.social',
                                      hintStyle:
                                          TextStyle(color: Colors.grey[600]),
                                      labelStyle:
                                          TextStyle(color: Colors.grey[800]),
                                      floatingLabelBehavior:
                                          FloatingLabelBehavior.never,
                                      border: InputBorder.none,
                                      filled: true,
                                      fillColor: Colors.grey[200],
                                    ),
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.grey[900],
                                    ),
                                    validationMessages: {
                                      'required': (error) =>
                                          'PDS Server is required',
                                      'pattern': (error) =>
                                          'Enter a valid domain or HTTPS URL',
                                    },
                                  ),
                                ],
                              ),
                              const SizedBox(height: 32),
                              ShadButton(
                                onPressed: () {
                                  if (formGroup.valid) {
                                    final formData = formGroup.value;
                                    final pdsServer = formGroup
                                            .control('pdsServer')
                                            .value
                                            ?.toString() ??
                                        'bsky.social';
                                    print('PDS Server: $pdsServer');
                                    authNotifier.register(
                                      email: formData['email'].toString(),
                                      password: formData['password'].toString(),
                                      firstName:
                                          formData['firstName'].toString(),
                                      lastName: formData['lastName'].toString(),
                                      handle: formData['handle'].toString(),
                                      stationCode: stationCode,
                                    );
                                  } else {
                                    formGroup.markAllAsTouched();
                                  }
                                },
                                child: const Text('Register'),
                              ),
                              if (state.error != null)
                                Padding(
                                  padding: const EdgeInsets.only(top: 16.0),
                                  child: Text(
                                    state.error!,
                                    style: const TextStyle(color: Colors.red),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (error, stackTrace) => Center(child: Text('Error: $error')),
    );
  }
}
