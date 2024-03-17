// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pay.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Pay _$PayFromJson(Map<String, dynamic> json) => Pay(
      amount: (json['Amount'] as num).toDouble(),
      code: json['Code'] as String,
    );

Map<String, dynamic> _$PayToJson(Pay instance) => <String, dynamic>{
      'Amount': instance.amount,
      'Code': instance.code,
    };
