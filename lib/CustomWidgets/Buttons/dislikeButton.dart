import 'package:flutter/material.dart';

class DislikeButton extends StatelessWidget {
  final bool isDisliked;
  final VoidCallback onTap;

  const DislikeButton({
    Key? key,
    required this.isDisliked,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AnimatedScale(
        scale: isDisliked ? 1.2 : 1.0, // Scale up when liked
        duration: const Duration(milliseconds: 300),
        curve: Curves.elasticOut, // Add bounce effect
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              isDisliked ? Icons.thumb_down : Icons.thumb_down_outlined,
              color: isDisliked ? Colors.red : Colors.grey,
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
        ),
      ),
    );
  }
}
