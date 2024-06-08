import 'package:app/elements/feed.dart';
import 'package:flutter/material.dart';

class NewsPage extends StatefulWidget {
  const NewsPage({super.key});

  @override
  State<NewsPage> createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          FeedBloc(
            title: "Welcome to flutter",
            content: "lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum ",
            likes: 18,
            photoURL: "https://www.excelptp.com/wp-content/uploads/2023/03/Flutter-Development-Course.jpg",
          ),
          FeedBloc(
            title: "Welcome to flutter",
            content: "lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum ",
            likes: 18,
            photoURL: "https://www.excelptp.com/wp-content/uploads/2023/03/Flutter-Development-Course.jpg",
          ),
          FeedBloc(
            title: "Welcome to flutter",
            content: "lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum ",
            likes: 18,
            photoURL: "https://www.excelptp.com/wp-content/uploads/2023/03/Flutter-Development-Course.jpg",
          ),
          FeedBloc(
            title: "Welcome to flutter",
            content: "lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum ",
            likes: 18,
            photoURL: "https://www.excelptp.com/wp-content/uploads/2023/03/Flutter-Development-Course.jpg",
          ),
          
        ],
      ),
    );
  }
}