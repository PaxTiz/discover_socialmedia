import 'package:discover/models/post.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PostActionRow extends StatelessWidget {
  final Post post;
  const PostActionRow({required this.post});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Row(
          children: [
            Icon(CupertinoIcons.heart),
            SizedBox(width: 8),
            Text(post.likes.toString(), style: TextStyle(fontWeight: FontWeight.bold))
          ],
        ),
        SizedBox(width: 32),
        Row(
          children: [
            Icon(CupertinoIcons.chat_bubble),
            SizedBox(width: 8),
            Text(post.comments.length.toString(), style: TextStyle(fontWeight: FontWeight.bold))
          ],
        ),
        SizedBox(width: 32),
        Row(
          children: [
            Icon(CupertinoIcons.arrowshape_turn_up_right),
            SizedBox(width: 8),
            Text(post.reposts.toString(), style: TextStyle(fontWeight: FontWeight.bold))
          ],
        ),
      ],
    );
  }
}
