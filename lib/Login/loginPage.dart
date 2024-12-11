import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../CustomWidgets/Textfields/round_btn.dart';
import '../CustomWidgets/Textfields/round_icon_btn.dart';
import '../CustomWidgets/Textfields/round_textfield.dart';
import '../Onboarding/on_boarding.dart';
import '../Themes/colors.dart';
import 'reset_password_view.dart';
import 'signup_view.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController txtEmail = TextEditingController();
  TextEditingController txtPassword = TextEditingController();

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
              "Login",
              style: TextStyle(
                  color: isDarkTheme
                      ? AppDarkColor.primaryText
                      : AppLightColor.primaryText,
                  fontSize: 30,
                  fontWeight: FontWeight.w800),
            ),
            Text(
              "Add your details to login",
              style: TextStyle(
                  color: isDarkTheme
                      ? AppDarkColor.secondaryText
                      : AppLightColor.secondaryText,
                  fontSize: 15,
                  fontWeight: FontWeight.w500),
            ),
            const SizedBox(
              height: 25,
            ),
            RoundTextfield(
              hintText: "Your Email",
              controller: txtEmail,
              keyboardType: TextInputType.emailAddress,
            ),
            const SizedBox(
              height: 25,
            ),
            RoundTextfield(
              hintText: "Your Password",
              controller: txtPassword,
              obscureText: true,
            ),
            const SizedBox(
              height: 25,
            ),
            RoundButton(
              fontSize: 18,
              title: "Login",
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const OnBoarding()));
              },
            ),
            const SizedBox(
              height: 4,
            ),
            TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ResetPasswordView()));
                },
                child: Text(
                  "Forgot your Password?",
                  style: TextStyle(
                      color: isDarkTheme
                          ? AppDarkColor.secondaryText
                          : AppLightColor.secondaryText,
                      fontSize: 15,
                      fontWeight: FontWeight.w500),
                )),
            const SizedBox(
              height: 30,
            ),
            TextButton(
                onPressed: () {},
                child: Text(
                  "or Login With",
                  style: TextStyle(
                      color: isDarkTheme
                          ? AppDarkColor.secondaryText
                          : AppLightColor.secondaryText,
                      fontSize: 15,
                      fontWeight: FontWeight.w500),
                )),
            const SizedBox(
              height: 30,
            ),
            RoundIconButton(
                onPressed: () {},
                title: "Login with Facebbok",
                icon: FontAwesomeIcons.facebookF,
                color: Color(0xff367FC0)),
            const SizedBox(
              height: 25,
            ),
            RoundIconButton(
                onPressed: () {},
                title: "Login with Google",
                icon: FontAwesomeIcons.google,
                color: Color(0xffDD4B39)),
            const SizedBox(
              height: 80,
            ),
            TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SignupView()));
                },
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "Dont't have an Account? ",
                      style: TextStyle(
                          color: isDarkTheme
                              ? AppDarkColor.secondaryText
                              : AppLightColor.secondaryText,
                          fontSize: 15,
                          fontWeight: FontWeight.w500),
                    ),
                    Text(
                      "Sign Up",
                      style: TextStyle(
                          color: isDarkTheme
                              ? AppDarkColor.primary
                              : AppLightColor.primary,
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
