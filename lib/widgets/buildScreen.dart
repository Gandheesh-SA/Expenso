import 'package:expenso/widgets/transactionCard.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


Widget buildScreen(BuildContext context, List transactions) {

  final netExpense = transactions.fold<double>(0,
          (previousValue, element) => element.isExpense
              ? previousValue - element.amount:previousValue + element.amount
  );
  final color= netExpense>0 ? Colors.green : Colors.red;
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
          transactions.isEmpty ? 'No Expense' :'\₹${netExpense.toStringAsFixed(2)}',
          style: GoogleFonts.chilanka(
            fontSize: 24.0,
            color: color,
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
