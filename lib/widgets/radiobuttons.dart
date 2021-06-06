import 'package:flutter/material.dart';
class CustomRadioButtons extends StatelessWidget {
  const CustomRadioButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RadioListTile<bool>(
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
