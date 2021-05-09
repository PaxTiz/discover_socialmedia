import 'package:flutter/material.dart';

class StoryListItem extends StatelessWidget {
  final int index;
  const StoryListItem(this.index);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180,
      height: 180,
      margin: EdgeInsets.only(
        left: index == 0 ? 0 : 8,
        right: 8,
      ),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: Image.network(
              "https://goodmenproject.com/wp-content/uploads/2020/05/shutterstock_536835418.jpg",
            ),
          ),
          SizedBox(height: 8),
          Row(
            children: [
              Container(
                width: 30,
                height: 30,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                      "https://mpng.subpng.com/20180326/wzw/kisspng-computer-icons-user-profile-avatar-female-profile-5ab915f791e2c1.8067312315220792235976.jpg",
                    ),
                  ),
                ),
              ),
              SizedBox(width: 8),
              Text("James Bruno", style: Theme.of(context).textTheme.headline1),
            ],
          ),
        ],
      ),
    );
  }
}
