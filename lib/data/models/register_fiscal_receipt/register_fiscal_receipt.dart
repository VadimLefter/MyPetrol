import 'package:json_annotation/json_annotation.dart';
import 'package:test_ap1/data/models/register_fiscal_receipt/pay.dart';

import 'line.dart';

part 'register_fiscal_receipt.g.dart';

@JsonSerializable()
class RegisterFiscalReceipt {
  @JsonKey(name: 'FooterText')
  final String footerText;

  @JsonKey(name: 'HeaderText')
  final String headerText;

  @JsonKey(name: 'ForcePrint')
  final bool forcePrint;

  @JsonKey(name: 'Lines')
  final List<Line> lines;

  @JsonKey(name: 'ClientEmail')
  final String clientEmail;

  @JsonKey(name: 'Number')
  final String number;

  @JsonKey(name: 'Payments')
  final List<Pay> payments;

  RegisterFiscalReceipt({
    required this.footerText,
    required this.headerText,
    required this.forcePrint,
    required this.lines,
    required this.clientEmail,
    required this.number,
    required this.payments,
  });

  factory RegisterFiscalReceipt.fromJson(Map<String, dynamic> json) =>
      _$RegisterFiscalReceiptFromJson(json);

  Map<String, dynamic> toJson() => _$RegisterFiscalReceiptToJson(this);
}
