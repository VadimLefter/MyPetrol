// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'line.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Line _$LineFromJson(Map<String, dynamic> json) => Line(
      discount: (json['Discount'] as num).toDouble(),
      name: json['Name'] as String,
      price: (json['Price'] as num).toDouble(),
      quantity: (json['Quantity'] as num).toDouble(),
      unitCode: json['UnitCode'] as int,
      unitName: json['UnitName'] as String,
      vat: json['VAT'] as String,
    );

Map<String, dynamic> _$LineToJson(Line instance) => <String, dynamic>{
      'Discount': instance.discount,
      'Name': instance.name,
      'Price': instance.price,
      'Quantity': instance.quantity,
      'UnitCode': instance.unitCode,
      'UnitName': instance.unitName,
      'VAT': instance.vat,
    };
