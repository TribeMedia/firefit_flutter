import 'package:auto_size_text/auto_size_text.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:forui/forui.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

final userProfileProvider =
    StateNotifierProvider<UserProfileNotifier, UserProfile>((ref) {
  return UserProfileNotifier();
});

class UserProfile {
  final Map<String, dynamic> surveyAnswers;
  final Map<String, String> notes;

  UserProfile({required this.surveyAnswers, required this.notes});

  UserProfile copyWith({
    Map<String, dynamic>? surveyAnswers,
    Map<String, String>? notes,
  }) {
    return UserProfile(
      surveyAnswers: surveyAnswers ?? this.surveyAnswers,
      notes: notes ?? this.notes,
    );
  }
}

class UserProfileNotifier extends StateNotifier<UserProfile> {
  UserProfileNotifier()
      : super(UserProfile(
          surveyAnswers: {
            'q1': '24/48',
            'q2': ['High Blood Pressure', 'Diabetes'],
            'q3': 'No specific allergies.',
            'q4': 'Maintain Strength for Job Requirements',
            'q5': 'Traditional Balanced Diet',
            'q6': ['Lean Meats', 'Fish'],
            'q7': '4-5',
            'q8': 'High sodium content.',
            'q9': ['Meal Prep in Advance', 'Fresh Cooked Meals'],
            'q10': '2500-3000',
          },
          notes: {
            'q1': 'Works well with my lifestyle.',
            'q2': 'Need to monitor sugar intake.',
            'q3': '',
            'q4': 'Important for job performance.',
            'q5': 'Fits my nutritional needs.',
            'q6': 'Prefer these for protein.',
            'q7': 'Keeps energy levels stable.',
            'q8': 'Need healthier options.',
            'q9': 'Allows flexibility.',
            'q10': 'Based on current activity level.',
          },
        ));

  void updateAnswer(String questionId, dynamic answer) {
    state = state.copyWith(
      surveyAnswers: {...state.surveyAnswers, questionId: answer},
    );
  }

  void updateNote(String questionId, String note) {
    state = state.copyWith(
      notes: {...state.notes, questionId: note},
    );
  }
}

class ProfileScreen extends HookConsumerWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userProfile = ref.watch(userProfileProvider);

    return FScaffold(
      header: FHeader(
        title: Text('Your Profile'),
      ),
      contentPad: false,
      content: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Profile Summary',
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              SizedBox(height: 16),
              _buildProfileSummary(userProfile),
              SizedBox(height: 32),
              Text(
                'Survey Responses',
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              SizedBox(height: 16),
              _buildSurveyResponses(context, ref, userProfile),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildProfileSummary(UserProfile profile) {
    return ShadCard(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
                'Shift Schedule: ${profile.surveyAnswers['q1'] ?? 'Not specified'}'),
            SizedBox(height: 8),
            Text(
                'Primary Fitness Goal: ${profile.surveyAnswers['q4'] ?? 'Not specified'}'),
            SizedBox(height: 8),
            Text(
                'Dietary Pattern: ${profile.surveyAnswers['q5'] ?? 'Not specified'}'),
            SizedBox(height: 8),
            Text(
                'Daily Caloric Requirement: ${profile.surveyAnswers['q10'] ?? 'Not specified'}'),
          ],
        ),
      ),
    );
  }

  Widget _buildSurveyResponses(
      BuildContext context, WidgetRef ref, UserProfile profile) {
    return ShadAccordion<String>.multiple(
      children: [
        _buildSurveyQuestion(
          context,
          ref,
          'q1',
          'What shift schedule do you typically work?',
          profile.surveyAnswers['q1'] ?? '',
          profile.notes['q1'] ?? '',
          answerType: 'single_choice',
          choices: ['24/48', '48/96', 'Kelly Schedule', 'Other'],
        ),
        _buildSurveyQuestion(
          context,
          ref,
          'q2',
          'Do you have any diagnosed medical conditions that affect your diet?',
          profile.surveyAnswers['q2'] ?? [],
          profile.notes['q2'] ?? '',
          answerType: 'multiple_choice',
          choices: [
            'High Blood Pressure',
            'Diabetes',
            'Heart Disease',
            'Food Allergies',
            'None'
          ],
        ),
        _buildSurveyQuestion(
          context,
          ref,
          'q3',
          'Please describe any specific food allergies or sensitivities you have:',
          profile.surveyAnswers['q3'] ?? '',
          profile.notes['q3'] ?? '',
          answerType: 'essay',
        ),
        _buildSurveyQuestion(
          context,
          ref,
          'q4',
          'What is your primary fitness goal as a firefighter?',
          profile.surveyAnswers['q4'] ?? '',
          profile.notes['q4'] ?? '',
          answerType: 'single_choice',
          choices: [
            'Maintain Strength for Job Requirements',
            'Weight Management',
            'Cardiovascular Health',
            'Overall Wellness'
          ],
        ),
        _buildSurveyQuestion(
          context,
          ref,
          'q5',
          'Which dietary pattern best describes your current eating habits?',
          profile.surveyAnswers['q5'] ?? '',
          profile.notes['q5'] ?? '',
          answerType: 'single_choice',
          choices: [
            'Traditional Balanced Diet',
            'Low-Carb',
            'Mediterranean',
            'Plant-Based',
            'Gluten-Free'
          ],
        ),
        _buildSurveyQuestion(
          context,
          ref,
          'q6',
          'What are your preferred protein sources?',
          profile.surveyAnswers['q6'] ?? [],
          profile.notes['q6'] ?? '',
          answerType: 'multiple_choice',
          choices: [
            'Lean Meats',
            'Fish',
            'Eggs',
            'Plant-Based Proteins',
            'Dairy Products'
          ],
        ),
        _buildSurveyQuestion(
          context,
          ref,
          'q7',
          'How many meals do you typically eat during your shift?',
          profile.surveyAnswers['q7'] ?? '',
          profile.notes['q7'] ?? '',
          answerType: 'single_choice',
          choices: ['2-3', '4-5', '6+', 'Varies by Shift'],
        ),
        _buildSurveyQuestion(
          context,
          ref,
          'q8',
          'What specific nutritional concerns do you have about firehouse meals?',
          profile.surveyAnswers['q8'] ?? '',
          profile.notes['q8'] ?? '',
          answerType: 'essay',
        ),
        _buildSurveyQuestion(
          context,
          ref,
          'q9',
          'Select your preferred meal preparation methods at the station:',
          profile.surveyAnswers['q9'] ?? [],
          profile.notes['q9'] ?? '',
          answerType: 'multiple_choice',
          choices: [
            'Meal Prep in Advance',
            'Fresh Cooked Meals',
            'Pre-Made Meals',
            'Mix of Fresh and Pre-Made'
          ],
        ),
        _buildSurveyQuestion(
          context,
          ref,
          'q10',
          'What is your typical daily caloric requirement based on your activity level and job demands?',
          profile.surveyAnswers['q10'] ?? '',
          profile.notes['q10'] ?? '',
          answerType: 'single_choice',
          choices: ['2000-2500', '2500-3000', '3000-3500', '3500+'],
        ),
      ],
    );
  }

  Widget _buildSurveyQuestion(
    BuildContext context,
    WidgetRef ref,
    String questionId,
    String questionText,
    dynamic answer,
    String note, {
    required String answerType,
    List<String> choices = const [],
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: ShadAccordionItem<String>(
        value: questionId,
        title: AutoSizeText(
          questionText,
          maxLines: 3, // Limit to 3 lines
          overflow: TextOverflow.ellipsis, // Add ellipsis for overflow
          style: Theme.of(context).textTheme.bodyLarge,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 8),
            Text('Your Answer:',
                style: Theme.of(context).textTheme.titleMedium),
            SizedBox(height: 4),
            _buildAnswerWidget(
                context, ref, questionId, answer, answerType, choices),
            SizedBox(height: 16),
            Text('Notes:', style: Theme.of(context).textTheme.titleMedium),
            SizedBox(height: 4),
            MarkdownBody(data: note), // Use Markdown for notes
          ],
        ),
      ),
    );
  }

  Widget _buildAnswerWidget(
    BuildContext context,
    WidgetRef ref,
    String questionId,
    dynamic answer,
    String answerType,
    List<String> choices,
  ) {
    switch (answerType) {
      case 'single_choice':
        return DropdownButton2<String>(
          valueListenable: ValueNotifier<String>(answer),
          items: choices.map((String value) {
            return DropdownItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
          onChanged: (String? newValue) {
            if (newValue != null) {
              ref
                  .read(userProfileProvider.notifier)
                  .updateAnswer(questionId, newValue);
            }
          },
        );
      case 'multiple_choice':
        return Column(
          children: choices.map((String value) {
            return ShadCheckbox(
              value: (answer as List<String>).contains(value),
              onChanged: (bool? checked) {
                if (checked != null) {
                  List<String> updatedAnswer = List<String>.from(answer);
                  if (checked) {
                    updatedAnswer.add(value);
                  } else {
                    updatedAnswer.remove(value);
                  }
                  ref
                      .read(userProfileProvider.notifier)
                      .updateAnswer(questionId, updatedAnswer);
                }
              },
              label: Text(value),
            );
          }).toList(),
        );
      case 'essay':
        return MarkdownBody(data: answer); // Use Markdown for essay answers
      default:
        return Text('Unsupported answer type');
    }
  }
}
