import 'package:core/core.dart';
import 'package:firefit/features/survey/presentation/widgets/question_renderer.dart';
import 'package:flutter/material.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

class SurveyRenderer extends StatefulWidget {
  final List<SurveyQuestion> questions;
  final String surveyName;
  final String surveyId;
  final String userId;
  final Function(UserSurvey) onComplete;

  const SurveyRenderer({
    super.key,
    required this.questions,
    required this.surveyName,
    required this.surveyId,
    required this.userId,
    required this.onComplete,
  });

  @override
  _SurveyRendererState createState() => _SurveyRendererState();
}

class _SurveyRendererState extends State<SurveyRenderer> {
  int _currentIndex = 0;
  late UserSurvey _userSurvey;
  bool _isForward = true;

  @override
  void initState() {
    super.initState();
    _userSurvey = UserSurvey(
      id: DateTime.now().millisecondsSinceEpoch.toString(),
      surveyId: widget.surveyId,
      userId: widget.userId,
      questions: widget.questions,
      answers: [],
    );
  }

  void _handleAnswer(UserAnswer answer) {
    setState(() {
      int index = _userSurvey.answers
          .indexWhere((a) => a.questionId == answer.questionId);
      if (index != -1) {
        _userSurvey.answers[index] = answer;
      } else {
        _userSurvey.answers.add(answer);
      }
    });
  }

  void _nextQuestion() {
    if (_currentIndex < widget.questions.length - 1) {
      setState(() {
        _currentIndex++;
        _isForward = true;
      });
    } else {
      widget.onComplete(_userSurvey);
    }
  }

  void _previousQuestion() {
    if (_currentIndex > 0) {
      setState(() {
        _currentIndex--;
        _isForward = false;
      });
    }
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
              child: AnimatedSwitcher(
                duration: const Duration(milliseconds: 300),
                transitionBuilder: (Widget child, Animation<double> animation) {
                  return SlideTransition(
                    position: Tween<Offset>(
                      begin: _isForward ? Offset(1.0, 0.0) : Offset(-1.0, 0.0),
                      end: Offset.zero,
                    ).animate(animation),
                    child: FadeTransition(
                      opacity: animation,
                      child: child,
                    ),
                  );
                },
                child: QuestionRenderer(
                  userId: widget.userId,
                  key: ValueKey<int>(_currentIndex),
                  question: widget.questions[_currentIndex].question,
                  onAnswer: _handleAnswer,
                  initialValue: _userSurvey.answers.firstWhere(
                    (a) =>
                        a.questionId ==
                        widget.questions[_currentIndex].question.id,
                    orElse: () => UserAnswer(
                      id: DateTime.now().millisecondsSinceEpoch.toString(),
                      questionId: widget.questions[_currentIndex].question.id,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
        _buildNavigationButtons(),
      ],
    );
  }

  Widget _buildHeader() {
    return Container(
      padding: EdgeInsets.all(16),
      child: Column(
        children: [
          Text(
            widget.surveyName,
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          SizedBox(height: 8),
          ShadProgress(
            value: (_currentIndex + 1) / widget.questions.length,
            color: Colors.blue,
          ),
          SizedBox(height: 8),
          Text(
            '${_currentIndex + 1} of ${widget.questions.length}',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ],
      ),
    );
  }

  Widget _buildNavigationButtons() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ShadButton(
            onPressed: _currentIndex > 0 ? _previousQuestion : null,
            child: Text('Previous'),
          ),
          ShadButton(
            onPressed: _nextQuestion,
            child: Text(_currentIndex < widget.questions.length - 1
                ? 'Next'
                : 'Submit'),
          ),
        ],
      ),
    );
  }
}
