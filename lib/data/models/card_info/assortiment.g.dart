// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'assortiment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Assortiment _$AssortimentFromJson(Map<String, dynamic> json) => Assortiment(
      assortimentID: json['AssortimentID'] as String,
      assortmentCode: json['AssortmentCode'] as String,
      discount: (json['Discount'] as num).toDouble(),
      discountedPrice: (json['DiscountedPrice'] as num).toDouble(),
      name: json['Name'] as String,
      price: (json['Price'] as num).toDouble(),
      priceLineID: json['PriceLineID'] as String,
      vatCode: json['VATCode'] as String,
      vatPercent: (json['VATPercent'] as num).toDouble(),
      additionalLimit: (json['AdditionalLimit'] as num).toDouble(),
      cardBalance: (json['CardBalance'] as num).toDouble(),
      dailyLimit: (json['DailyLimit'] as num).toDouble(),
      dailyLimitConsumed: (json['DailyLimitConsumed'] as num).toDouble(),
      limit: (json['Limit'] as num).toDouble(),
      monthlyLimit: (json['MonthlyLimit'] as num).toDouble(),
      monthlyLimitConsumed: (json['MonthlyLimitConsumed'] as num).toDouble(),
      weeklyLimit: (json['WeeklyLimit'] as num).toDouble(),
      weeklyLimitConsumed: (json['WeeklyLimitConsumed'] as num).toDouble(),
    );

Map<String, dynamic> _$AssortimentToJson(Assortiment instance) =>
    <String, dynamic>{
      'AssortimentID': instance.assortimentID,
      'AssortmentCode': instance.assortmentCode,
      'Discount': instance.discount,
      'DiscountedPrice': instance.discountedPrice,
      'Name': instance.name,
      'Price': instance.price,
      'PriceLineID': instance.priceLineID,
      'VATCode': instance.vatCode,
      'VATPercent': instance.vatPercent,
      'AdditionalLimit': instance.additionalLimit,
      'CardBalance': instance.cardBalance,
      'DailyLimit': instance.dailyLimit,
      'DailyLimitConsumed': instance.dailyLimitConsumed,
      'Limit': instance.limit,
      'MonthlyLimit': instance.monthlyLimit,
      'MonthlyLimitConsumed': instance.monthlyLimitConsumed,
      'WeeklyLimit': instance.weeklyLimit,
      'WeeklyLimitConsumed': instance.weeklyLimitConsumed,
    };
