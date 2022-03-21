import 'package:flutter/material.dart';
import 'package:mathkiddie/constants.dart';
import 'package:mathkiddie/utils.dart';

class AnswerBox extends StatelessWidget {
  const AnswerBox({
    Key? key,
    required this.answer,
    required this.boxSize,
    required this.onTap,
    this.state = AnswerState.notAnswered,
  }) : super(key: key);

  final double boxSize;
  final AnswerState state;
  final int answer;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    Color textColor, backgroundColor;

    switch (state) {
      case AnswerState.notAnswered:
        textColor = AppColor.black;
        backgroundColor = AppColor.white;
        break;
      case AnswerState.correct:
        textColor = AppColor.white;
        backgroundColor = AppColor.primary;
        break;
      case AnswerState.incorrect:
        textColor = AppColor.white;
        backgroundColor = AppColor.error;
        break;
    }

    return SizedBox(
      width: boxSize,
      height: boxSize,
      child: Material(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(8),
        child: InkWell(
          onTap: () => onTap(),
          child: Center(
            child: Text(
              answer.toString(),
              style: AppTextStyle.question.copyWith(
                color: textColor,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
