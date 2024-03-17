
import 'package:json_annotation/json_annotation.dart';

part 'line.g.dart';

@JsonSerializable()
class Line {
  @JsonKey(name: 'Discount')
  final double discount;

  @JsonKey(name: 'Name')
  final String name;

  @JsonKey(name: 'Price')
  final double price;

  @JsonKey(name: 'Quantity')
  final double quantity;

  @JsonKey(name: 'UnitCode')
  final int unitCode;

  @JsonKey(name: 'UnitName')
  final String unitName;

  @JsonKey(name: 'VAT')
  final String vat;

  Line({
    required this.discount,
    required this.name,
    required this.price,
    required this.quantity,
    required this.unitCode,
    required this.unitName,
    required this.vat,
  });

  factory Line.fromJson(Map<String, dynamic> json) => _$LineFromJson(json);

  Map<String, dynamic> toJson() => _$LineToJson(this);
}
