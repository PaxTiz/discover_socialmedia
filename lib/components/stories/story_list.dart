import 'package:flutter/material.dart';

import 'story_list_item.dart';

class StoryList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 180,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: List.generate(8, (i) => StoryListItem(i)).toList(),
      ),
    );
  }
}
