// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shift_model_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ShiftDto _$ShiftDtoFromJson(Map<String, dynamic> json) => ShiftDto(
      errorCode: json['errorCode'] as int,
      errorMessage: json['errorMessage'] as String?,
      state: json['state'] as int,
      id: json['id'] as int,
      createDate: json['createDate'] as String,
    );

Map<String, dynamic> _$ShiftDtoToJson(ShiftDto instance) => <String, dynamic>{
      'errorCode': instance.errorCode,
      'errorMessage': instance.errorMessage,
      'state': instance.state,
      'id': instance.id,
      'createDate': instance.createDate,
    };
