import 'package:flutter/material.dart';
import 'package:mathkiddie/quiz.dart';
import 'package:mathkiddie/utils.dart';
import 'package:mathkiddie/widgets.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              'assets/images/homebg.png',
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Hero(
                flightShuttleBuilder: flightShuttleBuilder,
                tag: 'title',
                child: Text('mathkiddie', style: AppTextStyle.title),
              ),
              const SizedBox(height: 36),
              SizedBox(
                width: 200,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: AppColor.primary,
                    padding: const EdgeInsets.all(12),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Quiz()),
                    );
                  },
                  child: const Text('Start', style: AppTextStyle.button),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
