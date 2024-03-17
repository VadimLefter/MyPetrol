import 'package:json_annotation/json_annotation.dart';

part 'replenishment_client_account_body.g.dart';

@JsonSerializable()
class ReplenishmentClientAccountBody {
  @JsonKey(name: 'BillDate')
  final String billDate;

  @JsonKey(name: 'BillNumber')
  final int billNumber;

  @JsonKey(name: 'ClientCardCode')
  final String clientCardCode;

  @JsonKey(name: 'OfficeCode')
  final String officeCode;

  @JsonKey(name: 'PaymentCode')
  final int paymentCode;

  @JsonKey(name: 'RRN')
  final int rnr;

  @JsonKey(name: 'ShiftId')
  final String shiftId;

  @JsonKey(name: 'ShiftNumber')
  final int shiftNumber;

  @JsonKey(name: 'Sum')
  final double sum;

  ReplenishmentClientAccountBody({
    required this.billDate,
    required this.billNumber,
    required this.clientCardCode,
    required this.officeCode,
    required this.paymentCode,
    required this.rnr,
    required this.shiftId,
    required this.shiftNumber,
    required this.sum,
  });

  factory ReplenishmentClientAccountBody.fromJson(Map<String, dynamic> json) =>
      _$ReplenishmentClientAccountBodyFromJson(json);

  Map<String, dynamic> toJson() => _$ReplenishmentClientAccountBodyToJson(this);
}
