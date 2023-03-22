import 'package:flutter/material.dart';
import 'package:linear_progress_bar/linear_progress_bar.dart';
import 'package:portfolio_maker_app/widget/form_navigation_buttons.dart';
import 'package:portfolio_maker_app/widget/personal_details_form_card.dart';
import 'package:portfolio_maker_app/widget/progress_widget.dart';

class CVForm extends StatefulWidget {
  const CVForm({super.key});

  @override
  CVFormState createState() => CVFormState();
}

class CVFormState extends State<CVForm> {
  // Declare variables for storing input values

  int currentStep = 0;
  int maxStep = 6;

  var cardLabels = [
    'Personal Details',
    'Academic Details',
    'Work Experience',
    'Achievements',
    'Skills',
    'Hobbies'
  ];

  var screens = [
    PersonalDetails(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CV Form'),
      ),
      body: SizedBox(
        height: MediaQuery.of(context).size.height - 200,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /**
             *  FORM PROGRESS BAR
             */
            Center(child: formProgressBar(currentStep, maxStep)),
            Text(
              cardLabels[currentStep],
              style: const TextStyle(
                fontSize: 24,
                fontStyle: FontStyle.italic,
              ),
            ),
            screens[currentStep],
            /**
             *  FORM NAVIGATION BUTTONS TO GO FORWARD AND BACKWRD IN FORM CARDS
             */
            const SizedBox(height: 16.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                formNavBtn(
                  () {
                    if (currentStep != 0) {
                      setState(() {
                        currentStep--;
                      });
                    }
                  },
                  "<< Back",
                ),
                formNavBtn(
                  () {
                    if ((currentStep + 1) != maxStep) {
                      setState(() {
                        currentStep++;
                      });
                    }
                  },
                  "Next >>",
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
