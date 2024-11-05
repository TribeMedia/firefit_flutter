import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SurveyScreen extends ConsumerStatefulWidget {
  final UserSurvey survey;

  const SurveyScreen({super.key, required this.survey});

  @override
  ConsumerState<SurveyScreen> createState() => _SurveyScreenState();
}

class _SurveyScreenState extends ConsumerState<SurveyScreen> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'SurveyScreen is working',
        style: TextStyle(fontSize: 20),
      ),
    );
  }
}
