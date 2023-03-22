import 'dart:async';

import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  var splashTimeoutInMillis = 3000;

  @override
  void initState() {
    splashService();
    super.initState();
  }

  splashService() async {
    Timer(
      Duration(milliseconds: splashTimeoutInMillis),
      () => Navigator.of(context).pushReplacementNamed("/newCvForm"),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset("assets/SplashScreen.png"),
      ),
    );
  }
}
