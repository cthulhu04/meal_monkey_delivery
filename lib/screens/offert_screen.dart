import 'package:flutter/material.dart';
import 'package:meal_monkey_food_delivery/widget/primary_button.dart';

class OffertScreen extends StatefulWidget {
  @override
  _OffertScreenState createState() => _OffertScreenState();
}

class _OffertScreenState extends State<OffertScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
            child: Text(
              'Find discounts, Offers specialmeals and more!',
              style: TextStyle(
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          PrimaryButton(
            widget: Text('hello'),
          )
        ],
      ),
    );
  }
}
