import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meal_monkey_food_delivery/constants/main_colors.dart';
import 'package:meal_monkey_food_delivery/constants/text_style_constants.dart';
import 'package:meal_monkey_food_delivery/functionality/global_functions.dart';
import 'package:meal_monkey_food_delivery/models/menus.dart';
import 'package:meal_monkey_food_delivery/widget/add_cart_card.dart';
import 'package:meal_monkey_food_delivery/widget/drop_down_container.dart';
import 'package:meal_monkey_food_delivery/widget/drop_down_list.dart';
import 'package:meal_monkey_food_delivery/widget/menu_card_header.dart';
import 'package:meal_monkey_food_delivery/widget/menu_category.dart';
import 'package:meal_monkey_food_delivery/widget/numbers_of_portion_section.dart';

class FoodScreen extends StatefulWidget {
  Menus menus;
  FoodScreen({this.menus});
  @override
  _FoodScreenState createState() => _FoodScreenState();
}

class _FoodScreenState extends State<FoodScreen> {
  int portion = 0;
  String dropdownValue_1 = 'First';
  List<String> select_portions = ['First', 'Second', 'Third', 'Fourth'];

  String dropdownValue_2 = '- Select the ingredients -';
  List<String> ingredient_select = [];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        physics: BouncingScrollPhysics(),
        children: [
          Stack(
            alignment: AlignmentDirectional.bottomCenter,
            children: [
              Container(
                height: 350,
                width: double.infinity,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('images/${widget.menus.image}'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                child: Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(75),
                      topLeft: Radius.circular(75),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Container(
            color: Colors.white,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  menu_card_header(
                    title: widget.menus.title,
                    price: widget.menus.price,
                  ),
                  SizedBox(height: 20),
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Description',
                          style: secondary_text_style,
                        ),
                        SizedBox(height: 10),
                        Text(widget.menus.description),
                      ],
                    ),
                  ),
                  SizedBox(height: 40),
                  Divider(height: 3, color: secondPrimaryColor),
                  SizedBox(height: 20),
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Customize your Order',
                          style: secondary_text_style,
                        ),
                        SizedBox(height: 10),
                        dropdown_and_adCard([
                          DropDownList(
                            dropdownValue: dropdownValue_1,
                            onChanged: (String select) {
                              setState(() {
                                dropdownValue_1 = select;
                              });
                            },
                            select: select_portions,
                          ),
                          SizedBox(height: 10),
                          DropDownList(
                            dropdownValue: dropdownValue_2,
                            onChanged: (String select) {
                              setState(() {
                                dropdownValue_2 = select;
                              });
                              print(select);
                            },
                            select: widget.menus.ingredient,
                          ),
                        ]),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  numbers_of_portion(
                    menus: () =>
                        setState(() => portion < 1 ? portion = 0 : portion--),
                    portion: portion.toString(),
                    plus: () => setState(() => portion++),
                  ),
                  SizedBox(height: 20),
                ],
              ),
            ),
          ),
          MenuCategory(
            height: 250,
            size: size,
            menuList: [
              add_cart_card(
                title: 'Total Price',
                total: multiply_per_portion(widget.menus.price, portion),
                size: size,
                onTap: () => print(widget.menus.title),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
