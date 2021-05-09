import 'package:discover/components/comments/comment_input_sheet.dart';
import 'package:discover/components/comments/comment_item.dart';
import 'package:discover/components/posts/post_actions_row.dart';
import 'package:discover/components/posts/post_meta.dart';
import 'package:discover/models/comment.dart';
import 'package:discover/models/post.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PostDetails extends StatefulWidget {
  static const route = '/posts/details';

  final Post post;
  PostDetails({required this.post});

  createState() => _PostDetails();
}

class _PostDetails extends State<PostDetails> {
  late final List<Comment> _comments;

  @override
  void initState() {
    super.initState();
    _comments = widget.post.comments;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Hero(
              tag: "post_${widget.post.id}",
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(32),
                  bottomRight: Radius.circular(32),
                ),
                child: Image.network(widget.post.image,
                    height: MediaQuery.of(context).size.height / 3, fit: BoxFit.cover),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(16),
              child: PostActionRow(post: widget.post),
            ),

            PostMeta(post: widget.post),

            ListView(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              padding: EdgeInsets.zero,
              children: _comments.map((e) => CommentItem(comment: e)).toList(),
            ),

            /// Add extra space to the bottom of list for showing last comment
            /// (otherwise it go under bottom sheet)
            SizedBox(height: 100),
          ],
        ),
      ),
      bottomSheet: CommentInputSheet(
        onSubmit: (value) {
          setState(() => _comments.add(Comment(
                text: value,
                user: widget.post.user,
                date: DateTime.now(),
              )));
        },
      ),
    );
  }
}
