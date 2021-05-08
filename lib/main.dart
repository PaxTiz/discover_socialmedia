import 'package:discover/screens/home_screen.dart';
import 'package:discover/screens/posts/post_create.dart';
import 'package:discover/screens/posts/post_details.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'components/custom_bottom_navigation_bar.dart';
import 'models/post.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      onGenerateRoute: (settings) {
        final Widget widget;
        switch (settings.name) {
          case PostCreate.route:
            widget = PostCreate();
            break;
          case PostDetails.route:
            widget = PostDetails(post: settings.arguments as Post);
            break;
          default:
            widget = Text('Empty');
        }

        return CupertinoPageRoute(builder: (ctx) => widget);
      },
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late final _screens;
  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();
    _screens = [
      HomeScreen(),
      Center(child: Text("Messages")),
      Center(),
      Center(child: Text("Notifications")),
      Center(child: Text("Profile")),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentIndex],
      extendBody: true,
      bottomNavigationBar: CustomBottomNavigationBar(
        currentIndex: _currentIndex,
        backgroundColor: CupertinoColors.extraLightBackgroundGray,
        selectedColor: Colors.black,
        unselectedColor: Colors.black.withOpacity(.4),
        onClick: (id) => id != 2 ? setState(() => _currentIndex = id) : '',
        items: [
          CupertinoIcons.home,
          CupertinoIcons.chat_bubble_2,
          CupertinoIcons.home,
          CupertinoIcons.bell,
          CupertinoIcons.person,
        ],
      ),
    );
  }
}
