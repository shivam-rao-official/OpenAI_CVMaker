import 'package:flutter/material.dart';
import 'package:portfolio_maker_app/screens/FormLayout.dart';
import 'package:portfolio_maker_app/widget/generate_cv_button.dart';
import 'package:portfolio_maker_app/widget/openai_cv_formfield.dart';

class OpenAIForm extends StatefulWidget {
  const OpenAIForm({Key? key}) : super(key: key);

  @override
  State<OpenAIForm> createState() => _OpenAIFormState();
}

class _OpenAIFormState extends State<OpenAIForm> {
  TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("OpenAI Form"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: MyCVForm(emailController: emailController,),
      ),
      floatingActionButton: generateCVButton(context, emailController),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
