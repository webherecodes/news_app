import 'package:flutter/material.dart';

import '../../Home/Pages/HomePage.dart';
import '../Buttons/commentButton.dart';
import '../Buttons/menuButton.dart';
import '../Buttons/shareButton.dart';

class PostWidget extends StatelessWidget {
  const PostWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset('assets/images/photos/news.jpg'),
        Container(
            padding: EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'News reader App',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                SizedBox(
                  height: media.height / 100,
                ),
                Text(
                  'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
                  style: Theme.of(context).textTheme.bodyLarge,
                  textAlign: TextAlign.justify,
                ),
                SizedBox(
                  height: media.height / 70,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        LikeButtonExample(),
                        SizedBox(
                          width: media.width / 40,
                        ),
                        DislikeButtonExample(),
                        SizedBox(
                          width: media.width / 40,
                        ),
                        CommentButton()
                      ],
                    ),
                    Row(
                      children: [
                        ShareButton(),
                        SizedBox(
                          width: media.width / 40,
                        ),
                        MenuButton()
                      ],
                    ),
                  ],
                ),
              ],
            )),
      ],
    );
  }
}
