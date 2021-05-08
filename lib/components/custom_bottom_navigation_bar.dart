import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  final List<IconData> items;
  final int currentIndex;
  final Color selectedColor;
  final Color unselectedColor;
  final Color backgroundColor;
  final ValueSetter<int> onClick;

  const CustomBottomNavigationBar({
    required this.items,
    required this.currentIndex,
    required this.selectedColor,
    required this.unselectedColor,
    required this.backgroundColor,
    required this.onClick,
  });

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: Size(MediaQuery.of(context).size.width, 100),
      child: Padding(
        padding: EdgeInsets.only(top: 16, left: 16, right: 16, bottom: 32),
        child: Container(
          decoration: BoxDecoration(
            color: backgroundColor,
            borderRadius: BorderRadius.circular(16),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(.5),
                spreadRadius: 1,
                blurRadius: 10,
              ),
            ],
          ),
          padding: EdgeInsets.all(8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: items
                .asMap()
                .entries
                .map((e) => IconButton(
                      icon: Icon(e.value,
                          color: currentIndex == e.key ? selectedColor : unselectedColor),
                      onPressed: () => onClick(e.key),
                    ))
                .toList(),
          ),
        ),
      ),
    );
  }
}
