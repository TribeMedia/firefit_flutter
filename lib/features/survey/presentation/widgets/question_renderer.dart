import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

class QuestionRenderer extends StatefulWidget {
  final String userId;
  final Question question;
  final Function(UserAnswer) onAnswer;
  final UserAnswer? initialValue;

  const QuestionRenderer({
    super.key,
    required this.userId,
    required this.question,
    required this.onAnswer,
    this.initialValue,
  });

  @override
  _QuestionRendererState createState() => _QuestionRendererState();
}

class _QuestionRendererState extends State<QuestionRenderer> {
  late UserAnswer _currentAnswer;

  @override
  void initState() {
    super.initState();
    _currentAnswer = widget.initialValue ??
        UserAnswer(id: '', questionId: widget.question.id);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.question.text,
          style: Theme.of(context).textTheme.titleLarge,
        ),
        SizedBox(height: 16),
        _buildQuestionInput(),
      ],
    );
  }

  Widget _buildQuestionInput() {
    switch (widget.question.type!.key) {
      case 'single':
        return Column(
          children: widget.question.choices!.map((choice) {
            return ShadRadio<String>(
              value: choice.id,
              label: Text(choice.text),
            );
          }).toList(),
        );
      case 'multiple':
        return Column(
          children: widget.question.choices!.map((choice) {
            return ShadCheckbox(
              value: _currentAnswer.answerId?.split(',').contains(choice.id) ??
                  false,
              onChanged: (bool? value) {
                setState(() {
                  _currentAnswer.answerId ??= '';
                  var selectedIds = _currentAnswer.answerId!.split(',');
                  if (value == true) {
                    if (!selectedIds.contains(choice.id)) {
                      selectedIds.add(choice.id);
                    }
                  } else {
                    selectedIds.remove(choice.id);
                  }
                  _currentAnswer.answerId = selectedIds.join(',');
                });
                widget.onAnswer(_currentAnswer);
              },
              label: Text(choice.text),
            );
          }).toList(),
        );
      case 'essay':
        return Column(
          children: [
            TextFormField(
              initialValue: _currentAnswer.essayText,
              onChanged: (value) {
                setState(() {
                  _currentAnswer.essayText = value;
                });
                widget.onAnswer(_currentAnswer);
              },
              minLines: 5,
              maxLines: 10,
            ),
            SizedBox(height: 16),
            Text('Preview:', style: Theme.of(context).textTheme.titleMedium),
            Container(
              height: 200,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(4),
              ),
              child: Markdown(data: _currentAnswer.essayText ?? ''),
            ),
          ],
        );
      default:
        return const SizedBox.shrink();
    }
  }
}
