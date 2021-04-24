import 'package:discover_socialmedia/screens/home_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
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
        onTap: (id) => id != 2 ? setState(() => _currentIndex = id) : '',
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedIconTheme: IconThemeData(color: CupertinoColors.darkBackgroundGray, size: 28),
        unselectedIconTheme: IconThemeData(color: CupertinoColors.inactiveGray, size: 28),
        elevation: 0,
        backgroundColor: CupertinoColors.extraLightBackgroundGray,
        type: BottomNavigationBarType.fixed,
        items: _bottomNavItems,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
