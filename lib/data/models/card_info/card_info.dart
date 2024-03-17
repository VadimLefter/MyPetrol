import 'package:json_annotation/json_annotation.dart';

import 'assortiment.dart';

part 'card_info.g.dart';

@JsonSerializable()
class CardInfo {
  @JsonKey(name: 'ErrorCode')
  final int errorCode;

  @JsonKey(name: 'ErrorMessage')
  final String? errorMessage;

  @JsonKey(name: 'AllowedBalance')
  final double allowedBalance;

  @JsonKey(name: 'Assortiment')
  final List<Assortiment> assortiment;

  @JsonKey(name: 'Balance')
  final double balance;

  @JsonKey(name: 'BlockedAmount')
  final double blockedAmount;

  @JsonKey(name: 'CardBarcode')
  final String cardBarcode;

  @JsonKey(name: 'CardEnabled')
  final bool cardEnabled;

  @JsonKey(name: 'CardName')
  final String cardName;

  @JsonKey(name: 'CardNumber')
  final String cardNumber;

  @JsonKey(name: 'CustomerEnabled')
  final bool customerEnabled;

  @JsonKey(name: 'CustomerId')
  final String? customerId;

  @JsonKey(name: 'CustomerName')
  final String customerName;

  @JsonKey(name: 'DailyLimit')
  final double dailyLimit;

  @JsonKey(name: 'DailyLimitConsumed')
  final double dailyLimitConsumed;

  @JsonKey(name: 'HasPIN')
  final bool hasPIN;

  @JsonKey(name: 'LimitType')
  final double limitType;

  @JsonKey(name: 'MonthlyLimit')
  final double monthlyLimit;

  @JsonKey(name: 'MonthlyLimitConsumed')
  final double monthlyLimitConsumed;

  @JsonKey(name: 'Phone')
  final String? phone;

  @JsonKey(name: 'RefusedRefillClientAccount')
  final bool refusedRefillClientAccount;

  @JsonKey(name: 'TankCapacity')
  final double tankCapacity;

  @JsonKey(name: 'TaxFree')
  final bool taxFree;

  @JsonKey(name: 'WeeklyLimit')
  final double weeklyLimit;

  @JsonKey(name: 'WeeklyLimitConsumed')
  final double weeklyLimitConsumed;

  CardInfo({
    required this.errorCode,
    required this.errorMessage,
    required this.allowedBalance,
    required this.assortiment,
    required this.balance,
    required this.blockedAmount,
    required this.cardBarcode,
    required this.cardEnabled,
    required this.cardName,
    required this.cardNumber,
    required this.customerEnabled,
    required this.customerId,
    required this.customerName,
    required this.dailyLimit,
    required this.dailyLimitConsumed,
    required this.hasPIN,
    required this.limitType,
    required this.monthlyLimit,
    required this.monthlyLimitConsumed,
    required this.phone,
    required this.refusedRefillClientAccount,
    required this.tankCapacity,
    required this.taxFree,
    required this.weeklyLimit,
    required this.weeklyLimitConsumed,
  });

  factory CardInfo.fromJson(Map<String, dynamic> json) =>
      _$CardInfoFromJson(json);

  Map<String, dynamic> toJson() => _$CardInfoToJson(this);
}