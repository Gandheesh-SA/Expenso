import 'package:expenso/constants/colorconstants.dart';
import 'package:flutter/material.dart';
class CustomRadioButtons extends StatefulWidget {
  @override
  _CustomRadioButtonsState createState() => _CustomRadioButtonsState();
}

class _CustomRadioButtonsState extends State<CustomRadioButtons> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RadioListTile<bool>(
          activeColor: primaryColor,
          selectedTileColor: primaryColor,
          title: Text('Expense'),
          value: true,
          groupValue: true,
          onChanged: (value) => {},
        ),
        RadioListTile<bool>(
          title: Text('Income'),
          value: false,
          groupValue: true,
          onChanged: (value) => {},
        ),
      ],
    );
  }
}
