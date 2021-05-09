import 'package:discover/components/comments/comment_item.dart';
import 'package:discover/components/posts/post_actions_row.dart';
import 'package:discover/models/post.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PostDetails extends StatelessWidget {
  static const route = '/posts/details';

  final Post post;
  const PostDetails({required this.post});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      extendBodyBehindAppBar: true,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Hero(
              tag: "post_${post.id}",
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(32),
                  bottomRight: Radius.circular(32),
                ),
                child: Image.network(post.image,
                    height: MediaQuery.of(context).size.height / 3, fit: BoxFit.cover),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: PostActionRow(post: post),
            ),
            // About: Post description
            Container(
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
            ),

            // About: Post comments
            ListView(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              padding: EdgeInsets.zero,
              children: post.comments.map((e) => CommentItem(comment: e)).toList(),
            ),
            SizedBox(height: 100),
          ],
        ),
      ),
      bottomSheet: Container(
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.only(top: 16, left: 16, right: 16, bottom: 48),
        color: Colors.black.withOpacity(.05),
        child: CupertinoTextField(
          placeholderStyle: Theme.of(context).textTheme.headline6,
          textAlignVertical: TextAlignVertical.center,
          style: Theme.of(context).textTheme.headline6,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Colors.white,
          ),
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          placeholder: "Add a comment..",
        ),
      ),
    );
  }
}
