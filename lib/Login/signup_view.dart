import 'package:flutter/material.dart';
import 'package:newsapp/Login/loginPage.dart';

import '../CustomWidgets/Textfields/round_btn.dart';
import '../CustomWidgets/Textfields/round_textfield.dart';
import '../Themes/colors.dart';
import 'otp_view.dart';

class SignupView extends StatefulWidget {
  const SignupView({super.key});

  @override
  State<SignupView> createState() => _SignupViewState();
}

class _SignupViewState extends State<SignupView> {
  TextEditingController txtName = TextEditingController();
  TextEditingController txtMobile = TextEditingController();
  TextEditingController txtAddress = TextEditingController();
  TextEditingController txtEmail = TextEditingController();
  TextEditingController txtPassword = TextEditingController();
  TextEditingController txtConfirmPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final isDarkTheme = Theme.of(context).brightness == Brightness.dark;

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 25),
          child: Column(children: [
            const SizedBox(
              height: 64,
            ),
            Text(
              "Sign Up",
              style: TextStyle(
                  color: isDarkTheme ? Colors.white : AppLightColor.primaryText,
                  fontSize: 30,
                  fontWeight: FontWeight.w800),
            ),
            Text(
              "Add your details to sign up",
              style: TextStyle(
                  color:
                      isDarkTheme ? Colors.white : AppLightColor.secondaryText,
                  fontSize: 15,
                  fontWeight: FontWeight.w500),
            ),
            const SizedBox(
              height: 25,
            ),
            RoundTextfield(
              hintText: "Name",
              controller: txtName,
              keyboardType: TextInputType.name,
            ),
            const SizedBox(
              height: 25,
            ),
            RoundTextfield(
              hintText: "Email",
              controller: txtEmail,
              keyboardType: TextInputType.emailAddress,
            ),
            const SizedBox(
              height: 25,
            ),
            RoundTextfield(
              hintText: "Mobile No",
              controller: txtMobile,
              keyboardType: TextInputType.phone,
            ),
            const SizedBox(
              height: 25,
            ),
            RoundTextfield(
              hintText: "Address",
              controller: txtAddress,
              keyboardType: TextInputType.streetAddress,
            ),
            const SizedBox(
              height: 25,
            ),
            RoundTextfield(
              hintText: "Password",
              controller: txtPassword,
              obscureText: true,
            ),
            const SizedBox(
              height: 25,
            ),
            RoundTextfield(
              hintText: "Confirm Password",
              controller: txtConfirmPassword,
              obscureText: true,
            ),
            const SizedBox(
              height: 25,
            ),
            RoundButton(
              fontSize: 18,
              title: "Sign Up",
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const OtpView()));
              },
            ),
            const SizedBox(
              height: 4,
            ),
            const SizedBox(
              height: 30,
            ),
            TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LoginPage()));
                },
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "Already have an Account? ",
                      style: TextStyle(
                          color: AppLightColor.secondaryText,
                          fontSize: 15,
                          fontWeight: FontWeight.w500),
                    ),
                    Text(
                      "Sign In",
                      style: TextStyle(
                          color: AppLightColor.primary,
                          fontSize: 15,
                          fontWeight: FontWeight.w500),
                    )
                  ],
                ))
          ]),
        ),
      ),
    );
  }
}
