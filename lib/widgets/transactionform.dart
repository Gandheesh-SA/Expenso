import 'package:flutter/material.dart';
import 'package:expenso/models/transactiondetails.dart';
import 'package:expenso/widgets/namefield.dart';
import 'package:expenso/widgets/amountfield.dart';
import 'package:expenso/widgets/addButton.dart';
import 'package:expenso/widgets/cancelbutton.dart';
import 'package:expenso/widgets/radiobuttons.dart';
import 'package:expenso/widgets/datepicker.dart';

class TransactionForm extends StatefulWidget {
  /*final TransactionDetails ? transaction;
  final Function(String name, double amount, bool isExpense, DateTime dateTime) onDone;
  TransactionForm({this.transaction, required this.onDone});*/
  @override
  _TransactionFormState createState() => _TransactionFormState();
}

class _TransactionFormState extends State<TransactionForm> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('Enter your details'),
      content: Form(
        key:_formKey,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,

            mainAxisSize: MainAxisSize.max,
            children: [
              NameField(),
              SizedBox(height:20.0),
              AmountField(),
              SizedBox(height:20.0),
              TimeStamp(),
              SizedBox(height:20.0),
              CustomRadioButtons(),
            ],
          ),
        ),
      ),
      actions: [
        AddButton(),
        CancelButton(),
      ],
    );
  }
}
