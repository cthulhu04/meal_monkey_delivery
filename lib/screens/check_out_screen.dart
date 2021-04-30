import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:meal_monkey_food_delivery/constants/main_colors.dart';
import 'package:meal_monkey_food_delivery/constants/text_style_constants.dart';
import 'package:meal_monkey_food_delivery/functionality/assets_widgets.dart';
import 'package:meal_monkey_food_delivery/functionality/global_functions.dart';
import 'package:meal_monkey_food_delivery/models/credit_card_model.dart';
import 'package:meal_monkey_food_delivery/models/my_order.dart';
import 'package:meal_monkey_food_delivery/providers/add_credit_card.dart';
import 'package:meal_monkey_food_delivery/utils/user.dart';
import 'package:meal_monkey_food_delivery/widget/header_appbar.dart';
import 'package:meal_monkey_food_delivery/widget/primary_button.dart';
import 'package:provider/provider.dart';

class CheckOutScreen extends StatefulWidget {
  String title;
  CheckOutScreen(this.title);
  @override
  _CheckOutScreenState createState() => _CheckOutScreenState();
}

class _CheckOutScreenState extends State<CheckOutScreen> {
  double sub_total = Multiply_my_order(my_order_list[0].order);

  double delivery = 20;

  double discount = -7;

  AddCreditCard _addCreditCard;

  @override
  Widget build(BuildContext context) {
    var _provider = Provider.of<AddCreditCards>(context);
    return Scaffold(
      appBar: headerAppBar(
        text: widget.title,
        context: context,
        automaticallyImplyLeading: true,
        actions: false,
      ),
      body: ListView(
        physics: BouncingScrollPhysics(),
        children: [
          Container(
            padding: EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Column(
                    children: [
                      Text(mainUser.address),
                      Container(
                        child: Row(
                          children: [
                            Text(mainUser.state),
                            Text(mainUser.zipCode),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () => print('change info screen..?'),
                  child: Text('Change'),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 10.0),
            color: Colors.white,
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 20.0,
                    vertical: 10.0,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Payment method'),
                      Text('add card'),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  child: Column(
                    children: _provider.getCreditCards.map((addCreditCard) {
                      return ClipRRect(
                        borderRadius: BorderRadius.circular(15.0),
                        child: GestureDetector(
                          onTap: () {
                            setState(() => _addCreditCard = addCreditCard);
                          },
                          child: Container(
                            color: secondPrimaryColor,
                            padding: EdgeInsets.all(20.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  child: Row(
                                    children: [
                                      Text(addCreditCard.name),
                                      SizedBox(width: 10.0),
                                      Text(addCreditCard.creditNumber),
                                    ],
                                  ),
                                ),
                                Icon(Icons.circle, color: fivePrimaryColor),
                              ],
                            ),
                          ),
                        ),
                      );
                    }).toList(),
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Sub Total',
                        style: primary_text_style.copyWith(
                          fontSize: 18,
                          fontWeight: FontWeight.w800,
                          color: fourPrimaryColor,
                        ),
                      ),
                      Text(
                        sub_total.toString(),
                        style: primary_text_style.copyWith(
                          fontSize: 26,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Delivery Cost',
                        style: primary_text_style.copyWith(
                          fontSize: 18,
                          fontWeight: FontWeight.w800,
                          color: fourPrimaryColor,
                        ),
                      ),
                      Text(
                        delivery.toString(),
                        style: primary_text_style.copyWith(
                          fontSize: 26,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'discount',
                        style: primary_text_style.copyWith(
                          fontSize: 18,
                          fontWeight: FontWeight.w800,
                          color: fourPrimaryColor,
                        ),
                      ),
                      Text(
                        discount.toString(),
                        style: primary_text_style.copyWith(
                          fontSize: 26,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ],
                  ),
                ),
                Divider(height: 8, color: secondPrimaryColor),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Total',
                        style: primary_text_style.copyWith(
                          fontSize: 18,
                          fontWeight: FontWeight.w800,
                          color: fourPrimaryColor,
                        ),
                      ),
                      Text(
                        increas_my_order([sub_total, delivery, discount])
                            .toString(),
                        style: primary_text_style.copyWith(
                          fontSize: 26,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10),
                PrimaryButton(
                  widget: Text(
                    'check',
                    style: primary_text_style.copyWith(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                      color: Colors.white,
                    ),
                  ),
                  function: () => print('change adress screen'),
                ),
                SizedBox(height: 20),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
