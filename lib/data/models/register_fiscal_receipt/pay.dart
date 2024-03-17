import 'package:json_annotation/json_annotation.dart';

part 'pay.g.dart';

@JsonSerializable()
class Pay {
  @JsonKey(name: 'Amount')
  final double amount;

  @JsonKey(name: 'Code')
  final String code;

  Pay({
    required this.amount,
    required this.code,
  });

  factory Pay.fromJson(Map<String, dynamic> json) => _$PayFromJson(json);

  Map<String, dynamic> toJson() => _$PayToJson(this);
}