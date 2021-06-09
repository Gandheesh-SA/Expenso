import 'package:expenso/constants/colorconstants.dart';
import 'package:flutter/material.dart';

Widget amountField(TextEditingController amountController) {
  return TextFormField(
    controller: amountController,
    decoration: InputDecoration(
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: primaryColor, width: 2.0),
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: primaryColor, width: 2.0),
      ),
      hintText: 'Enter Amount in INR',
    ),
    keyboardType: TextInputType.number,
    validator: (name) =>
        name != null && name.isEmpty ? 'Enter a Amount in INR' : null,
  );
}
