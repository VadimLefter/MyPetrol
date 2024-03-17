import 'package:json_annotation/json_annotation.dart';

part 'line_bill.g.dart';

@JsonSerializable()
class LineBill {

  @JsonKey(name: 'Count')
  final double count;

  @JsonKey(name: 'DiscountedPrice')
  final double discountedPrice;

  @JsonKey(name: 'DiscountedSum')
  final double discountedSum;

  @JsonKey(name: 'NomenclatureCode')
  final String nomenclatureCode;

  @JsonKey(name: 'Price')
  final double price;

  @JsonKey(name: 'Sum')
  final double sum;

  LineBill({
    required this.count,
    required this.discountedPrice,
    required this.discountedSum,
    required this.nomenclatureCode,
    required this.price,
    required this.sum,
  });

  factory LineBill.fromJson(Map<String, dynamic> json) =>
      _$LineBillFromJson(json);

  Map<String, dynamic> toJson() => _$LineBillToJson(this);
}