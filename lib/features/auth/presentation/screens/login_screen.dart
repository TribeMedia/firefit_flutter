import 'package:firefit/features/auth/providers/user_notifier.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

// Custom validator for PDS server
ValidatorFunction pdsServerValidator() {
  return (AbstractControl<dynamic> control) {
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
  };
}

final loginFormGroupProvider = StateProvider<FormGroup>((ref) {
  return FormGroup({
    'identifier': FormControl<String>(
      value: '',
      validators: [Validators.required],
    ),
    'password': FormControl<String>(
      value: '',
      validators: [Validators.required],
    ),
    'pdsService': FormControl<String>(
      value: 'bsky.social',
      validators: [Validators.required],
    ),
    'customPds': FormControl<bool>(
      value: false,
    ),
  });
});

class LoginScreen extends HookConsumerWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final formGroup = ref.watch(loginFormGroupProvider);
    final authNotifier = ref.watch(userNotifierProvider.notifier);
    final authState = ref.watch(userNotifierProvider);

    // Set custom validator for PDS server
    formGroup.control('pdsService').setValidators([
      Validators.required,
      Validators.pattern(
          r'^(([a-zA-Z0-9]([a-zA-Z0-9\-]{0,61}[a-zA-Z0-9])?\.)+[a-zA-Z]{2,}|https:\/\/([a-zA-Z0-9]([a-zA-Z0-9\-]{0,61}[a-zA-Z0-9])?\.)+[a-zA-Z]{2,}(\/.*)?)?$'),
    ]);

    // Listen to changes in the customPds checkbox
    formGroup.control('customPds').valueChanges.listen((value) {
      if (value == true) {
        formGroup.control('pdsService').markAsEnabled();
      } else {
        formGroup.control('pdsService').markAsDisabled();
        formGroup.control('pdsService').value = 'bsky.social';
      }
    });

    // Initially disable the PDS service field
    if (formGroup.control('customPds').value == false) {
      formGroup.control('pdsService').markAsDisabled();
    }

    return authState.when(
      data: (state) {
        return Scaffold(
          body: Center(
            child: SingleChildScrollView(
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
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            const Text(
                              'Login',
                              style: TextStyle(
                                fontSize: 28,
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            const SizedBox(height: 32),
                            ReactiveTextField<String>(
                              formControlName: 'identifier',
                              decoration: InputDecoration(
                                labelText: 'Email or Handle',
                                hintText: 'Enter your email or handle',
                                hintStyle: TextStyle(color: Colors.grey[600]),
                                labelStyle: TextStyle(color: Colors.grey[800]),
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
                                    'Email or handle is required',
                              },
                            ),
                            const SizedBox(height: 16),
                            ReactiveTextField<String>(
                              formControlName: 'password',
                              decoration: InputDecoration(
                                labelText: 'Password',
                                hintText: 'Enter your password',
                                hintStyle: TextStyle(color: Colors.grey[600]),
                                labelStyle: TextStyle(color: Colors.grey[800]),
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
                              },
                            ),
                            const SizedBox(height: 16),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Expanded(
                                  child: Stack(
                                    children: [
                                      // This shows the default value when the field is disabled
                                      if (formGroup
                                              .control('customPds')
                                              .value ==
                                          false)
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
                                        formControlName: 'pdsService',
                                        decoration: InputDecoration(
                                          labelText: 'PDS Service',
                                          hintText:
                                              'bsky.social or https://bsky.social',
                                          hintStyle: TextStyle(
                                              color: Colors.grey[600]),
                                          labelStyle: TextStyle(
                                              color: Colors.grey[800]),
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
                                              'PDS Service is required',
                                          'pattern': (error) =>
                                              'Enter a valid domain or HTTPS URL',
                                        },
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(width: 16),
                                ReactiveCheckbox(
                                  formControlName: 'customPds',
                                  activeColor: Theme.of(context).primaryColor,
                                ),
                                const Text('Custom PDS'),
                              ],
                            ),
                            const SizedBox(height: 32),
                            ShadButton(
                              onPressed: () {
                                if (formGroup.valid) {
                                  final formData = formGroup.value;
                                  authNotifier.login(
                                    email: formData['identifier'].toString(),
                                    password: formData['password'].toString(),
                                  );
                                } else {
                                  formGroup.markAllAsTouched();
                                }
                              },
                              child: const Text('Login'),
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
                            const SizedBox(height: 16),
                            TextButton(
                              onPressed: () {
                                // Navigate to registration screen
                                Navigator.of(context)
                                    .pushReplacementNamed('/register');
                              },
                              child: const Text(
                                  'Don\'t have an account? Register'),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ),
            ),
          ),
        );
      },
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (error, stackTrace) => Center(child: Text('Error: $error')),
    );
  }
}
