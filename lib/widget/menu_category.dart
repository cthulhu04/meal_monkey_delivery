import 'package:flutter/material.dart';
import 'package:meal_monkey_food_delivery/constants/main_colors.dart';

class MenuCategory extends StatelessWidget {
  double height;
  Size size;
  List<Widget> menuList;
  MenuCategory({this.height = 500, this.size, this.menuList});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: double.infinity,
      child: Stack(
        alignment: AlignmentDirectional.center,
        children: [
          Positioned(
            top: 0,
            left: 0,
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(50),
                bottomRight: Radius.circular(50),
              ),
              child: Container(
                width: size.width / 3,
                height: height,
                color: fivePrimaryColor,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Container(
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: menuList,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
