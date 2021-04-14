import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:meal_monkey_food_delivery/constants/main_colors.dart';
import 'package:meal_monkey_food_delivery/constants/route_constants.dart';
import 'package:meal_monkey_food_delivery/constants/text_style_constants.dart';
import 'package:meal_monkey_food_delivery/providers/user_provider.dart';
import 'package:meal_monkey_food_delivery/widget/input_form.dart';
import 'package:meal_monkey_food_delivery/widget/login_signup_header_text.dart';
import 'package:meal_monkey_food_delivery/widget/primary_button.dart';
import 'package:meal_monkey_food_delivery/widget/social_media_primary_button.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController _email = TextEditingController();
  TextEditingController _password = TextEditingController();

  String email = '';
  String password = '';

  validation() {
    _email.clear();
    _password.clear();
    setState(() {
      email = '';
      password = '';
    });
    Navigator.of(context).pushNamed(user);
  }

  get_authentication() {
    var _userProvider = Provider.of<UserProvider>(context, listen: false);
    _userProvider.setAuthentication('54sds11f4df1df1d');
    return _userProvider.getAuthentication;
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
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
              LoginSignUpHeaderText(widgets: [
                Text(
                  'Login',
                  style: loginSignUpTextStyle.copyWith(color: fourPrimaryColor),
                ),
                SizedBox(height: 10.0),
                Text(
                  'Please enter your email to receive a',
                  style: loginSignUpTextStyle.copyWith(fontSize: 16.0),
                ),
              ]),
              SizedBox(height: 20),
              Center(
                child: Form(
                  child: Column(
                    children: [
                      InputForm(
                        value: 'email',
                        function: (value) => setState(() => email = value),
                        validation: (String value) {},
                        controller: _email,
                      ),
                      SizedBox(height: 20.0),
                      InputForm(
                        value: 'password',
                        function: (value) => setState(() => password = value),
                        validation: (String value) {},
                        obscureText: true,
                        controller: _password,
                      ),
                      SizedBox(height: 20.0),
                      PrimaryButton(
                        widget: Text('login',
                            style: primary_text_style.copyWith(
                                color: Colors.white)),
                        function: () => validation(),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20.0),
              Center(
                child: GestureDetector(
                  child: Text('Forgot your password?',
                      style: loginSignUpTextStyle.copyWith(fontSize: 16.0)),
                  onTap: () => Navigator.of(context).pushNamed(resetPassword),
                ),
              ),
              SizedBox(height: 60.0),
              Center(
                child: Text('or Login With',
                    style: loginSignUpTextStyle.copyWith(
                      fontSize: 16.0,
                      color: thirdPrimaryColor,
                    )),
              ),
              SizedBox(height: 20.0),
              SocialMediaPrimaryBtn(
                widget: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FaIcon(FontAwesomeIcons.facebook, color: Colors.white),
                    SizedBox(width: 50.0),
                    Text('Login with Facebook',
                        style: TextStyle(color: Colors.white, fontSize: 17.0)),
                  ],
                ),
                color: Color(0xff367FC0),
                function: () {},
              ),
              SizedBox(height: 20.0),
              SocialMediaPrimaryBtn(
                widget: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FaIcon(FontAwesomeIcons.googlePlus, color: Colors.white),
                    SizedBox(width: 50.0),
                    Text('Login with Google',
                        style: TextStyle(color: Colors.white, fontSize: 17.0)),
                  ],
                ),
                color: Color(0xffDD4B39),
                function: () {},
              ),
              SizedBox(height: 80.0),
              Center(
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Don\'t have an Account?',
                          style: loginSignUpTextStyle.copyWith(fontSize: 16.0)),
                      SizedBox(width: 2),
                      GestureDetector(
                        child: Text('Sign Up',
                            style: loginSignUpTextStyle.copyWith(
                              fontSize: 16.0,
                              fontWeight: FontWeight.w700,
                              color: fivePrimaryColor,
                            )),
                        onTap: () => Navigator.of(context).pushNamed(signUp),
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
