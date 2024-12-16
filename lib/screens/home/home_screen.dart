import 'package:flutter/material.dart';
import 'package:twitter_clone/widgets/tweet_card.dart';
import 'package:twitter_clone/widgets/profile_header.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: ListView(
        children: [
          ProfileHeader(),
          TweetCard(
            username: "john_doe",
            tweetText: "This is a sample tweet. #flutter #darkmode",
            timeAgo: "2m ago",
          ),
          TweetCard(
            username: "jane_doe",
            tweetText: "Loving the dark mode UI! #flutterdev",
            timeAgo: "5m ago",
          ),
        ],
      ),
    );
  }
}
