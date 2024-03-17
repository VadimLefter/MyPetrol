// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'close_shift.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CloseShiftResponse _$CloseShiftResponseFromJson(Map<String, dynamic> json) =>
    CloseShiftResponse(
      errorCode: json['errorCode'] as int,
      errorMessage: json['errorMessage'] as String?,
    );

Map<String, dynamic> _$CloseShiftResponseToJson(CloseShiftResponse instance) =>
    <String, dynamic>{
      'errorCode': instance.errorCode,
      'errorMessage': instance.errorMessage,
    };
