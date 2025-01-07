import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newsapp/CustomWidgets/Buttons/dislikeButton.dart';
import 'package:newsapp/CustomWidgets/Buttons/likeButton.dart';
import 'package:newsapp/CustomWidgets/Widgets/postWidget.dart';
import 'package:newsapp/features/Home/presentation/bloc/news/remote/news_bloc.dart';
import 'package:newsapp/features/Home/presentation/bloc/news/remote/news_state.dart';

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
          child: SizedBox(height: height, child: _buildBody())),
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

_buildBody() {
  return BlocBuilder<NewsBloc, NewsState>(builder: (_, state) {
    if (state is NewsLoading) {
      return const Center(
        child: CircularProgressIndicator(),
      );
    }
    if (state is NewsError) {
      return const Center(
        child: Icon(Icons.refresh),
      );
    }
    if (state is NewsLoaded) {
      return PageView.builder(
          physics: BouncingScrollPhysics(), // Gives a springy feel
          scrollDirection: Axis.horizontal,
          itemCount: state.news!.length,
          itemBuilder: (context, index) {
            final newsItem = state.news![index];
            return ListTile(
              title: Text("${newsItem.id}"),
            );
          });
    }
    return const SizedBox();
  });
}
