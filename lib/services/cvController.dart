import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio_maker_app/services/generateCV.dart';

class CVController extends GetxController {
  var email = "".obs;
  var fullName = "".obs;
  var phone = "".obs;
  var address = "".obs;
  var summary = "".obs;

  var cv = "".obs;
  Future<void> doGenerateCV() async {
    cv.value = await generateCV(email.value, fullName.value, phone.value,
        address.value, summary.value);
  }
}
