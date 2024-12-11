import 'package:flutter/material.dart';

class LikeButton extends StatelessWidget {
  final bool isLiked;
  final VoidCallback onTap;

  const LikeButton({
    Key? key,
    required this.isLiked,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AnimatedScale(
        scale: isLiked ? 1.2 : 1.0, // Scale up when liked
        duration: const Duration(milliseconds: 300),
        curve: Curves.elasticOut, // Add bounce effect
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              isLiked ? Icons.thumb_up : Icons.thumb_up_outlined,
              color: isLiked ? Colors.red : Colors.grey,
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
