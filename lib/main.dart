import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mathkiddie/screens/home.dart';
import 'package:mathkiddie/utils.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: GoogleFonts.poppinsTextTheme(),
        primaryColor: AppColor.primary,
        backgroundColor: AppColor.background,
        scaffoldBackgroundColor: AppColor.background,
        splashFactory: InkRipple.splashFactory,
      ),
      home: const Home(),
    );
  }
}
