import 'package:flutter/material.dart';
import 'package:meal_monkey_food_delivery/constants/route_constants.dart';
import 'package:meal_monkey_food_delivery/screens/LoginScreen.dart';
import 'package:meal_monkey_food_delivery/screens/user_screen.dart';
import 'package:meal_monkey_food_delivery/screens/new_password_screen.dart';
import 'package:meal_monkey_food_delivery/screens/otp_screen.dart';
import 'package:meal_monkey_food_delivery/screens/register_screen.dart';
import 'package:meal_monkey_food_delivery/screens/reset_password_screen.dart';
import 'package:meal_monkey_food_delivery/screens/sign_up_screen.dart';

Route<dynamic> generateRoutes(RouteSettings settings) {
  switch (settings.name) {
    case register:
      return MaterialPageRoute(builder: (context) => RegisterScreen());
      break;

    case login:
      return MaterialPageRoute(builder: (context) => LoginScreen());
      break;

    case signUp:
      return MaterialPageRoute(builder: (context) => SignUpScreen());
      break;

    case resetPassword:
      return MaterialPageRoute(builder: (context) => ResetPasswordScreen());
      break;

    case optScreen:
      return MaterialPageRoute(builder: (context) => OTPScreen());
      break;

    case newPassword:
      return MaterialPageRoute(builder: (context) => NewPasswordScreen());
      break;

    case user:
      return MaterialPageRoute(builder: (context) => UserScreen());
      break;

    default:
      return null;
  }
}
