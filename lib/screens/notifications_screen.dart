import 'package:flutter/material.dart';
import 'package:meal_monkey_food_delivery/models/notification.dart';
import 'package:meal_monkey_food_delivery/screens/about_us_screen.dart';
import 'package:meal_monkey_food_delivery/widget/header_appbar.dart';
import 'package:meal_monkey_food_delivery/widget/notification_card.dart';

class NotificationsScreen extends StatefulWidget {
  String title;
  NotificationsScreen(this.title);
  @override
  _NotificationsScreenState createState() => _NotificationsScreenState();
}

class _NotificationsScreenState extends State<NotificationsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: headerAppBar(
        text: widget.title,
        automaticallyImplyLeading: true,
        context: context,
      ),
      backgroundColor: Colors.white,
      body: ListView(
        physics: BouncingScrollPhysics(),
        children: notificationLists.map((notification) {
          return NotificationCard(
            title: notification.title,
            date: notification.date,
          );
        }).toList(),
      ),
    );
  }
}
