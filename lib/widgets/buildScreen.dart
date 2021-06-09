import 'package:expenso/widgets/transactionCard.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:expenso/models/transactiondetails.dart';

Widget buildScreen(BuildContext context, List transactions) {
  return Expanded(
    child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Container(
        padding: EdgeInsets.only(
          top: 15.0,
          left: 30.0,
          right: 30.0,
          bottom: 25.0,
        ),
        child: Text(
          transactions.isEmpty ? 'No Expense' : 'Net Expense',
          style: GoogleFonts.chilanka(
            fontSize: 24.0,
            color: Colors.white,
            letterSpacing: 2.0,
          ),
        ),
      ),
      Expanded(
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30.0),
              topRight: Radius.circular(30.0),
            ),
          ),
          child: ListView.builder(
              itemCount: transactions.length,
              itemBuilder: (BuildContext context, int index) {
                final transaction = transactions[index];
                return transactionCard( context, transaction,);
              }),
        ),
      ),
    ]),
  );
}
