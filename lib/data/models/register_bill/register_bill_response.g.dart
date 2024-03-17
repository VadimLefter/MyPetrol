// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_bill_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RegisterBillResponse _$RegisterBillResponseFromJson(
        Map<String, dynamic> json) =>
    RegisterBillResponse(
      errorCode: json['ErrorCode'] as int,
      errorMessage: json['ErrorMessage'] as String?,
      accuredCertificates: (json['AccuredCertificates'] as List<dynamic>?)
          ?.map((e) => AccuredCertificate.fromJson(e as Map<String, dynamic>))
          .toList(),
      billNumber: json['BillNumber'] as int,
      billUid: json['BillUid'] as String,
      shiftId: json['ShiftId'] as String?,
      shiftNumber: json['ShiftNumber'] as String,
    );

Map<String, dynamic> _$RegisterBillResponseToJson(
        RegisterBillResponse instance) =>
    <String, dynamic>{
      'ErrorCode': instance.errorCode,
      'ErrorMessage': instance.errorMessage,
      'AccuredCertificates': instance.accuredCertificates,
      'BillNumber': instance.billNumber,
      'BillUid': instance.billUid,
      'ShiftId': instance.shiftId,
      'ShiftNumber': instance.shiftNumber,
    };
