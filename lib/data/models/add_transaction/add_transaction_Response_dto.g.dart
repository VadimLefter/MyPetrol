// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_transaction_Response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddTransactionResponseDto _$AddTransactionResponseDtoFromJson(
        Map<String, dynamic> json) =>
    AddTransactionResponseDto(
      errorCode: json['errorCode'] as int,
      errorMessage: json['errorMessage'] as String?,
      transactionId: json['transactionId'] as int,
    );

Map<String, dynamic> _$AddTransactionResponseDtoToJson(
        AddTransactionResponseDto instance) =>
    <String, dynamic>{
      'errorCode': instance.errorCode,
      'errorMessage': instance.errorMessage,
      'transactionId': instance.transactionId,
    };
