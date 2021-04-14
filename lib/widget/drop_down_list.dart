import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:meal_monkey_food_delivery/constants/main_colors.dart';

Widget DropDownList({
  String dropdownValue,
  Function onChanged,
  List<String> select,
  bool selectIcon = true,
}) {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 20),
    color: secondPrimaryColor,
    width: double.infinity,
    child: DropdownButton<String>(
      value: dropdownValue != null ? dropdownValue : '',
      underline: SizedBox(height: 0),
      onChanged: onChanged,
      isExpanded: true,
      icon: FaIcon(
        selectIcon ? Icons.keyboard_arrow_down : FontAwesomeIcons.circle,
        color: selectIcon ? fourPrimaryColor : fivePrimaryColor,
      ),
      iconSize: 32,
      items: select.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    ),
  );
}
