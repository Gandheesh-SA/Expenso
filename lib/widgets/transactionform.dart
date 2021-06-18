import 'package:flutter/material.dart';
import 'package:expenso/widgets/namefield.dart';
import 'package:expenso/widgets/amountfield.dart';
import 'package:expenso/widgets/addButton.dart';
import 'package:expenso/widgets/cancelbutton.dart';
import 'package:expenso/constants/colorconstants.dart';
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
  bool isExpense = true;
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
    bool addEdit = widget.transaction!= null;
    final heading = addEdit? 'Edit your details': 'Add your details';
    return AlertDialog(
      title: Text(heading),
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
              RadioListTile<bool>(
                selectedTileColor: primaryColor,
                activeColor: primaryColor,
                title: Text('Expense'),
                value: true,
                groupValue: isExpense,
                onChanged: (value){
                  setState(() {
                    isExpense=value!;
                    print(isExpense);
                  });
                },
              ),
              RadioListTile<bool>(
                selectedTileColor: primaryColor,
                activeColor: primaryColor,
                title: Text('Income'),
                value: false,
                groupValue: isExpense,
                onChanged: (value){
                  setState(() {
                    isExpense=value!;
                    print(isExpense);
                  });

                },
              ),
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
