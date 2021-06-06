import 'package:flutter/material.dart';
class TimeStamp extends StatefulWidget {
  const TimeStamp({Key? key}) : super(key: key);

  @override
  _TimeStampState createState() => _TimeStampState();
}

class _TimeStampState extends State<TimeStamp> {
  final dateController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: dateController,
      readOnly: true,
      decoration: InputDecoration(
        hintText: "Select Date",
        suffixIcon: IconButton(
          icon: Icon(Icons.today, color: Color(0xFF28a745),),
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




















