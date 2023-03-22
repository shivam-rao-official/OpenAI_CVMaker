import 'package:flutter/material.dart';
import 'package:linear_progress_bar/linear_progress_bar.dart';

Widget formProgressBar(int currentStep, int maxStep) {
  return LinearProgressBar(
    progressType: LinearProgressBar.progressTypeDots,
    progressColor: Colors.green[400],
    backgroundColor: Colors.blueGrey[300],
    dotsInactiveSize: 4,
    currentStep: currentStep,
    maxSteps: maxStep,
    dotsSpacing: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
    valueColor: const AlwaysStoppedAnimation<Color>(Colors.red),
  );
}
