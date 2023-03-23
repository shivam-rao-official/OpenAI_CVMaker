import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio_maker_app/services/cvController.dart';
import 'package:portfolio_maker_app/widget/form_text.dart';

class AcademicDetails extends StatefulWidget {
  const AcademicDetails({super.key});

  @override
  State<AcademicDetails> createState() => _AcademicDetailsState();
}

class _AcademicDetailsState extends State<AcademicDetails> {
  var cvController = Get.put(CVController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: MediaQuery.of(context).size.height - 100,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            formLabel("Academic Summary", 20),
            const SizedBox(height: 8.0),
            TextField(
              decoration: const InputDecoration(
                hintText:
                    'E.g, I have done my graduation from xyz college in the year 2023 in the field of BCA and secured 80% etc..',
                border: OutlineInputBorder(),
              ),
              maxLines: 20,
              onChanged: (value) {
                setState(() {
                  cvController.summary.value = value;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
