import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PostListItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: Column(
            children: [
              Row(
                children: [
                  CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://mpng.subpng.com/20180326/wzw/kisspng-computer-icons-user-profile-avatar-female-profile-5ab915f791e2c1.8067312315220792235976.jpg"),
                  ),
                  SizedBox(width: 16),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Michael Bruno",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                        Text(
                          "Traveler, life laver",
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
              ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: Image.network(
                  "https://www.mer-ocean.com/wp-content/uploads/2018/08/shifaaz-shamoon-370863-unsplash-e1533303603417-1024x576.jpg",
                ),
              ),
              SizedBox(height: 8),
              Row(
                children: [
                  Row(
                    children: [Icon(CupertinoIcons.heart), SizedBox(width: 8), Text("247")],
                  ),
                  SizedBox(width: 32),
                  Row(
                    children: [Icon(CupertinoIcons.chat_bubble), SizedBox(width: 8), Text("57")],
                  ),
                  SizedBox(width: 32),
                  Row(
                    children: [
                      Icon(CupertinoIcons.arrowshape_turn_up_right),
                      SizedBox(width: 8),
                      Text("33")
                    ],
                  ),
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}
