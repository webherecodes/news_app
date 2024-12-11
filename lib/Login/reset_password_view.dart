import 'package:flutter/material.dart';
import 'package:newsapp/Login/new_password_view.dart';

import '../CustomWidgets/Textfields/round_btn.dart';
import '../CustomWidgets/Textfields/round_textfield.dart';

class ResetPasswordView extends StatefulWidget {
  const ResetPasswordView({super.key});

  @override
  State<ResetPasswordView> createState() => _ResetPasswordViewState();
}

class _ResetPasswordViewState extends State<ResetPasswordView> {
  TextEditingController txtEmail = TextEditingController();

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
              "Reset Password",
              style: TextStyle(
                  // color: Tcolor.primaryText,
                  fontSize: 30,
                  fontWeight: FontWeight.w800),
            ),
            const SizedBox(
              height: 15,
            ),
            Text(
              "Please enter your email to receive an link to create a new password via email",
              style: TextStyle(
                  // color: Tcolor.secondaryText,
                  fontSize: 15,
                  fontWeight: FontWeight.w500),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 60,
            ),
            RoundTextfield(
              hintText: "Your Email",
              controller: txtEmail,
              keyboardType: TextInputType.emailAddress,
            ),
            const SizedBox(
              height: 25,
            ),
            RoundButton(
              fontSize: 18,
              title: "Send",
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const NewPasswordView()));
              },
            ),
          ]),
        ),
      ),
    );
  }
}
