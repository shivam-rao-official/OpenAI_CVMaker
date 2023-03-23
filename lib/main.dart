import 'package:flutter/material.dart';
import 'package:portfolio_maker_app/screens/FormLayout.dart';
import 'package:portfolio_maker_app/screens/RawCV.dart';
import 'package:portfolio_maker_app/screens/SplashScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xff255fb6),
          titleTextStyle: TextStyle(
            fontWeight: FontWeight.w900,
            fontSize: 20,
          ),
        ),
      ),
      // initialRoute: "/",
      routes: {
        "/newCvForm": (context) => const CVForm(),
        "/rawCVLayout": (context) => RawCV(),
      },
      home: const SplashScreen(),
    );
  }
}
