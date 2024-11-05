class QuestionType {
  static const singleChoice = 'single';
  static const multipleChoice = 'multiple';
  static const essay = 'essay';

  final String id;
  final String name;
  final String key;
  final String description;
  final Map<String, dynamic>? schema;

  QuestionType({
    required this.id,
    required this.name,
    required this.key,
    required this.description,
    this.schema,
  });
}

class Answer {
  final String id;
  final String questionId;
  final String text;
  final int index;

  Answer({
    required this.id,
    required this.questionId,
    required this.text,
    required this.index,
  });
}

class Question {
  final String id;
  final String text;
  final String questionTypeId;
  QuestionType? type;
  final List<Answer>? choices;

  Question({
    required this.id,
    required this.text,
    required this.questionTypeId,
    this.choices,
  });
}

class UserAnswer {
  String id;
  String questionId;
  String? answerId;
  String? essayText;

  UserAnswer({
    required this.id,
    required this.questionId,
    this.answerId,
    this.essayText,
  });
}

class UserSurvey {
  final String id;
  final String surveyId;
  final String userId;
  final List<SurveyQuestion> questions;
  final List<UserAnswer> answers;

  UserSurvey({
    required this.id,
    required this.surveyId,
    required this.userId,
    required this.questions,
    required this.answers,
  });
}

class SurveyQuestion {
  final String id;
  final String surveyId;
  final String questionId;
  final Question question;
  final int index;

  SurveyQuestion({
    required this.id,
    required this.surveyId,
    required this.questionId,
    required this.question,
    required this.index,
  });
}

class FormQuestion {
  final String id;
  final String questionId;
  final String formId;
  final int index;
  final Question question;

  FormQuestion({
    required this.id,
    required this.questionId,
    required this.formId,
    required this.index,
    required this.question,
  });
}

class Form {
  final String id;
  final String name;
  final String description;
  final List<FormQuestion> questions;

  Form({
    required this.id,
    required this.name,
    required this.description,
    required this.questions,
  });
}

class UserForm {
  final String id;
  final String formId;
  final String userId;
  final List<UserAnswer> answers;

  UserForm({
    required this.id,
    required this.formId,
    required this.userId,
    required this.answers,
  });
}
