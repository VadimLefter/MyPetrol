// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_bill_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RegisterBill _$RegisterBillFromJson(Map<String, dynamic> json) => RegisterBill(
      billNumber: json['BillNumber'] as int,
      clientCardCode: json['ClientCardCode'] as String,
      comment: json['Comment'] as String,
      externalGunPrepayID: json['ExternalGunPrepayID'] as String,
      lines: (json['Lines'] as List<dynamic>)
          .map((e) => LineBill.fromJson(e as Map<String, dynamic>))
          .toList(),
      officeCode: json['OfficeCode'] as String,
      overwrite: json['Overwrite'] as bool,
      payments: (json['Payments'] as List<dynamic>)
          .map((e) => PayBill.fromJson(e as Map<String, dynamic>))
          .toList(),
      shiftId: json['ShiftId'] as String,
      shiftNumber: json['ShiftNumber'] as int,
      userCardCode: json['UserCardCode'] as String,
      validate: json['Validate'] as bool,
      billDate: json['BillDate'] as String,
    );

Map<String, dynamic> _$RegisterBillToJson(RegisterBill instance) =>
    <String, dynamic>{
      'BillDate': instance.billDate,
      'BillNumber': instance.billNumber,
      'ClientCardCode': instance.clientCardCode,
      'Comment': instance.comment,
      'ExternalGunPrepayID': instance.externalGunPrepayID,
      'Lines': instance.lines,
      'OfficeCode': instance.officeCode,
      'Overwrite': instance.overwrite,
      'Payments': instance.payments,
      'ShiftId': instance.shiftId,
      'ShiftNumber': instance.shiftNumber,
      'UserCardCode': instance.userCardCode,
      'Validate': instance.validate,
    };
