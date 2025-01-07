import 'package:flutter/material.dart';

import '../../config/theme/Themes/colors.dart';

class RoundTextfield extends StatelessWidget {
  final TextEditingController? controller;
  final String hintText;
  final TextInputType? keyboardType;
  final bool obscureText;
  final Color? bgColor;
  final Widget? left;

  const RoundTextfield({
    Key? key,
    this.controller,
    required this.hintText,
    this.keyboardType,
    this.obscureText = false,
    this.bgColor,
    this.left,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isDarkTheme = Theme.of(context).brightness == Brightness.dark;

    return Container(
      decoration: BoxDecoration(
          color: isDarkTheme
              ? Color.fromARGB(255, 50, 50, 50)
              : Color.fromARGB(255, 213, 213, 213),
          borderRadius: BorderRadius.circular(30)),
      child: Row(
        children: [
          if (left != null)
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: left!,
            ),
          Expanded(
            child: TextField(
              autocorrect: false,
              controller: controller,
              keyboardType: keyboardType,
              decoration: InputDecoration(
                  contentPadding:
                      const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  hintText: hintText,
                  hintStyle: TextStyle(
                      color: AppLightColor.placeholder,
                      fontSize: 15,
                      fontWeight: FontWeight.w500)),
            ),
          ),
        ],
      ),
    );
  }
}

class RoundTitleTextField extends StatelessWidget {
  final TextEditingController? controller;
  final String title;
  final String hintText;
  final TextInputType? keyboardType;
  final bool obscureText;
  final Color? bgColor;
  final Widget? left;

  const RoundTitleTextField({
    Key? key,
    this.controller,
    required this.hintText,
    this.keyboardType,
    this.obscureText = false,
    this.bgColor,
    this.left,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      decoration: BoxDecoration(
          color: bgColor ?? AppLightColor.primary,
          borderRadius: BorderRadius.circular(30)),
      child: Row(
        children: [
          if (left != null)
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: left!,
            ),
          Expanded(
            child: Stack(
              children: [
                Container(
                  height: 55,
                  alignment: Alignment.topLeft,
                  margin: const EdgeInsets.only(top: 8),
                  child: TextField(
                    autocorrect: false,
                    controller: controller,
                    keyboardType: keyboardType,
                    decoration: InputDecoration(
                        contentPadding:
                            const EdgeInsets.symmetric(horizontal: 20),
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        hintText: hintText,
                        hintStyle: TextStyle(
                            color: AppLightColor.primary,
                            fontSize: 15,
                            fontWeight: FontWeight.w500)),
                  ),
                ),
                Container(
                  height: 55,
                  alignment: Alignment.topLeft,
                  margin: const EdgeInsets.only(top: 12, left: 20),
                  child: Text(
                    title,
                    style:
                        TextStyle(color: AppLightColor.primary, fontSize: 11),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
