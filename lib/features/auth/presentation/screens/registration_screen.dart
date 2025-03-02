import 'package:firefit/features/auth/providers/user_notifier.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

final formGroupProvider = StateProvider<FormGroup>((ref) {
  return fb.group({
    'firstName': ['', Validators.required],
    'lastName': ['', Validators.required],
    'email': [
      '',
      [Validators.required, Validators.email],
    ],
    'password': [
      '',
      [
        Validators.required,
        Validators.minLength(8),
        Validators.pattern(r'^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$'),
      ],
    ],
  });
});

class RegistrationScreen extends HookConsumerWidget {
  final String stationCode;

  const RegistrationScreen({super.key, required this.stationCode});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final formGroup = ref.watch(formGroupProvider);
    final authNotifier = ref.watch(userNotifierProvider.notifier);
    final authState = ref.watch(userNotifierProvider);

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
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        ReactiveTextField<String>(
                          formControlName: 'firstName',
                          decoration: InputDecoration(
                            labelText: 'First Name',
                            floatingLabelBehavior: FloatingLabelBehavior.always,
                            border: InputBorder.none,
                            filled: true,
                            fillColor: Colors.grey[200],
                          ),
                          style: const TextStyle(fontSize: 16),
                          validationMessages: {
                            'required': (error) => 'First name is required',
                          },
                        ),
                        const SizedBox(height: 16),
                        ReactiveTextField<String>(
                          formControlName: 'lastName',
                          decoration: InputDecoration(
                            labelText: 'Last Name',
                            floatingLabelBehavior: FloatingLabelBehavior.always,
                            border: InputBorder.none,
                            filled: true,
                            fillColor: Colors.grey[200],
                          ),
                          style: const TextStyle(fontSize: 16),
                          validationMessages: {
                            'required': (error) => 'Last name is required',
                          },
                        ),
                        const SizedBox(height: 16),
                        ReactiveTextField<String>(
                          formControlName: 'email',
                          decoration: InputDecoration(
                            labelText: 'Email',
                            floatingLabelBehavior: FloatingLabelBehavior.always,
                            border: InputBorder.none,
                            filled: true,
                            fillColor: Colors.grey[200],
                          ),
                          style: const TextStyle(fontSize: 16),
                          keyboardType: TextInputType.emailAddress,
                          validationMessages: {
                            'required': (error) => 'Email is required',
                            'email': (error) => 'Please enter a valid email',
                          },
                        ),
                        const SizedBox(height: 16),
                        ReactiveTextField<String>(
                          formControlName: 'password',
                          decoration: InputDecoration(
                            labelText: 'Password',
                            floatingLabelBehavior: FloatingLabelBehavior.always,
                            border: InputBorder.none,
                            filled: true,
                            fillColor: Colors.grey[200],
                          ),
                          style: const TextStyle(fontSize: 16),
                          obscureText: true,
                          validationMessages: {
                            'required': (error) => 'Password is required',
                            'minLength':
                                (error) =>
                                    'Password must be at least 8 characters long',
                            'pattern':
                                (error) =>
                                    'Password must contain at least one letter and one number',
                          },
                        ),
                        const SizedBox(height: 32),
                        ShadButton(
                          onPressed: () {
                            if (formGroup.valid) {
                              final formData = formGroup.value;
                              authNotifier.register(
                                email: formData['email'].toString(),
                                password: formData['password'].toString(),
                                firstName: formData['firstName'].toString(),
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
