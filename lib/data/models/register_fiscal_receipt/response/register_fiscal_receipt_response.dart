import 'package:json_annotation/json_annotation.dart';

part 'register_fiscal_receipt_response.g.dart';

@JsonSerializable()
class RegisterFiscalReceiptResponse {
  @JsonKey(name: 'ErrorCode')
  final String errorCode;

  @JsonKey(name: 'ErrorMessage')
  final String errorMessage;

  RegisterFiscalReceiptResponse({
    required this.errorMessage,
    required this.errorCode,
  });

  factory RegisterFiscalReceiptResponse.fromJson(Map<String, dynamic> json) =>
      _$RegisterFiscalReceiptResponseFromJson(json);

  Map<String, dynamic> toJson() => _$RegisterFiscalReceiptResponseToJson(this);
}