import 'package:hive/hive.dart';
import 'package:expenso/models/transactiondetails.dart';
import 'package:intl/intl.dart';

class TransactionService{

  Future addTransaction(String name, double amount,bool isExpense) async {
    final transaction = TransactionDetails()
      ..name = name
      ..dateTime = DateTime.now()
      ..amount = amount
      ..isExpense = isExpense;

    final box = Hive.box('transaction');
    box.add(transaction);
  }

  void editTransaction(TransactionDetails transaction,String name,DateTime dateTime,bool isExpense,double amount){
    transaction.name=name;
    transaction.dateTime=dateTime;
    transaction.amount=amount;
    transaction.save();
  }
  void deleteTransaction(TransactionDetails transaction){
    transaction.delete();
  }
}