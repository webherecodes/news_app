import 'package:flutter/material.dart';
import 'package:newsapp/CustomWidgets/Buttons/dislikeButton.dart';
import 'package:newsapp/CustomWidgets/Buttons/likeButton.dart';
import 'package:newsapp/CustomWidgets/Widgets/postWidget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    // double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
          child: SizedBox(
        height: height,
        child: PageView.builder(
            physics: BouncingScrollPhysics(), // Gives a springy feel
            scrollDirection: Axis.horizontal,
            itemCount: 10,
            itemBuilder: (context, index) {
              return PostWidget();
            }),
      )),
    );
  }
}

class LikeButtonExample extends StatefulWidget {
  const LikeButtonExample({Key? key}) : super(key: key);

  @override
  _LikeButtonExampleState createState() => _LikeButtonExampleState();
}

class _LikeButtonExampleState extends State<LikeButtonExample> {
  bool isLiked = false;

  void _toggleLike() {
    setState(() {
      isLiked = !isLiked;
    });
  }

  @override
  Widget build(BuildContext context) {
    return LikeButton(
      isLiked: isLiked,
      onTap: _toggleLike,
    );
  }
}

class DislikeButtonExample extends StatefulWidget {
  const DislikeButtonExample({Key? key}) : super(key: key);

  @override
  _DislikeButtonExampleState createState() => _DislikeButtonExampleState();
}

class _DislikeButtonExampleState extends State<DislikeButtonExample> {
  bool isDisliked = false;

  void _toggleLike() {
    setState(() {
      isDisliked = !isDisliked;
    });
  }

  @override
  Widget build(BuildContext context) {
    return DislikeButton(
      isDisliked: isDisliked,
      onTap: _toggleLike,
    );
  }
}
