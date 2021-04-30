import 'package:flutter/material.dart';
import 'package:meal_monkey_food_delivery/constants/main_colors.dart';
import 'package:meal_monkey_food_delivery/constants/text_style_constants.dart';
import 'package:meal_monkey_food_delivery/models/credit_card_model.dart';
import 'package:meal_monkey_food_delivery/providers/add_credit_card.dart';
import 'package:meal_monkey_food_delivery/screens/option_screen.dart';
import 'package:provider/provider.dart';

class CreditCards extends StatelessWidget {
  AddCreditCard addCreditCard;
  CreditCards(this.addCreditCard);
  @override
  Widget build(BuildContext context) {
    var creditCard = Provider.of<AddCreditCards>(context, listen: false);
    return Container(
      decoration: BoxDecoration(
        color: secondPrimaryColor,
        boxShadow: [
          BoxShadow(
            offset: Offset.fromDirection(-80, 10),
            color: Colors.black38,
            blurRadius: 12.0,
          ),
        ],
      ),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Cash/Card on delivery',
                  style: primary_text_style.copyWith(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: fourPrimaryColor,
                  ),
                ),
                Icon(Icons.done, color: fivePrimaryColor, size: 25.0),
              ],
            ),
          ),
          Divider(
            height: 5.0,
            color: thirdPrimaryColor,
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text('credit card'),
                      SizedBox(width: 10.0),
                      Text('**********'),
                      SizedBox(width: 10.0),
                      Text('2415'),
                    ],
                  ),
                ),
                TextButton(
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(fivePrimaryColor),
                  ),
                  onPressed: () => creditCard.delete_credit_card(addCreditCard),
                  child: Text(
                    'Delete',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
          Divider(
            height: 5.0,
            color: thirdPrimaryColor,
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Other Methods'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
