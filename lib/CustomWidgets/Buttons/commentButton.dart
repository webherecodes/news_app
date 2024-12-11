import 'package:flutter/material.dart';

class CommentButton extends StatelessWidget {
  const CommentButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(
          Icons.comment_outlined,
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
