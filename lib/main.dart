import 'package:discover/screens/home_screen.dart';
import 'package:discover/screens/posts/post_create.dart';
import 'package:discover/screens/posts/post_details.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
  late final _bottomNavItems;
  late final _screens;
  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();
    _bottomNavItems = [
      BottomNavigationBarItem(icon: Icon(CupertinoIcons.home), label: "Home"),
      BottomNavigationBarItem(icon: Icon(CupertinoIcons.chat_bubble_2), label: "Messages"),
      BottomNavigationBarItem(
          icon: Icon(CupertinoIcons.chat_bubble_2, color: Colors.transparent), label: ""),
      BottomNavigationBarItem(icon: Icon(CupertinoIcons.bell), label: "Notifications"),
      BottomNavigationBarItem(icon: Icon(CupertinoIcons.person), label: "Profile"),
    ];

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
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        currentIndex: _currentIndex,
        items: _bottomNavItems,
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedIconTheme: IconThemeData(color: CupertinoColors.darkBackgroundGray, size: 28),
        unselectedIconTheme: IconThemeData(color: CupertinoColors.inactiveGray, size: 28),
        backgroundColor: CupertinoColors.extraLightBackgroundGray,
        onTap: (id) => id != 2 ? setState(() => _currentIndex = id) : '',
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.of(context).pushNamed(PostCreate.route),
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
