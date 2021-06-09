import 'package:expenso/constants/colorconstants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:expenso/services/transactionservice.dart';
Widget addButton(
    GlobalKey<FormState> formkey,
    BuildContext context,
    TextEditingController nameController,
    TextEditingController dateController,
    TextEditingController amountController,
    bool isExpense
    ){
  var addData = TransactionService();
  return  TextButton(
    child: Text('Add',
      style: GoogleFonts.ubuntu(
        fontSize: 18.0,
        color: primaryColor,
      ),
    ),
    onPressed: () async {
      final isValid = formkey.currentState!.validate();
      if(isValid){
        final name = nameController.text;
        final amount = double.tryParse(amountController.text) ?? 0;
        addData.addTransaction(name, amount, isExpense);
        Navigator.of(context).pop();
      }


    },
  );
}
