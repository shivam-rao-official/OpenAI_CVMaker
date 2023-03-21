import 'package:flutter/material.dart';

import '../widget/openai_cv_formfield.dart';


class MyCVForm extends StatefulWidget {
  const MyCVForm({Key? key, required this.emailController}) : super(key: key);
  final TextEditingController emailController;
  @override
  State<MyCVForm> createState() => _MyCVFormState();
}

class _MyCVFormState extends State<MyCVForm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          openAIFormField(widget.emailController, "Email Here"),
        ],
      ),
    );
  }
}
