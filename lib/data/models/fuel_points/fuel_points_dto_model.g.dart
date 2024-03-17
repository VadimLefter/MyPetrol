// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fuel_points_dto_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FuelPointsDto _$FuelPointsDtoFromJson(Map<String, dynamic> json) =>
    FuelPointsDto(
      errorCode: json['errorCode'] as int,
      errorMessage: json['errorMessage'] as String?,
      fuelPoints: (json['fuelPoints'] as List<dynamic>?)
          ?.map((e) => FuelPoint.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$FuelPointsDtoToJson(FuelPointsDto instance) =>
    <String, dynamic>{
      'errorCode': instance.errorCode,
      'errorMessage': instance.errorMessage,
      'fuelPoints': instance.fuelPoints,
    };
