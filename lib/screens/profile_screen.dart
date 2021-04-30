import 'package:flutter/material.dart';
import 'package:meal_monkey_food_delivery/widget/edit_profile_container.dart';
import 'package:meal_monkey_food_delivery/widget/input_form.dart';
import 'package:meal_monkey_food_delivery/widget/primary_button.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  TextEditingController _name = TextEditingController();
  TextEditingController _lastName = TextEditingController();
  TextEditingController _mobile = TextEditingController();
  TextEditingController _address = TextEditingController();
  TextEditingController _password = TextEditingController();
  TextEditingController _confirmPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: BouncingScrollPhysics(),
      scrollDirection: Axis.vertical,
      children: [
        EditProfileContainer(
          avatarImage: './images/logo.png',
          name: 'Emilia',
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Form(
            child: Column(
              children: [
                InputForm(
                  value: 'value',
                  function: (value) => print(value),
                ),
                SizedBox(height: 20),
                InputForm(
                  value: 'value',
                  function: (value) => print(value),
                ),
                SizedBox(height: 20),
                InputForm(
                  value: 'value',
                  function: (value) => print(value),
                ),
                SizedBox(height: 20),
                InputForm(
                  value: 'value',
                  function: (value) => print(value),
                ),
                SizedBox(height: 20),
                InputForm(
                  value: 'value',
                  function: (value) => print(value),
                ),
                SizedBox(height: 20),
                InputForm(
                  value: 'value',
                  function: (value) => print(value),
                ),
                SizedBox(height: 20),
                PrimaryButton(
                  widget: Text(
                    'save',
                    style: TextStyle(
                      fontSize: 21,
                      color: Colors.white,
                    ),
                  ),
                  function: () => print('save to data base'),
                ),
                SizedBox(height: 40),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
