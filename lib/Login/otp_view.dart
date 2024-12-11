import 'package:flutter/material.dart';
import 'package:otp_pin_field/otp_pin_field.dart';

import '../CustomWidgets/Textfields/round_btn.dart';

class OtpView extends StatefulWidget {
  const OtpView({super.key});

  @override
  State<OtpView> createState() => _OtpViewState();
}

class _OtpViewState extends State<OtpView> {
  final _otpPinFieldController = GlobalKey<OtpPinFieldState>();

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
              "We have sent an OTP to your Mobile",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w800),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 15,
            ),
            Text(
              "Please check your mobile number ********02\ncontinue to reset your password",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 60,
            ),
            OtpPinField(
              key: _otpPinFieldController,

              ///in case you want to enable autoFill
              autoFillEnable: false,

              ///for Ios it is not needed as the SMS autofill is provided by default, but not for Android, that's where this key is useful.
              textInputAction: TextInputAction.done,

              ///in case you want to change the action of keyboard
              /// to clear the Otp pin Controller
              onSubmit: (text) {
                print('Entered pin is $text');
                FocusScope.of(context).requestFocus(FocusNode());

                /// return the entered pin
              },
              onChange: (text) {
                print('Enter on change pin is $text');

                /// return the entered pin
              },
              onCodeChanged: (code) {
                print('onCodeChanged  is $code');
              },

              /// to decorate your Otp_Pin_Field
              otpPinFieldStyle: OtpPinFieldStyle(
                  // defaultFieldBackgroundColor: Tcolor.textfield,
                  // activeFieldBackgroundColor: Tcolor.textfield,
                  activeFieldBorderColor: Colors.transparent,
                  defaultFieldBorderColor: Colors.transparent),

              maxLength: 4,

              /// no of pin field
              showCursor: true,

              /// bool to show cursor in pin field or not
              cursorColor: Colors.indigo,

              /// to choose cursor color
              upperChild: const Column(
                children: [
                  SizedBox(height: 30),
                  Icon(Icons.flutter_dash_outlined, size: 150),
                  SizedBox(height: 20),
                ],
              ),

              ///bool which manage to show custom keyboard
              showCustomKeyboard: false,

              /// Widget which help you to show your own custom keyboard in place if default custom keyboard
              // customKeyboard: Container(),
              ///bool which manage to show default OS keyboard
              // showDefaultKeyboard: true,

              /// to select cursor width
              cursorWidth: 3,

              /// place otp pin field according to yourself
              mainAxisAlignment: MainAxisAlignment.center,

              /// predefine decorate of pinField use  OtpPinFieldDecoration.defaultPinBoxDecoration||OtpPinFieldDecoration.underlinedPinBoxDecoration||OtpPinFieldDecoration.roundedPinBoxDecoration
              ///use OtpPinFieldDecoration.custom  (by using this you can make Otp_Pin_Field according to yourself like you can give fieldBorderRadius,fieldBorderWidth and etc things)
              otpPinFieldDecoration:
                  OtpPinFieldDecoration.defaultPinBoxDecoration,
            ),
            const SizedBox(
              height: 25,
            ),
            RoundButton(
              fontSize: 18,
              title: "Next",
              onPressed: () {
                FocusScope.of(context).requestFocus(FocusNode());
              },
            ),
            TextButton(
                onPressed: () {
                  // Navigator.push(
                  //     context,
                  //     MaterialPageRoute(
                  //         builder: (context) => const SignupView()));
                },
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "Didn't Received? ",
                      style: TextStyle(
                          // color: Tcolor.secondaryText,
                          fontSize: 15,
                          fontWeight: FontWeight.w500),
                    ),
                    Text(
                      "Click Here",
                      style: TextStyle(
                          // color: Tcolor.primary,
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
