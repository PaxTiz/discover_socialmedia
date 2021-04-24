import 'package:flutter/material.dart';

import 'post_list_item.dart';

class PostList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      children: List.generate(
          8,
          (_) => Padding(
                padding: EdgeInsets.only(bottom: 16),
                child: PostListItem(),
              )),
    );
  }
}
