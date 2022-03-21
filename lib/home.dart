import 'package:flutter/material.dart';
import 'package:mathkiddie/utils.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('mathkiddie', style: AppTextStyle.title),
      ),
    );
  }
}
