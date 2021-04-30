import 'package:flutter/material.dart';
import 'package:meal_monkey_food_delivery/constants/text_style_constants.dart';
import 'package:meal_monkey_food_delivery/utils/assets.dart';
import 'package:meal_monkey_food_delivery/widget/header_appbar.dart';

class AboutUsScreen extends StatefulWidget {
  String title;

  AboutUsScreen(this.title);
  @override
  _AboutUsScreenState createState() => _AboutUsScreenState();
}

class _AboutUsScreenState extends State<AboutUsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: headerAppBar(
        text: widget.title,
        automaticallyImplyLeading: true,
        context: context,
      ),
      body: ListView(
        physics: BouncingScrollPhysics(),
        children: aboutUsList.map((aboutUs) {
          return Container(
            padding: EdgeInsets.all(20.0),
            child: Text(
              aboutUs.info,
              style: primary_text_style.copyWith(
                fontSize: 18.0,
                color: Colors.black,
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
