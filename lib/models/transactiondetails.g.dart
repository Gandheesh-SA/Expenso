// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transactiondetails.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class TransactionDetailsAdapter extends TypeAdapter<TransactionDetails> {
  @override
  final int typeId = 0;

  @override
  TransactionDetails read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return TransactionDetails()
      ..name = fields[0] as String
      ..dateTime = fields[1] as String
      ..isExpense = fields[2] as bool
      ..amount = fields[3] as double;
  }

  @override
  void write(BinaryWriter writer, TransactionDetails obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.dateTime)
      ..writeByte(2)
      ..write(obj.isExpense)
      ..writeByte(3)
      ..write(obj.amount);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TransactionDetailsAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
