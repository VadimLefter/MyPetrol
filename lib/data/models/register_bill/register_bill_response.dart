import 'package:json_annotation/json_annotation.dart';
import 'accured_certificat.dart';

part 'register_bill_response.g.dart';

@JsonSerializable()
class RegisterBillResponse {

  @JsonKey(name: 'ErrorCode')
  final int errorCode;

  @JsonKey(name: 'ErrorMessage')
  final String? errorMessage;

  @JsonKey(name: 'AccuredCertificates')
  final List<AccuredCertificate>? accuredCertificates;

  @JsonKey(name: 'BillNumber')
  final int billNumber;

  @JsonKey(name: 'BillUid')
  final String billUid;

  @JsonKey(name: 'ShiftId')
  final String? shiftId;

  @JsonKey(name: 'ShiftNumber')
  final String shiftNumber;

  RegisterBillResponse({
    required this.errorCode,
    required this.errorMessage,
    required this.accuredCertificates,
    required this.billNumber,
    required this.billUid,
    required this.shiftId,
    required this.shiftNumber,
  });

  factory RegisterBillResponse.fromJson(Map<String, dynamic> json) =>
      _$RegisterBillResponseFromJson(json);

  Map<String, dynamic> toJson() => _$RegisterBillResponseToJson(this);
}
