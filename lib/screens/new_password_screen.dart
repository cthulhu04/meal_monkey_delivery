import 'package:flutter/material.dart';
import 'package:meal_monkey_food_delivery/constants/main_colors.dart';
import 'package:meal_monkey_food_delivery/constants/route_constants.dart';
import 'package:meal_monkey_food_delivery/constants/text_style_constants.dart';
import 'package:meal_monkey_food_delivery/widget/input_form.dart';
import 'package:meal_monkey_food_delivery/widget/login_signup_header_text.dart';
import 'package:meal_monkey_food_delivery/widget/primary_button.dart';

class NewPasswordScreen extends StatefulWidget {
  @override
  _NewPasswordScreenState createState() => _NewPasswordScreenState();
}

class _NewPasswordScreenState extends State<NewPasswordScreen> {
  String newPassword = '';
  String confirmPassword = '';

  TextEditingController _newPassword = TextEditingController();
  TextEditingController _confirmPassword = TextEditingController();

  Validation() {
    setState(() {
      newPassword = '';
      confirmPassword = '';
    });
    _newPassword.clear();
    _confirmPassword.clear();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Center(
        child: Container(
          width: size.width / 1.1,
          child: ListView(
            children: [
              LoginSignUpHeaderText(
                widgets: [
                  Text(
                    'New Password',
                    style:
                        loginSignUpTextStyle.copyWith(color: fourPrimaryColor),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Please enter your email to receive',
                    style: loginSignUpTextStyle.copyWith(fontSize: 16.0),
                  ),
                  Text(
                    'link to  create a new password via email',
                    style: loginSignUpTextStyle.copyWith(fontSize: 16.0),
                  ),
                ],
              ),
              SizedBox(height: 40),
              InputForm(
                value: 'New password',
                function: (value) => setState(() => newPassword = value),
                validation: (String value) {},
                obscureText: true,
                controller: _newPassword,
              ),
              SizedBox(height: 20),
              InputForm(
                value: 'Confirm Password',
                function: (value) => setState(() => confirmPassword = value),
                validation: (String value) {},
                obscureText: true,
                controller: _confirmPassword,
              ),
              SizedBox(height: 20),
              PrimaryButton(
                widget: Text('login',
                    style: primary_text_style.copyWith(color: Colors.white)),
                function: () {
                  if (newPassword == confirmPassword) {
                    Validation();
                    print('new password');
                    Navigator.of(context).pushNamed(register);
                  } else {
                    print('password didn\'t not match');
                  }
                },
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
