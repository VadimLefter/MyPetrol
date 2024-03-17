// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'replenishment_client_account_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ReplenishmentClientAccountBody _$ReplenishmentClientAccountBodyFromJson(
        Map<String, dynamic> json) =>
    ReplenishmentClientAccountBody(
      billDate: json['BillDate'] as String,
      billNumber: json['BillNumber'] as int,
      clientCardCode: json['ClientCardCode'] as String,
      officeCode: json['OfficeCode'] as String,
      paymentCode: json['PaymentCode'] as int,
      rnr: json['RRN'] as int,
      shiftId: json['ShiftId'] as String,
      shiftNumber: json['ShiftNumber'] as int,
      sum: (json['Sum'] as num).toDouble(),
    );

Map<String, dynamic> _$ReplenishmentClientAccountBodyToJson(
        ReplenishmentClientAccountBody instance) =>
    <String, dynamic>{
      'BillDate': instance.billDate,
      'BillNumber': instance.billNumber,
      'ClientCardCode': instance.clientCardCode,
      'OfficeCode': instance.officeCode,
      'PaymentCode': instance.paymentCode,
      'RRN': instance.rnr,
      'ShiftId': instance.shiftId,
      'ShiftNumber': instance.shiftNumber,
      'Sum': instance.sum,
    };
