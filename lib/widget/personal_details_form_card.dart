import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio_maker_app/services/cvController.dart';

class PersonalDetails extends StatefulWidget {
  const PersonalDetails({super.key});

  @override
  State<PersonalDetails> createState() => _PersonalDetailsState();
}

class _PersonalDetailsState extends State<PersonalDetails> {
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
            const Text(
              'Full Name',
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8.0),
            TextField(
              decoration: const InputDecoration(
                hintText: 'Enter your full name',
                border: OutlineInputBorder(),
              ),
              onChanged: (value) {
                setState(() {
                  cvController.fullName.value = value;
                });
              },
            ),
            const SizedBox(height: 16.0),
            const Text(
              'Email',
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8.0),
            TextField(
              decoration: const InputDecoration(
                hintText: 'Enter your email address',
                border: OutlineInputBorder(),
              ),
              onChanged: (value) {
                setState(() {
                  cvController.email.value = value;
                });
              },
            ),
            const SizedBox(height: 16.0),
            const Text(
              'Phone',
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8.0),
            TextField(
              decoration: const InputDecoration(
                hintText: 'Enter your phone number',
                border: OutlineInputBorder(),
              ),
              onChanged: (value) {
                setState(() {
                  cvController.phone.value = value;
                });
              },
            ),
            const SizedBox(height: 16.0),
            const Text(
              'Address',
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8.0),
            TextField(
              decoration: const InputDecoration(
                hintText: 'Enter your address',
                border: OutlineInputBorder(),
              ),
              onChanged: (value) {
                setState(() {
                  cvController.address.value = value;
                });
              },
            ),
            const SizedBox(height: 16.0),
            const Text(
              'Summary',
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8.0),
            // TextField(
            //   maxLines: 5,
            //   decoration: const InputDecoration(
            //     hintText: 'Enter your summary',
            //     border: OutlineInputBorder(),
            //   ),
            //   onChanged: (value) {
            //     setState(() {
            //       _summary = value;
            //     });
            //   },
            // ),
          ],
        ),
      ),
    );
  }
}

/**
 *
 
 */