import 'package:flutter/material.dart';
import 'package:newsapp/features/Login/loginPage.dart';
import 'package:newsapp/config/theme/Themes/colors.dart';
import '../../CustomWidgets/Textfields/round_btn.dart';
import 'signup_view.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    final isDarkTheme = Theme.of(context).brightness == Brightness.dark;
    var media = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(children: [
        Stack(
          alignment: Alignment.center,
          children: [
            Image.asset(
              "assets/images/logo.png",
              width: media.width * 0.65,
              height: media.height * 0.55,
              fit: BoxFit.contain,
              alignment: Alignment.bottomCenter,
            ),
          ],
        ),
        SizedBox(
          height: media.width * 0.050,
        ),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 25,
          ),
          child: Text(
              "Discover the best foods from over 1,000 restaurants and fast delivery to your doorstep, so why waiting join now!",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: isDarkTheme
                      ? AppDarkColor.primaryText
                      : AppLightColor.primaryText,
                  fontSize: 15,
                  fontWeight: FontWeight.w500)),
        ),
        SizedBox(
          height: media.width * 0.1,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 25),
          child: RoundButton(
            fontSize: 18,
            title: "Login",
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const LoginPage()));
            },
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 25),
          child: RoundButton(
            fontSize: 18,
            title: "Create an account",
            type: RoundButtonType.textPrimary,
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const SignupView()));
            },
          ),
        ),
      ]),
    );
  }
}
