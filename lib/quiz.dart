import 'package:flutter/material.dart';
import 'package:mathkiddie/utils.dart';
import 'package:mathkiddie/widgets.dart';

class Quiz extends StatelessWidget {
  const Quiz({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: const Image(
                  image: AssetImage('assets/images/arrowleft.png'),
                ),
              ),
              const Hero(
                flightShuttleBuilder: flightShuttleBuilder,
                tag: 'title',
                child: Text('mathkiddie', style: AppTextStyle.helper),
              ),
              const SizedBox(), // Empty space
            ],
          ),
        ),
      ),
    );
  }
}
