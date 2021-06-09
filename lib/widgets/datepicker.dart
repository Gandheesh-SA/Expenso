import 'package:expenso/constants/colorconstants.dart';
import 'package:flutter/material.dart';

class TimeStamp extends StatefulWidget {
  final globalKey;
  TimeStamp({this.globalKey});
  @override
  _TimeStampState createState() => _TimeStampState();
}

class _TimeStampState extends State<TimeStamp> {
  var dateController;
  @override
  void initState() {
    super.initState();
    dateController=widget.globalKey;
  }
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: dateController,
      readOnly: true,
      decoration: InputDecoration(
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: primaryColor, width: 2.0),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: primaryColor, width: 2.0),
        ),
        hintText: "Select Date",
        suffixIcon: IconButton(
          icon: Icon(Icons.today, color: primaryColor,),
          onPressed: () async {
            var date = await showDatePicker(
                context: context,
                initialDate: DateTime.now(),
                firstDate: DateTime(2000),
                lastDate: DateTime(2030),
            );
            dateController.text = date.toString().substring(0,10);
          },
        ),
      ),
    );
  }
}




















