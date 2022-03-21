import 'package:flutter/material.dart';
import 'package:mathkiddie/utils.dart';

enum ButtonVariant {
  primary,
  error,
}

class AppButton extends StatelessWidget {
  const AppButton({
    required this.text,
    required this.onPressed,
    this.variant = ButtonVariant.primary,
    Key? key,
  }) : super(key: key);

  final Function onPressed;
  final String text;
  final ButtonVariant variant;

  @override
  Widget build(BuildContext context) {
    Color backgroundColor;

    switch (variant) {
      case ButtonVariant.primary:
        backgroundColor = AppColor.primary;
        break;
      case ButtonVariant.error:
        backgroundColor = AppColor.error;
        break;
    }

    return SizedBox(
      width: 200,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: backgroundColor,
          padding: const EdgeInsets.all(12),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          elevation: 0,
        ),
        onPressed: () => onPressed(),
        child: Text(text, style: AppTextStyle.button),
      ),
    );
  }
}
