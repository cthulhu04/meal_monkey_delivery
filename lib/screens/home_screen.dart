import 'package:flutter/material.dart';
import 'package:meal_monkey_food_delivery/utils/utils.dart';
import 'package:meal_monkey_food_delivery/widget/home_title_and_link.dart';
import 'package:meal_monkey_food_delivery/widget/input_form.dart';
import 'package:meal_monkey_food_delivery/widget/most_popular.dart';
import 'package:meal_monkey_food_delivery/widget/recent_items.dart';
import 'package:meal_monkey_food_delivery/widget/slider_country_image.dart';
import 'package:meal_monkey_food_delivery/widget/popular_restaurants.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10.0),
      child: ListView(
        physics: BouncingScrollPhysics(),
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: InputForm(
              value: 'search',
            ),
          ),
          SizedBox(height: 20),
          SLiderCountryImage(imagesUtils),
          SizedBox(height: 40),
          HomeTitleLink(title: 'Popular restaurants', link: 'view all'),
          SizedBox(height: 40),
          PopularRestaurants(),
          SizedBox(height: 40),
          HomeTitleLink(title: 'Most Popular', link: 'view all'),
          SizedBox(height: 40),
          MostPopular(),
          SizedBox(height: 20),
          HomeTitleLink(title: 'Recent Items', link: 'view all'),
          RecentItems(),
        ],
      ),
    );
  }
}
