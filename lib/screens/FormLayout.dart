import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio_maker_app/services/cvController.dart';
import 'package:portfolio_maker_app/services/generateCV.dart';
import 'package:portfolio_maker_app/widget/academic_details_form_card.dart';
import 'package:portfolio_maker_app/widget/form_navigation_buttons.dart';
import 'package:portfolio_maker_app/widget/personal_details_form_card.dart';
import 'package:portfolio_maker_app/widget/progress_widget.dart';

class CVForm extends StatefulWidget {
  const CVForm({super.key});

  @override
  CVFormState createState() => CVFormState();
}

class CVFormState extends State<CVForm> {
  var cv = Get.put(CVController());
  // Declare variables for storing input values

  var cardLabels = [
    'Personal Details',
    'Academic Details',
    'Work Experience',
    'Achievements',
    'Skills',
    'Hobbies'
  ];
  int currentStep = 0;
  int maxStep = 6;
  var screens = [
    const PersonalDetails(),
    const AcademicDetails(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CV Form'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            /**
              *  FORM PROGRESS BAR AND TITLE
              */
            Center(child: formProgressBar(currentStep, screens.length)),
            Text(
              cardLabels[currentStep],
              style: const TextStyle(
                fontSize: 24,
                fontStyle: FontStyle.italic,
              ),
            ),
            /**
             *  NAVIGATING THROUGH EACH FORM CARDS
             */
            Expanded(
              child: Container(
                child: screens[currentStep],
              ),
            ),
            /**
              *  FORM NAVIGATION BUTTONS TO GO FORWARD AND BACKWRD IN FORM CARDS
              */
            const SizedBox(height: 16.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                formNavBtn(
                  // BACK BUTTON FUNCTIONALITY
                  () {
                    if (currentStep != 0) {
                      setState(() {
                        currentStep--;
                      });
                    }
                  },
                  "<< Back",
                ),
                (currentStep + 1) == screens.length
                    ? formNavBtn(
                        () async {
                          await cv.doGenerateCV();
                          if (cv.cv.isNotEmpty) {
                            Navigator.of(context).pushNamed("/rawCVLayout");
                          }
                          print("Error===========================");
                        },
                        "SUBMIT",
                      )
                    : formNavBtn(
                        // NEXT BUTTON FUNCTIONALITY
                        () {
                          if ((currentStep + 1) != screens.length) {
                            setState(() {
                              currentStep++;
                            });
                          }
                        },
                        "Next >>",
                      ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
