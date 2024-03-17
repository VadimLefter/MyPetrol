// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'replenishment_client_account_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ReplenishmentClientAccountResponse _$ReplenishmentClientAccountResponseFromJson(
        Map<String, dynamic> json) =>
    ReplenishmentClientAccountResponse(
      errorCode: json['ErrorCode'] as int,
      errorMessage: json['ErrorMessage'] as String?,
      billUid: json['BillUid'] as String,
      taskId: json['TaskId'] as int,
    );

Map<String, dynamic> _$ReplenishmentClientAccountResponseToJson(
        ReplenishmentClientAccountResponse instance) =>
    <String, dynamic>{
      'ErrorCode': instance.errorCode,
      'ErrorMessage': instance.errorMessage,
      'BillUid': instance.billUid,
      'TaskId': instance.taskId,
    };
