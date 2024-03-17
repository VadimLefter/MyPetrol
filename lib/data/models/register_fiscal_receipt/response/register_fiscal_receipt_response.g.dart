// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_fiscal_receipt_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RegisterFiscalReceiptResponse _$RegisterFiscalReceiptResponseFromJson(
        Map<String, dynamic> json) =>
    RegisterFiscalReceiptResponse(
      errorMessage: json['ErrorMessage'] as String,
      errorCode: json['ErrorCode'] as String,
    );

Map<String, dynamic> _$RegisterFiscalReceiptResponseToJson(
        RegisterFiscalReceiptResponse instance) =>
    <String, dynamic>{
      'ErrorCode': instance.errorCode,
      'ErrorMessage': instance.errorMessage,
    };
