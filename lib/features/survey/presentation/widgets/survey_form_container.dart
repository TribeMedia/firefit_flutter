import 'package:core/core.dart';
import 'package:firefit/features/survey/presentation/widgets/form_renderer.dart';
import 'package:firefit/features/survey/presentation/widgets/survey_renderer.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

enum RenderType { survey, form }

class SurveyFormContainer extends ConsumerWidget {
  final String title;
  final String surveyId;
  final String userId;
  final List<SurveyQuestion> surveyQuestions;
  final List<FormQuestion> formQuestions;
  final RenderType renderType;
  final void Function(UserSurvey) onCompleteSurvey;
  final void Function(UserForm) onCompleteForm;

  const SurveyFormContainer({
    super.key,
    required this.title,
    required this.surveyId,
    required this.userId,
    required this.surveyQuestions,
    required this.formQuestions,
    required this.renderType,
    required this.onCompleteSurvey,
    required this.onCompleteForm,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: renderType == RenderType.survey
          ? SurveyRenderer(
              questions: surveyQuestions,
              surveyName: title,
              surveyId: surveyId,
              userId: userId,
              onComplete: (survey) => onCompleteSurvey(survey),
            )
          : FormRenderer(
              questions: formQuestions,
              formName: title,
              formId: surveyId,
              userId: userId,
              onSubmit: (form) => onCompleteForm(form),
            ),
    );
  }
}
