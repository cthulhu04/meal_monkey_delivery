import 'package:flutter/material.dart';
import 'package:meal_monkey_food_delivery/Routes.dart';
import 'package:meal_monkey_food_delivery/constants/main_colors.dart';
import 'package:meal_monkey_food_delivery/constants/route_constants.dart';
import 'package:meal_monkey_food_delivery/providers/add_credit_card.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  static String appTitle = 'meal monkey food delivery';
  @override
  Widget build(BuildContext context) => ChangeNotifierProvider(
        create: (context) => AddCreditCards(),
        child: MaterialApp(
          title: appTitle,
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            primaryColor: Colors.white,
            buttonColor: fivePrimaryColor,
          ),
          onGenerateRoute: generateRoutes,
          initialRoute: register,
        ),
      );
}
