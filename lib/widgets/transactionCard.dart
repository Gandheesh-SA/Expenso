import 'package:expenso/widgets/options.dart';
import 'package:flutter/material.dart';
import 'package:expenso/models/transactiondetails.dart';

Widget transactionCard(BuildContext context, TransactionDetails transactionDetails){
  final color = transactionDetails.isExpense? Colors.red : Colors.green;
  return Card(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(30.0),
        topRight: Radius.circular(30.0),
      ),
    ),
    child: ExpansionTile(
      tilePadding: EdgeInsets.symmetric(horizontal: 24, vertical: 8),
      title: Text(
        transactionDetails.name,
        maxLines: 2,
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
      ),
      subtitle: Text(transactionDetails.dateTime.toString()),
      trailing: Text('₹'+
        transactionDetails.amount.toString(),
        style: TextStyle(
            color: color, fontWeight: FontWeight.bold, fontSize: 16),
      ),
      children: [
            workOption(context, transactionDetails),
      ],
    ),


  );
}