import 'package:flutter/material.dart';
class NameField extends StatelessWidget {
  /*final  namecontroller;
  NameField({this.namecontroller});*/
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      //controller: namecontroller,
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        hintText: 'Enter Name',
      ),

      validator: (name) =>
      name != null && name.isEmpty ? 'Enter a name' : null,
    );
  }
}
