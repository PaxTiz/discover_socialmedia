import 'package:discover/models/post.dart';
import 'package:flutter/material.dart';

class PostMeta extends StatelessWidget {
  final Post post;
  const PostMeta({required this.post});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.black.withOpacity(.05),
        border: Border(top: BorderSide(color: Colors.grey.withOpacity(.5), width: 1)),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(shape: BoxShape.circle),
            child: Image.network(post.user.image),
          ),
          SizedBox(width: 16),
          Flexible(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      post.user.fullName,
                      style: Theme.of(context).textTheme.headline1,
                    ),
                    Text(
                      post.timeAgo,
                      style: Theme.of(context).textTheme.headline6,
                    ),
                  ],
                ),
                SizedBox(height: 8),
                Text(
                  post.description,
                  softWrap: true,
                  style: Theme.of(context).textTheme.headline6,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
