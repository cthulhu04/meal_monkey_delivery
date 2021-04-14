import 'package:flutter/material.dart';
import 'package:meal_monkey_food_delivery/constants/main_colors.dart';
import 'package:meal_monkey_food_delivery/constants/route_constants.dart';
import 'package:meal_monkey_food_delivery/constants/text_style_constants.dart';
import 'package:meal_monkey_food_delivery/widget/input_form.dart';
import 'package:meal_monkey_food_delivery/widget/login_signup_header_text.dart';
import 'package:meal_monkey_food_delivery/widget/primary_button.dart';

class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  String name = '';
  String email = '';
  String mobile = '';
  String address = '';
  String Password = '';
  String confirmPassword = '';

  TextEditingController _name = TextEditingController();
  TextEditingController _email = TextEditingController();
  TextEditingController _mobile = TextEditingController();
  TextEditingController _address = TextEditingController();
  TextEditingController _Password = TextEditingController();
  TextEditingController _confirmPassword = TextEditingController();

  validation() {
    _name.clear();
    _email.clear();
    _mobile.clear();
    _address.clear();
    _Password.clear();
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
                    'Sign Up',
                    style:
                        loginSignUpTextStyle.copyWith(color: fourPrimaryColor),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Add your details to sign up',
                    style: loginSignUpTextStyle.copyWith(fontSize: 16.0),
                  ),
                ],
              ),
              SizedBox(height: 20),
              InputForm(
                value: 'name',
                function: (value) {},
                validation: (String value) {},
                controller: _name,
              ),
              SizedBox(height: 20),
              InputForm(
                value: 'Email',
                function: (value) {},
                validation: (String value) {},
                controller: _email,
              ),
              SizedBox(height: 20),
              InputForm(
                value: 'Mobile No',
                function: (value) {},
                validation: (String value) {},
                controller: _mobile,
              ),
              SizedBox(height: 20),
              InputForm(
                value: 'Address',
                function: (value) {},
                validation: (String value) {},
                controller: _address,
              ),
              SizedBox(height: 20),
              InputForm(
                obscureText: true,
                value: 'Password',
                function: (value) {},
                validation: (String value) {},
                controller: _Password,
              ),
              SizedBox(height: 20),
              InputForm(
                obscureText: true,
                value: 'Confirm Password',
                function: (value) {},
                validation: (String value) {},
                controller: _confirmPassword,
              ),
              SizedBox(height: 20),
              PrimaryButton(
                widget: Text('sign up',
                    style: primary_text_style.copyWith(color: Colors.white)),
                function: () => validation(),
              ),
              SizedBox(height: 20),
              Center(
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Already have an Account?',
                          style: loginSignUpTextStyle.copyWith(fontSize: 16.0)),
                      SizedBox(width: 2),
                      GestureDetector(
                        child: Text('Login',
                            style: loginSignUpTextStyle.copyWith(
                              fontSize: 16.0,
                              fontWeight: FontWeight.w700,
                              color: fivePrimaryColor,
                            )),
                        onTap: () => Navigator.of(context).pushNamed(login),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20.0),
            ],
          ),
        ),
      ),
    );
  }
}
