import 'package:flutter/material.dart';
import 'package:meal_monkey_food_delivery/constants/main_colors.dart';
import 'package:meal_monkey_food_delivery/utils/assets.dart';
import 'package:meal_monkey_food_delivery/widget/header_appbar.dart';

class InboxScreen extends StatefulWidget {
  String title;
  InboxScreen(this.title);
  @override
  _InboxScreenState createState() => _InboxScreenState();
}

class _InboxScreenState extends State<InboxScreen> {
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
        children: inboxList.map((Inbox) {
          return Card(
            elevation: 0,
            child: Column(
              children: [
                ListTile(
                  leading: Icon(
                    Icons.circle,
                    color: fivePrimaryColor,
                    size: 15,
                  ),
                  title: Text(Inbox.title),
                  subtitle: Text(Inbox.date),
                ),
                Divider(height: 10, color: secondPrimaryColor),
              ],
            ),
          );
        }).toList(),
      ),
    );
  }
}
