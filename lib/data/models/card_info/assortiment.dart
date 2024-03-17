import 'package:json_annotation/json_annotation.dart';

part 'assortiment.g.dart';

@JsonSerializable()
class Assortiment {
  @JsonKey(name: 'AssortimentID')
  final String assortimentID;

  @JsonKey(name: 'AssortmentCode')
  final String assortmentCode;

  @JsonKey(name: 'Discount')
  final double discount;

  @JsonKey(name: 'DiscountedPrice')
  final double discountedPrice;

  @JsonKey(name: 'Name')
  final String name;

  @JsonKey(name: 'Price')
  final double price;

  @JsonKey(name: 'PriceLineID')
  final String priceLineID;

  @JsonKey(name: 'VATCode')
  final String vatCode;

  @JsonKey(name: 'VATPercent')
  final double vatPercent;

  @JsonKey(name: 'AdditionalLimit')
  final double additionalLimit;

  @JsonKey(name: 'CardBalance')
  final double cardBalance;

  @JsonKey(name: 'DailyLimit')
  final double dailyLimit;

  @JsonKey(name: 'DailyLimitConsumed')
  final double dailyLimitConsumed;

  @JsonKey(name: 'Limit')
  final double limit;

  @JsonKey(name: 'MonthlyLimit')
  final double monthlyLimit;

  @JsonKey(name: 'MonthlyLimitConsumed')
  final double monthlyLimitConsumed;

  @JsonKey(name: 'WeeklyLimit')
  final double weeklyLimit;

  @JsonKey(name: 'WeeklyLimitConsumed')
  final double weeklyLimitConsumed;

  Assortiment({
    required this.assortimentID,
    required this.assortmentCode,
    required this.discount,
    required this.discountedPrice,
    required this.name,
    required this.price,
    required this.priceLineID,
    required this.vatCode,
    required this.vatPercent,
    required this.additionalLimit,
    required this.cardBalance,
    required this.dailyLimit,
    required this.dailyLimitConsumed,
    required this.limit,
    required this.monthlyLimit,
    required this.monthlyLimitConsumed,
    required this.weeklyLimit,
    required this.weeklyLimitConsumed,
  });

  factory Assortiment.fromJson(Map<String, dynamic> json) =>
      _$AssortimentFromJson(json);

  Map<String, dynamic> toJson() => _$AssortimentToJson(this);
}