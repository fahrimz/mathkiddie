enum AnswerState {
  notAnswered,
  correct,
  incorrect,
}

class QuizItem {
  final String question;
  final List<int> answers;
  final int correctAnswer;

  QuizItem({
    required this.question,
    required this.answers,
    required this.correctAnswer,
  });
}
