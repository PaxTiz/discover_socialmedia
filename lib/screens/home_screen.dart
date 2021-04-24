import 'package:discover_socialmedia/components/posts/post_list.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../components/stories/story_list.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CupertinoColors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        centerTitle: false,
        title: Text(
          "Discover.",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 32,
            color: CupertinoColors.darkBackgroundGray,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://mpng.subpng.com/20180326/wzw/kisspng-computer-icons-user-profile-avatar-female-profile-5ab915f791e2c1.8067312315220792235976.jpg"),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              StoryList(),
              PostList(),
            ],
          ),
        ),
      ),
    );
  }
}
