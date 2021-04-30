import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meal_monkey_food_delivery/functionality/assets_widgets.dart';
import 'package:meal_monkey_food_delivery/screens/home_screen.dart';
import 'package:meal_monkey_food_delivery/screens/menu_screen.dart';
import 'package:meal_monkey_food_delivery/screens/more_screen.dart';
import 'package:meal_monkey_food_delivery/screens/offert_screen.dart';
import 'package:meal_monkey_food_delivery/screens/profile_screen.dart';
import 'package:meal_monkey_food_delivery/widget/bottom_navigation.dart';
import 'package:meal_monkey_food_delivery/widget/buttom_navigation_floatbutton.dart';
import 'package:meal_monkey_food_delivery/widget/header_appbar.dart';
import 'package:meal_monkey_food_delivery/widget/navigation_icons.dart';

class UserScreen extends StatefulWidget {
  @override
  _UserScreenState createState() => _UserScreenState();
}

class _UserScreenState extends State<UserScreen> {
  int currentIndex = 0;
  PageController _pageController;
  List<String> _headerText = [
    'Good morning Akila!',
    'Menu',
    'Latest Offers',
    'Profile',
    'More'
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setState(() {
      _pageController = PageController(initialPage: currentIndex);
    });
  }

  @override
  Widget build(BuildContext context) {
    // Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: headerAppBar(
        text: _headerText[currentIndex],
        context: context,
        actions: true,
      ),
      body: PageView(
        physics: BouncingScrollPhysics(),
        controller: _pageController,
        onPageChanged: (int index) => setState(() => currentIndex = index),
        children: [
          HomeScreen(),
          MenuScreen(),
          OffertScreen(),
          ProfileScreen(),
          MoreScreen(),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: ButtomNagivationFloatButton(
        onPressed: () => _pageController.jumpToPage(0),
        currentIndex: currentIndex,
      ),
      bottomNavigationBar: BottomNavigation(
          navigationIcons: navigation_button_assets.map((e) {
        return NavigationIcons(
          currentIndex: currentIndex,
          currentPage: e.currentPage,
          fontAwesomeIcons: e.fontAwesomeIcons,
          text: e.text,
          onPressed: () =>
              setState(() => _pageController.jumpToPage(e.currentPage)),
        );
      }).toList()),
    );
  }
}
