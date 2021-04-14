import 'package:flutter/material.dart';
import 'package:meal_monkey_food_delivery/constants/main_colors.dart';
import 'package:meal_monkey_food_delivery/constants/route_constants.dart';
import 'package:meal_monkey_food_delivery/constants/text_style_constants.dart';
import 'package:meal_monkey_food_delivery/widget/input_form.dart';
import 'package:meal_monkey_food_delivery/widget/login_signup_header_text.dart';
import 'package:meal_monkey_food_delivery/widget/primary_button.dart';

class ResetPasswordScreen extends StatefulWidget {
  @override
  _ResetPasswordScreenState createState() => _ResetPasswordScreenState();
}

class _ResetPasswordScreenState extends State<ResetPasswordScreen> {
  final _formKey = GlobalKey<FormState>();

  String email = '';

  TextEditingController _email = TextEditingController();
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
                    'Reset Password',
                    style:
                        loginSignUpTextStyle.copyWith(color: fourPrimaryColor),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Please enter your email to receive a',
                    style: loginSignUpTextStyle.copyWith(fontSize: 16.0),
                  ),
                  Text(
                    'link to  create a new password via email',
                    style: loginSignUpTextStyle.copyWith(fontSize: 16.0),
                  ),
                ],
              ),
              SizedBox(height: 40),
              Form(
                key: _formKey,
                child: Column(
                  children: [
                    InputForm(
                      value: 'Email',
                      function: (value) => setState(() => email = value),
                      validation: (String value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your email';
                        }
                        return null;
                      },
                      controller: _email,
                    ),
                    SizedBox(height: 20),
                    PrimaryButton(
                      widget: Text('sign up',
                          style:
                              primary_text_style.copyWith(color: Colors.white)),
                      function: () {
                        if (_formKey.currentState.validate()) {
                          _email.clear();
                          setState(() {
                            email = '';
                          });
                          Navigator.of(context).pushNamed(optScreen);
                        }
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
