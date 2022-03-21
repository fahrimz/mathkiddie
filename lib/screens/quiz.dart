import 'package:flutter/material.dart';
import 'package:mathkiddie/constants.dart';
import 'package:mathkiddie/utils.dart';
import 'package:mathkiddie/widgets/answer_box.dart';
import 'package:mathkiddie/widgets/button.dart';
import 'package:mathkiddie/widgets/header.dart';
import 'package:mathkiddie/widgets/result.dart';

class Quiz extends StatelessWidget {
  const Quiz({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double boxSize = (width - (32 * 2) - (16 * 2)) / 3;
    // AnswerState state = AnswerState.incorrect;
    // AnswerState state = AnswerState.correct;
    AnswerState state = AnswerState.notAnswered;

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: Column(children: [
            const Header(),
            const SizedBox(height: 80),
            const Text('4 + 7 = ?', style: AppTextStyle.question),
            const SizedBox(height: 48),
            Row(children: [
              AnswerBox(
                onTap: () {},
                answer: 13,
                boxSize: boxSize,
              ),
              const SizedBox(width: 16),
              AnswerBox(
                onTap: () {},
                answer: 11,
                boxSize: boxSize,
                state: state,
              ),
              const SizedBox(width: 16),
              AnswerBox(
                onTap: () {},
                answer: 12,
                boxSize: boxSize,
              ),
            ]),
            const Spacer(),
            Result(state: state),
            const SizedBox(height: 64),
            AppButton(
              text: state == AnswerState.notAnswered
                  ? 'change question'
                  : 'next question',
              variant: state == AnswerState.notAnswered
                  ? ButtonVariant.error
                  : ButtonVariant.primary,
              onPressed: () => {},
            ),
          ]),
        ),
      ),
    );
  }
}
