import 'package:flutter/material.dart';
import 'package:expenso/constants/colorconstants.dart';

Widget nameField(TextEditingController namecontroller){
  return TextFormField(
    controller: namecontroller,
    textCapitalization: TextCapitalization.words,
    decoration: InputDecoration(
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: primaryColor, width: 2.0),
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: primaryColor, width: 2.0),
      ),
      hintText: 'Enter Name',
      suffixStyle: TextStyle(color: primaryColor),
    ),

    validator: (name) =>
    name != null && name.isEmpty ? 'Enter a name' : null,
  );
}