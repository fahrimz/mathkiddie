import 'package:flutter/material.dart';
import 'package:mathkiddie/constants.dart';
import 'package:mathkiddie/statics.dart';
import 'package:mathkiddie/utils.dart';
import 'package:mathkiddie/widgets/answer_box.dart';
import 'package:mathkiddie/widgets/button.dart';
import 'package:mathkiddie/widgets/header.dart';
import 'package:mathkiddie/widgets/result.dart';

class Quiz extends StatefulWidget {
  const Quiz({Key? key}) : super(key: key);

  @override
  _QuizState createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  QuizItem quizItem = quizItems[getRandomNumber(max: quizItems.length)];
  int selectedAnswerIndex = 0;
  AnswerState answerState = AnswerState.notAnswered;
  bool isLoading = false;
  bool hasAnswered = false;

  void _changeQuiz() {
    setState(() {
      quizItem = quizItems[getRandomNumber(max: quizItems.length)];
      answerState = AnswerState.notAnswered;
      hasAnswered = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double boxSize = (width - (32 * 2) - (16 * 2)) / 3;

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: Column(children: [
            const Header(),
            const SizedBox(height: 80),
            Text(quizItem.question, style: AppTextStyle.question),
            const SizedBox(height: 48),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(
                3,
                (index) {
                  int answer = quizItem.answers[index];
                  AnswerState thisState = selectedAnswerIndex == index
                      ? answerState
                      : AnswerState.notAnswered;
                  bool isCorrectAnswer = answer == quizItem.correctAnswer;

                  return AnswerBox(
                    answer: answer,
                    boxSize: boxSize,
                    onTap: () {
                      if (hasAnswered) {
                        return;
                      }

                      setState(() {
                        isLoading = true;
                      });

                      Future.delayed(const Duration(seconds: 1), () {
                        setState(
                          () {
                            selectedAnswerIndex = index;
                            answerState = isCorrectAnswer
                                ? AnswerState.correct
                                : AnswerState.incorrect;
                            isLoading = false;
                            hasAnswered = true;
                          },
                        );
                      });
                    },
                    state: hasAnswered ? thisState : AnswerState.notAnswered,
                  );
                },
              ),
            ),
            const Spacer(),
            isLoading
                ? const CircularProgressIndicator(color: AppColor.primary)
                : Result(state: answerState),
            const SizedBox(height: 64),
            AppButton(
              text: answerState == AnswerState.notAnswered
                  ? 'change question'
                  : 'next question',
              variant: answerState == AnswerState.notAnswered
                  ? ButtonVariant.error
                  : ButtonVariant.primary,
              onPressed: () => _changeQuiz(),
            ),
          ]),
        ),
      ),
    );
  }
}
