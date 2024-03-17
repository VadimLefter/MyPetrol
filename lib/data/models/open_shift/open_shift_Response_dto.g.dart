// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'open_shift_Response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OpenShiftResponseDto _$OpenShiftResponseDtoFromJson(
        Map<String, dynamic> json) =>
    OpenShiftResponseDto(
      errorCode: json['errorCode'] as int,
      errorMessage: json['errorMessage'] as String?,
    );

Map<String, dynamic> _$OpenShiftResponseDtoToJson(
        OpenShiftResponseDto instance) =>
    <String, dynamic>{
      'errorCode': instance.errorCode,
      'errorMessage': instance.errorMessage,
    };
