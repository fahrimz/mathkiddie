import 'package:flutter/material.dart';
import 'package:mathkiddie/utils.dart';

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
              const Text('mathkiddie', style: AppTextStyle.title),
              const SizedBox(height: 36),
              SizedBox(
                width: 200,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: AppColor.primary,
                    padding: const EdgeInsets.all(12),
                  ),
                  onPressed: () => {},
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
