import 'package:flutter/material.dart';
import 'package:newsapp/Themes/colors.dart';

import '../CustomWidgets/Textfields/round_btn.dart';
import '../CustomWidgets/Textfields/round_textfield.dart';

class NewPasswordView extends StatefulWidget {
  const NewPasswordView({super.key});

  @override
  State<NewPasswordView> createState() => _NewPasswordViewState();
}

class _NewPasswordViewState extends State<NewPasswordView> {
  TextEditingController txtPassword = TextEditingController();
  TextEditingController txtConfirmPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 25),
          child: Column(children: [
            const SizedBox(
              height: 64,
            ),
            Text(
              "New Password",
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w800,
                  color: AppLightColor.primaryText),
            ),
            const SizedBox(
              height: 15,
            ),
            Text(
              "Please enter your new password",
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: AppLightColor.secondaryText),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 60,
            ),
            RoundTextfield(
              hintText: "New Password",
              controller: txtPassword,
              keyboardType: TextInputType.emailAddress,
            ),
            const SizedBox(
              height: 25,
            ),
            RoundTextfield(
              hintText: "Confirm Password",
              controller: txtConfirmPassword,
              keyboardType: TextInputType.emailAddress,
            ),
            const SizedBox(
              height: 25,
            ),
            RoundButton(
              fontSize: 18,
              title: "Send",
              onPressed: () {},
            ),
          ]),
        ),
      ),
    );
  }
}
