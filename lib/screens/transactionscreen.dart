import 'package:expenso/widgets/transactionform.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:expenso/widgets/buildScreen.dart';
import 'package:expenso/constants/colorconstants.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';


class TransactionScreen extends StatefulWidget {
  @override
  _TransactionScreenState createState() => _TransactionScreenState();
}

class _TransactionScreenState extends State<TransactionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        elevation: 10.0,
        backgroundColor: primaryColor,
        onPressed: () => showDialog(
            context: context,
            builder: (context) => TransactionForm()),
        child: Icon(
          Icons.add,
          size: 36.0,
        ),
      ),
      backgroundColor: primaryColor,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.only(
                top: 45.0,
                left: 30.0,
                right: 30.0,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        child: Icon(
                          Icons.list,
                          size: 30.0,
                          color: primaryColor,
                        ),
                        backgroundColor: Colors.white,
                        radius: 30.0,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  Text(
                    'expenso',
                    style: GoogleFonts.chilanka(
                      fontSize: 48.0,
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      letterSpacing: 2.0,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              child: ValueListenableBuilder
                (
                  valueListenable: Hive.box('transaction').listenable(),
                  builder: (context, Box tbox, _) {
                    final transactions = tbox.values.toList();
                    return buildScreen(context, transactions,);
                  },
              ),
              ),
          ],
        ),
      ),
    );
  }
}
