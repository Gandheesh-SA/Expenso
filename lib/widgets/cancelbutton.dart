import 'package:expenso/constants/colorconstants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CancelButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        Navigator.of(context).pop();
      },
      child: Text('Cancel',
        style: GoogleFonts.ubuntu(
          fontSize: 18.0,
          color: primaryColor,
        ),
      ),
    );
  }
}
