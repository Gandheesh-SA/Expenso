import 'package:hive/hive.dart';
import 'package:expenso/models/transactiondetails.dart';


class TransactionService{

  Future addTransaction(String name, double amount, String dateTime, bool isExpense) async {
    final transaction = TransactionDetails()
      ..name = name
      ..dateTime = dateTime
      ..amount = amount
      ..isExpense = isExpense;

    final box = Hive.box('transaction');
    box.add(transaction);
  }

  void editTransaction(TransactionDetails transaction,String name,String dateTime,bool isExpense,double amount){
    transaction.name=name;
    transaction.dateTime=dateTime;
    transaction.amount=amount;
    transaction.save();
  }
  void deleteTransaction(TransactionDetails transaction){
    transaction.delete();
  }
}