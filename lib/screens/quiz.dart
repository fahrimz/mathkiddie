import 'package:flutter/material.dart';
import 'package:mathkiddie/widgets/header.dart';

class Quiz extends StatelessWidget {
  const Quiz({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(32.0),
          child: Header(),
        ),
      ),
    );
  }
}
