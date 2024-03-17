// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'card_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CardInfo _$CardInfoFromJson(Map<String, dynamic> json) => CardInfo(
      errorCode: json['ErrorCode'] as int,
      errorMessage: json['ErrorMessage'] as String?,
      allowedBalance: (json['AllowedBalance'] as num).toDouble(),
      assortiment: (json['Assortiment'] as List<dynamic>)
          .map((e) => Assortiment.fromJson(e as Map<String, dynamic>))
          .toList(),
      balance: (json['Balance'] as num).toDouble(),
      blockedAmount: (json['BlockedAmount'] as num).toDouble(),
      cardBarcode: json['CardBarcode'] as String,
      cardEnabled: json['CardEnabled'] as bool,
      cardName: json['CardName'] as String,
      cardNumber: json['CardNumber'] as String,
      customerEnabled: json['CustomerEnabled'] as bool,
      customerId: json['CustomerId'] as String?,
      customerName: json['CustomerName'] as String,
      dailyLimit: (json['DailyLimit'] as num).toDouble(),
      dailyLimitConsumed: (json['DailyLimitConsumed'] as num).toDouble(),
      hasPIN: json['HasPIN'] as bool,
      limitType: (json['LimitType'] as num).toDouble(),
      monthlyLimit: (json['MonthlyLimit'] as num).toDouble(),
      monthlyLimitConsumed: (json['MonthlyLimitConsumed'] as num).toDouble(),
      phone: json['Phone'] as String?,
      refusedRefillClientAccount: json['RefusedRefillClientAccount'] as bool,
      tankCapacity: (json['TankCapacity'] as num).toDouble(),
      taxFree: json['TaxFree'] as bool,
      weeklyLimit: (json['WeeklyLimit'] as num).toDouble(),
      weeklyLimitConsumed: (json['WeeklyLimitConsumed'] as num).toDouble(),
    );

Map<String, dynamic> _$CardInfoToJson(CardInfo instance) => <String, dynamic>{
      'ErrorCode': instance.errorCode,
      'ErrorMessage': instance.errorMessage,
      'AllowedBalance': instance.allowedBalance,
      'Assortiment': instance.assortiment,
      'Balance': instance.balance,
      'BlockedAmount': instance.blockedAmount,
      'CardBarcode': instance.cardBarcode,
      'CardEnabled': instance.cardEnabled,
      'CardName': instance.cardName,
      'CardNumber': instance.cardNumber,
      'CustomerEnabled': instance.customerEnabled,
      'CustomerId': instance.customerId,
      'CustomerName': instance.customerName,
      'DailyLimit': instance.dailyLimit,
      'DailyLimitConsumed': instance.dailyLimitConsumed,
      'HasPIN': instance.hasPIN,
      'LimitType': instance.limitType,
      'MonthlyLimit': instance.monthlyLimit,
      'MonthlyLimitConsumed': instance.monthlyLimitConsumed,
      'Phone': instance.phone,
      'RefusedRefillClientAccount': instance.refusedRefillClientAccount,
      'TankCapacity': instance.tankCapacity,
      'TaxFree': instance.taxFree,
      'WeeklyLimit': instance.weeklyLimit,
      'WeeklyLimitConsumed': instance.weeklyLimitConsumed,
    };
