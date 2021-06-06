import 'package:flutter/material.dart';

class AmountField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      //controller: namecontroller,
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        hintText: 'Enter Amount in INR',
      ),
      keyboardType: TextInputType.number,
      validator: (name) =>
      name != null && name.isEmpty ? 'Enter a Amount in INR' : null,
    );
  }
}
