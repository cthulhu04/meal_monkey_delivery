import 'package:flutter/material.dart';
import 'package:meal_monkey_food_delivery/constants/main_colors.dart';
import 'package:meal_monkey_food_delivery/constants/route_constants.dart';
import 'package:meal_monkey_food_delivery/constants/text_style_constants.dart';
import 'file:///D:/AndroidStudioProjects/meal_monkey_food_delivery/lib/widget/otp_input.dart';
import 'package:meal_monkey_food_delivery/widget/login_signup_header_text.dart';
import 'package:meal_monkey_food_delivery/widget/primary_button.dart';

class OTPScreen extends StatefulWidget {
  @override
  _OTPScreenState createState() => _OTPScreenState();
}

class _OTPScreenState extends State<OTPScreen> {
  final _formKey = GlobalKey<FormState>();

  dynamic oneDigit = '';
  dynamic twoDigit = '';
  dynamic threeDigit = '';
  dynamic fourDigit = '';

  TextEditingController _oneDigit = TextEditingController();
  TextEditingController _twoDigit = TextEditingController();
  TextEditingController _threeDigit = TextEditingController();
  TextEditingController _fourDigit = TextEditingController();
  double squerSize = 70.0;
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
                    'We have sent an OTP to',
                    style:
                        loginSignUpTextStyle.copyWith(color: fourPrimaryColor),
                  ),
                  Text(
                    'your Mobile',
                    style:
                        loginSignUpTextStyle.copyWith(color: fourPrimaryColor),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Please check your mobile number 071*****12',
                    style: loginSignUpTextStyle.copyWith(fontSize: 16.0),
                  ),
                  Text(
                    'continue to reset your password',
                    style: loginSignUpTextStyle.copyWith(fontSize: 16.0),
                  ),
                ],
              ),
              SizedBox(height: 40),
              Form(
                key: _formKey,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        otpInput(
                          onChanged: (value) =>
                              setState(() => oneDigit = value),
                          validator: (value) {},
                          controller: _oneDigit,
                        ),
                        otpInput(
                          onChanged: (value) =>
                              setState(() => twoDigit = value),
                          validator: (value) {},
                          controller: _twoDigit,
                        ),
                        otpInput(
                          onChanged: (value) =>
                              setState(() => threeDigit = value),
                          validator: (value) {},
                          controller: _threeDigit,
                        ),
                        otpInput(
                          onChanged: (value) =>
                              setState(() => fourDigit = value),
                          validator: (value) {},
                          controller: _fourDigit,
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    PrimaryButton(
                      widget: Text('Next',
                          style:
                              primary_text_style.copyWith(color: Colors.white)),
                      function: () {
                        print(oneDigit);
                        print(twoDigit);
                        print(threeDigit);
                        print(fourDigit);
                        _oneDigit.clear();
                        _twoDigit.clear();
                        _threeDigit.clear();
                        _fourDigit.clear();
                        setState(() {
                          oneDigit = '';
                          twoDigit = '';
                          threeDigit = '';
                          fourDigit = '';
                        });
                        Navigator.of(context).pushNamed(newPassword);
                      },
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Center(
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Didn\'t Receive?',
                          style: loginSignUpTextStyle.copyWith(fontSize: 16.0)),
                      SizedBox(width: 2),
                      GestureDetector(
                        child: Text('Click Here',
                            style: loginSignUpTextStyle.copyWith(
                              fontSize: 16.0,
                              fontWeight: FontWeight.w700,
                              color: fivePrimaryColor,
                            )),
                        onTap: () =>
                            Navigator.of(context).pushNamed(resetPassword),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
