import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio_maker_app/services/cvController.dart';

class RawCV extends StatefulWidget {
  const RawCV({super.key});

  @override
  State<RawCV> createState() => _RawCVState();
}

class _RawCVState extends State<RawCV> {
  var cvController = Get.put(CVController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(child: Text(cvController.cv.value)),
      ),
    );
  }
}
