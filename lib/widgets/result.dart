import 'package:flutter/widgets.dart';
import 'package:mathkiddie/constants.dart';
import 'package:mathkiddie/utils.dart';

class Result extends StatelessWidget {
  const Result({
    this.state = AnswerState.notAnswered,
    Key? key,
  }) : super(key: key);

  final AnswerState state;

  @override
  Widget build(BuildContext context) {
    String emoji, text;

    switch (state) {
      case AnswerState.notAnswered:
        emoji = '';
        text = '';
        break;
      case AnswerState.correct:
        emoji = '😆';
        text = 'Your answer is correct';
        break;
      case AnswerState.incorrect:
        emoji = '😔';
        text = 'Your answer is incorrect';
        break;
    }

    return Column(
      children: [
        Text(emoji, style: AppTextStyle.icon),
        const SizedBox(height: 16),
        Text(text, style: AppTextStyle.helper2),
      ],
    );
  }
}
