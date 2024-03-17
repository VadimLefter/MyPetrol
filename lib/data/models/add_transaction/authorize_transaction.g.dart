// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'authorize_transaction.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AuthorizeTransaction _$AuthorizeTransactionFromJson(
        Map<String, dynamic> json) =>
    AuthorizeTransaction(
      fuelPointId: json['fuelPointId'] as int,
      nozzleId: json['nozzleId'] as int,
      price: (json['price'] as num).toDouble(),
      amount: (json['amount'] as num).toDouble(),
      authorizeType: json['authorizeType'] as int,
      cardBarcode: json['cardBarcode'] as String,
      paymentTypeId: json['paymentTypeId'] as int,
    );

Map<String, dynamic> _$AuthorizeTransactionToJson(
        AuthorizeTransaction instance) =>
    <String, dynamic>{
      'fuelPointId': instance.fuelPointId,
      'nozzleId': instance.nozzleId,
      'price': instance.price,
      'amount': instance.amount,
      'authorizeType': instance.authorizeType,
      'cardBarcode': instance.cardBarcode,
      'paymentTypeId': instance.paymentTypeId,
    };
