import 'package:flutter/material.dart';
import 'package:expenso/widgets/namefield.dart';
import 'package:expenso/widgets/amountfield.dart';
import 'package:expenso/widgets/addButton.dart';
import 'package:expenso/widgets/cancelbutton.dart';
import 'package:expenso/widgets/radiobuttons.dart';
import 'package:expenso/widgets/datepicker.dart';
import 'package:expenso/models/transactiondetails.dart';

class TransactionForm extends StatefulWidget {
  final TransactionDetails ? transaction;
  TransactionForm({
    this.transaction,
  });

  @override
  _TransactionFormState createState() => _TransactionFormState();
}

class _TransactionFormState extends State<TransactionForm> {

  final formKey = GlobalKey<FormState>();
  final nameController = TextEditingController();
  final amountController = TextEditingController();
  final dateController = TextEditingController();
  bool isExpense= true;
  bool validation=false;

  @override
  void initState() {
    super.initState();
    if(widget.transaction!=null){
      final transaction = widget.transaction!;
      nameController.text=transaction.name;
      amountController.text=transaction.amount.toString();
      dateController.text =transaction.dateTime.toString();
      isExpense  = transaction.isExpense;
      validation = formKey.currentState!.validate();
    }
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('Enter your details'),
      content: Form(
        key:formKey,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              nameField(nameController),
              SizedBox(height:20.0),
              amountField(amountController),
              SizedBox(height:20.0),
              TimeStamp( globalKey: dateController,),
              SizedBox(height:20.0),
              CustomRadioButtons(),
            ],
          ),
        ),
      ),
       actions: [
        addButton(formKey, context, nameController, dateController,  amountController, isExpense),
        CancelButton(),
      ],
    );
  }
}
