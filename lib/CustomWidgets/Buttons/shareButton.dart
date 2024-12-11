import 'package:flutter/material.dart';

class ShareButton extends StatelessWidget {
  const ShareButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(
          Icons.share,
          color: Colors.grey,
          size: 27.0,
        ),
        SizedBox(
          width: 5,
        ),
        Container(
          padding: EdgeInsets.only(top: 5),
          child: Text(
            '1',
            style: Theme.of(context).textTheme.bodyLarge,
          ),
        )
      ],
    );
  }
}
