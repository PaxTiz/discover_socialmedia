import 'package:discover/models/comment.dart';
import 'package:flutter/material.dart';

class CommentItem extends StatelessWidget {
  final Comment comment;
  const CommentItem({required this.comment});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        border: Border(bottom: BorderSide(color: Colors.grey.withOpacity(.5), width: 1)),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(shape: BoxShape.circle),
            child: Image.network(comment.user.image),
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
                      comment.user.fullName,
                      style: Theme.of(context).textTheme.headline1,
                    ),
                    Text(
                      comment.timeAgo,
                      style: Theme.of(context).textTheme.headline6,
                    ),
                  ],
                ),
                SizedBox(height: 8),
                Text(
                  comment.text,
                  softWrap: true,
                  style: Theme.of(context).textTheme.headline6?.copyWith(height: 1.2),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
