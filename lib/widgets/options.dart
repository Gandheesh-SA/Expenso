import 'package:flutter/material.dart';
import 'package:expenso/models/transactiondetails.dart';
import 'package:expenso/services/transactionservice.dart';

Widget workOption(BuildContext context, TransactionDetails transaction){
  var editDelete = TransactionService();
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      //WORKING ON EDIT BUTTON
      TextButton(
        onPressed: () => editDelete.deleteTransaction(transaction),
        child: Text('Delete'),
      ),
    ],
  );
}