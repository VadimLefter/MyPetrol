// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pay_bill.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PayBill _$PayBillFromJson(Map<String, dynamic> json) => PayBill(
      pan: json['PAN'] as String,
      paymentCode: json['PaymentCode'] as int,
      rrn: json['RRN'] as int,
      sum: (json['Sum'] as num).toDouble(),
    );

Map<String, dynamic> _$PayBillToJson(PayBill instance) => <String, dynamic>{
      'PAN': instance.pan,
      'PaymentCode': instance.paymentCode,
      'RRN': instance.rrn,
      'Sum': instance.sum,
    };
