import 'package:json_annotation/json_annotation.dart';

part 'pay_bill.g.dart';

@JsonSerializable()
class PayBill {

  @JsonKey(name: 'PAN')
  final String pan;

  @JsonKey(name: 'PaymentCode')
  final int paymentCode;

  @JsonKey(name: 'RRN')
  final int rrn;

  @JsonKey(name: 'Sum')
  final double sum;

  PayBill({
    required this.pan,
    required this.paymentCode,
    required this.rrn,
    required this.sum,
  });

  factory PayBill.fromJson(Map<String, dynamic> json) =>
      _$PayBillFromJson(json);

  Map<String, dynamic> toJson() => _$PayBillToJson(this);
}