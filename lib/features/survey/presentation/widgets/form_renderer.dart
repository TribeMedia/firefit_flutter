import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:shadcn_ui/shadcn_ui.dart';
import 'package:firefit/features/survey/presentation/widgets/question_renderer.dart';

class FormRenderer extends StatefulWidget {
  final List<FormQuestion> questions;
  final String formName;
  final String formId;
  final String userId;
  final void Function(UserForm) onSubmit;

  const FormRenderer({
    Key? key,
    required this.questions,
    required this.formName,
    required this.formId,
    required this.userId,
    required this.onSubmit,
  }) : super(key: key);

  @override
  _FormRendererState createState() => _FormRendererState();
}

class _FormRendererState extends State<FormRenderer> {
  late UserForm _userForm;

  @override
  void initState() {
    super.initState();
    _userForm = UserForm(
      id: DateTime.now().millisecondsSinceEpoch.toString(),
      formId: widget.formId,
      userId: widget.userId,
      answers: [],
    );
  }

  void _handleAnswer(UserAnswer answer) {
    setState(() {
      int index = _userForm.answers
          .indexWhere((a) => a.questionId == answer.questionId);
      if (index != -1) {
        _userForm.answers[index] = answer;
      } else {
        _userForm.answers.add(answer);
      }
    });
  }

  void _submitForm() {
    widget.onSubmit(_userForm);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildHeader(),
        Expanded(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: widget.questions.map((formQuestion) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 24.0),
                    child: QuestionRenderer(
                      userId: widget.userId,
                      question: formQuestion.question,
                      onAnswer: _handleAnswer,
                      initialValue: _userForm.answers.firstWhere(
                        (a) => a.questionId == formQuestion.question.id,
                        orElse: () => UserAnswer(
                          id: DateTime.now().millisecondsSinceEpoch.toString(),
                          questionId: formQuestion.question.id,
                        ),
                      ),
                    ),
                  );
                }).toList(),
              ),
            ),
          ),
        ),
        _buildSubmitButton(),
      ],
    );
  }

  Widget _buildHeader() {
    return Container(
      padding: EdgeInsets.all(16),
      child: Column(
        children: [
          Text(
            widget.formName,
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          SizedBox(height: 8),
          ShadProgress(
            value: _userForm.answers.length / widget.questions.length,
            color: Colors.blue,
          ),
          SizedBox(height: 8),
          Text(
            '${_userForm.answers.length} of ${widget.questions.length} questions answered',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ],
      ),
    );
  }

  Widget _buildSubmitButton() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: ShadButton(
        onPressed: _submitForm,
        child: Text('Submit'),
      ),
    );
  }
}
