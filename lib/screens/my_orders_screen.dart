import 'package:flutter/material.dart';
import 'package:meal_monkey_food_delivery/constants/main_colors.dart';
import 'package:meal_monkey_food_delivery/constants/text_style_constants.dart';
import 'package:meal_monkey_food_delivery/functionality/assets_widgets.dart';
import 'package:meal_monkey_food_delivery/functionality/global_functions.dart';
import 'package:meal_monkey_food_delivery/models/my_order.dart';
import 'package:meal_monkey_food_delivery/widget/header_appbar.dart';
import 'package:meal_monkey_food_delivery/widget/primary_button.dart';
import 'package:meal_monkey_food_delivery/widget/recent_items_card.dart';

class MyOrdersScreen extends StatefulWidget {
  String title;
  MyOrdersScreen(this.title);
  @override
  _MyOrdersScreenState createState() => _MyOrdersScreenState();
}

class _MyOrdersScreenState extends State<MyOrdersScreen> {
  test() => print(Multiply_my_order(my_order_list[0].order).toString());

  double deliver_cost = 2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: headerAppBar(
        text: widget.title,
        automaticallyImplyLeading: true,
        context: context,
        actions: false,
      ),
      body: ListView(
        physics: BouncingScrollPhysics(),
        children: [
          // Container(
          //   padding: EdgeInsets.symmetric(horizontal: 20.0),
          //   child: Container(
          //     child: Row(
          //       mainAxisAlignment: MainAxisAlignment.start,
          //       children: [
          //         Text(my_order_list[0].image),
          //         SizedBox(width: 20.0),
          //         Text('info'),
          //       ],
          //     ),
          //   ),
          // ),
          Padding(
            padding: EdgeInsets.all(20.0),
            child: RecentItemsCard(),
          ),
          Container(
            color: Colors.grey,
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: my_order_list[0]
                  .order
                  .map(
                    (ItemOrder itemOrder) => Container(
                      padding: EdgeInsets.symmetric(vertical: 10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: Row(
                              children: [
                                Text(
                                  itemOrder.title,
                                  style: TextStyle(
                                    fontSize: 18.0,
                                  ),
                                ),
                                SizedBox(width: 10),
                                Text(
                                  'x${itemOrder.count}',
                                  style: TextStyle(
                                    fontSize: 18.0,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Text(
                            '${itemOrder.price.toStringAsFixed(0)}',
                            style: TextStyle(
                              fontSize: 18.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                  .toList(),
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
                        Multiply_my_order(my_order_list[0].order).toString(),
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
                        deliver_cost.toString(),
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
                        (Multiply_my_order(my_order_list[0].order) +
                                deliver_cost)
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
                  function: () => navigate_checkOut_screen(context: context),
                ),
                SizedBox(height: 20),
              ],
            ),
          )
        ],
      ),
    );
  }
}

// [
// Container(
// padding: EdgeInsets.symmetric(horizontal: 20.0),
// child: Container(
// child: Row(
// mainAxisAlignment: MainAxisAlignment.start,
// children: [
// Text('image'),
// SizedBox(width: 20.0),
// Text('info'),
// ],
// ),
// ),
// ),
// Container(
// padding: EdgeInsets.symmetric(horizontal: 20),
// child: Column(
// children: [
// Container(
// width: double.infinity,
// color: Colors.grey,
// child: Text('item one'),
// ),
// ],
// ),
// )
// ]
