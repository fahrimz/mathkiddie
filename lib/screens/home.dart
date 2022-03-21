import 'package:flutter/material.dart';
import 'package:mathkiddie/screens/quiz.dart';
import 'package:mathkiddie/utils.dart';
import 'package:mathkiddie/widgets/button.dart';
import 'package:mathkiddie/widgets/flight_shuttle_builder.dart';

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
              AppButton(
                text: 'start',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Quiz()),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
