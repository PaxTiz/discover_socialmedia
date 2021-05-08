import 'package:discover/components/posts/post_actions_row.dart';
import 'package:discover/models/post.dart';
import 'package:discover/screens/posts/post_details.dart';
import 'package:flutter/material.dart';

class PostListItem extends StatelessWidget {
  final Post post;
  const PostListItem({required this.post});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: Column(
            children: [
              Row(
                children: [
                  CircleAvatar(backgroundImage: NetworkImage(post.user.image)),
                  SizedBox(width: 16),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          post.user.fullName,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                        Text(
                          post.user.description,
                          style: TextStyle(
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ),
                  IconButton(
                    icon: Icon(Icons.menu),
                    onPressed: () {},
                  )
                ],
              ),
              SizedBox(height: 8),
              Hero(
                tag: "post_${post.id}",
                child: Material(
                  child: InkWell(
                    onTap: () =>
                        Navigator.of(context).pushNamed(PostDetails.route, arguments: post),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(16),
                      child: Image.network(post.image),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 8),
              PostActionRow(post: post),
            ],
          ),
        )
      ],
    );
  }
}
