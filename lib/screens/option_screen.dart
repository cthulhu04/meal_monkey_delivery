import 'package:flutter/material.dart';
import 'package:meal_monkey_food_delivery/constants/main_colors.dart';
import 'package:meal_monkey_food_delivery/models/credit_card_model.dart';
import 'package:meal_monkey_food_delivery/providers/add_credit_card.dart';
import 'package:meal_monkey_food_delivery/widget/creditcard_card.dart';
import 'package:meal_monkey_food_delivery/widget/header_appbar.dart';
import 'package:provider/provider.dart';

class OptionScreen extends StatefulWidget {
  String title;
  OptionScreen({
    this.title = 'option screen',
  });
  @override
  _OptionScreenState createState() => _OptionScreenState();
}

class _OptionScreenState extends State<OptionScreen> {
  int count = 1;

  @override
  Widget build(BuildContext context) {
    var creditCards = Provider.of<AddCreditCards>(context, listen: false);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: headerAppBar(
        automaticallyImplyLeading: true,
        text: widget.title,
        context: context,
      ),
      body: ListView(
        physics: BouncingScrollPhysics(),
        children: [
          SizedBox(height: 20.0),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Customize your payment method',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  SizedBox(height: 20.0),
                  Divider(
                    height: 5.0,
                    color: thirdPrimaryColor,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 20.0),
          Container(
            child: Column(
              children:
                  creditCards.getCreditCards.map((AddCreditCard addCreditCard) {
                return Padding(
                  padding: EdgeInsets.only(bottom: 25.0),
                  child: CreditCards(addCreditCard),
                );
              }).toList(),
            ),
          ),
          SizedBox(height: 20.0),
          TextButton(
            onPressed: () => creditCards.add_credit_card(
              AddCreditCard(
                id: count++,
                name: 'master card',
                creditNumber: '1234515422',
              ),
            ),
            child: Container(
              padding: EdgeInsets.all(20.0),
              color: fivePrimaryColor,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(
                    Icons.add,
                    color: Colors.white,
                    size: 25.0,
                  ),
                  Text(
                    'ddd',
                    style: TextStyle(
                      fontSize: 21.0,
                      fontWeight: FontWeight.w800,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
