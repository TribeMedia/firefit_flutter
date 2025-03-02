import 'package:firefit/features/auth/providers/user_notifier.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

class StationCodeScreen extends HookConsumerWidget {
  const StationCodeScreen({super.key});

  FormGroup buildForm() {
    return fb.group({
      'stationCode': [
        '',
        Validators.required,
        Validators.pattern(r'^[A-Z]+$'),
      ],
    });
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final formGroup = useState(buildForm());
    final userNotifier = ref.watch(userNotifierProvider.notifier);
    final userStateValue = ref.watch(userNotifierProvider);

    return userStateValue.when(
      data: (userState) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('Enter Station Code'),
            elevation: 0,
            backgroundColor: Colors.transparent,
            foregroundColor: Theme.of(context).textTheme.headlineSmall?.color,
          ),
          body: ReactiveForm(
            formGroup: formGroup.value,
            child: Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    'Enter your station code to proceed',
                    style: Theme.of(context).textTheme.headlineSmall,
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 32),
                  ReactiveTextField<String>(
                    formControlName: 'stationCode',
                    decoration: InputDecoration(
                      labelText: 'Station Code',
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      border: InputBorder.none,
                      filled: true,
                      fillColor: Colors.grey[200],
                    ),
                    textCapitalization: TextCapitalization.characters,
                    textInputAction: TextInputAction.done,
                    style: const TextStyle(fontSize: 18),
                    validationMessages: {
                      'required': (error) => 'Station code is required',
                      'pattern': (error) =>
                          'Station code must be all uppercase letters',
                    },
                  ),
                  const SizedBox(height: 32),
                  ShadButton(
                    onPressed: () {
                      if (formGroup.value.valid) {
                        final stationCode =
                            formGroup.value.control('stationCode').value;
                        userNotifier.validateStationCode(stationCode);
                      } else {
                        formGroup.value.markAllAsTouched();
                      }
                    },
                    child: const Text('Validate Station Code'),
                  ),
                  if (userState.error != null)
                    Padding(
                      padding: const EdgeInsets.only(top: 16.0),
                      child: Text(
                        userState.error!,
                        style: const TextStyle(color: Colors.red),
                        textAlign: TextAlign.center,
                      ),
                    ),
                ],
              ),
            ),
          ),
        );
      },
      loading: () {
        return const Center(child: CircularProgressIndicator());
      },
      error: (error, stackTrace) {
        return Center(child: Text('Error: $error'));
      },
    );
  }
}
