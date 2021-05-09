import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CommentInputSheet extends StatelessWidget {
  final ValueSetter<String> onSubmit;
  CommentInputSheet({required this.onSubmit});

  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.only(top: 16, left: 16, right: 16, bottom: 48),
      color: Colors.black.withOpacity(.05),
      child: CupertinoTextField(
        controller: _controller,
        style: Theme.of(context).textTheme.headline6,
        placeholderStyle: Theme.of(context).textTheme.headline6,
        placeholder: "Add a comment..",
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Colors.white,
        ),
        onSubmitted: (value) {
          onSubmit(value);
          _controller.clear();
        },
      ),
    );
  }
}
