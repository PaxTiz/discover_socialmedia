import 'package:flutter/material.dart';

class PostCreate extends StatelessWidget {
  static const route = '/posts/create';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(child: Text("Create post")),
    );
  }
}
