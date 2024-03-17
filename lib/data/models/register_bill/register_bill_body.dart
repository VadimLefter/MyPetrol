import 'package:json_annotation/json_annotation.dart';
import 'package:test_ap1/data/models/register_bill/pay_bill.dart';
import 'line_bill.dart';

part 'register_bill_body.g.dart';

@JsonSerializable()
class RegisterBill {

  @JsonKey(name: 'BillDate')
  final String billDate;

  @JsonKey(name: 'BillNumber')
  final int billNumber;

  @JsonKey(name: 'ClientCardCode')
  final String clientCardCode;

  @JsonKey(name: 'Comment')
  final String comment;

  @JsonKey(name: 'ExternalGunPrepayID')
  final String externalGunPrepayID;

  @JsonKey(name: 'Lines')
  final List<LineBill> lines;

  @JsonKey(name: 'OfficeCode')
  final String officeCode;

  @JsonKey(name: 'Overwrite')
  final bool overwrite;

  @JsonKey(name: 'Payments')
  final List<PayBill> payments;

  @JsonKey(name: 'ShiftId')
  final String shiftId;

  @JsonKey(name: 'ShiftNumber')
  final int shiftNumber;

  @JsonKey(name: 'UserCardCode')
  final String userCardCode;

  @JsonKey(name: 'Validate')
  final bool validate;

  RegisterBill({
    required this.billNumber,
    required this.clientCardCode,
    required this.comment,
    required this.externalGunPrepayID,
    required this.lines,
    required this.officeCode,
    required this.overwrite,
    required this.payments,
    required this.shiftId,
    required this.shiftNumber,
    required this.userCardCode,
    required this.validate,
    required this.billDate,
  });

  factory RegisterBill.fromJson(Map<String, dynamic> json) =>
      _$RegisterBillFromJson(json);

  Map<String, dynamic> toJson() => _$RegisterBillToJson(this);
}

