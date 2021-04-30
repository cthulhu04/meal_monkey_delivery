import 'package:flutter/material.dart';
import 'package:meal_monkey_food_delivery/widget/popular_restaurants.dart';
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
        physics: BouncingScrollPhysics(),
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Find discounts, Offers special',
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(height: 40),
                PrimaryButton(
                  width: 200,
                  height: 50,
                  widget: Text(
                    'Check Offers',
                    style: TextStyle(color: Colors.white),
                  ),
                  function: () {},
                )
              ],
            ),
          ),
          SizedBox(height: 20),
          PopularRestaurants(),
          SizedBox(height: 40),
        ],
      ),
    );
  }
}
