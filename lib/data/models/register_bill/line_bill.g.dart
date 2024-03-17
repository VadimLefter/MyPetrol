// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'line_bill.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LineBill _$LineBillFromJson(Map<String, dynamic> json) => LineBill(
      count: (json['Count'] as num).toDouble(),
      discountedPrice: (json['DiscountedPrice'] as num).toDouble(),
      discountedSum: (json['DiscountedSum'] as num).toDouble(),
      nomenclatureCode: json['NomenclatureCode'] as String,
      price: (json['Price'] as num).toDouble(),
      sum: (json['Sum'] as num).toDouble(),
    );

Map<String, dynamic> _$LineBillToJson(LineBill instance) => <String, dynamic>{
      'Count': instance.count,
      'DiscountedPrice': instance.discountedPrice,
      'DiscountedSum': instance.discountedSum,
      'NomenclatureCode': instance.nomenclatureCode,
      'Price': instance.price,
      'Sum': instance.sum,
    };
