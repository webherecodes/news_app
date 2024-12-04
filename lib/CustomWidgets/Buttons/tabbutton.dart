import 'package:flutter/material.dart';

class TabButton extends StatelessWidget {
  final VoidCallback onTap;
  final String title;
  final String icon;
  final bool isSelected;

  const TabButton(
      {super.key,
      required this.onTap,
      required this.title,
      required this.isSelected,
      required this.icon});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      hoverColor: Colors.transparent,
      highlightColor: Colors.transparent,
      child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              icon,
              width: 17,
              height: 17,
              color: isSelected
                  ? Theme.of(context).primaryColor
                  : const Color.fromARGB(255, 180, 180, 180),
            ),
            const SizedBox(
              height: 4,
            ),
            Text(
              title,
              style: TextStyle(
                  color: isSelected
                      ? Theme.of(context).primaryColor
                      : const Color.fromARGB(255, 180, 180, 180),
                  fontSize: 12,
                  fontWeight: FontWeight.w500),
            )
          ]),
    );
  }
}
