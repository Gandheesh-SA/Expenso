import 'package:hive/hive.dart';
part 'transactiondetails.g.dart';
@HiveType(typeId: 0)
class TransactionDetails{
  @HiveField(0)
  late String name;
  @HiveField(1)
  late DateTime dateTime;
  @HiveField(2)
  late bool isExpense;
  @HiveField(3)
  late double amount;
}