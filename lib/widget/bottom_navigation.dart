import 'package:flutter/material.dart';

Widget BottomNavigation({List<Widget> navigationIcons}) {
  return BottomAppBar(
    child: Container(
      height: 80.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: navigationIcons,
      ),
    ),
  );
}
