// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fuel_points.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FuelPoint _$FuelPointFromJson(Map<String, dynamic> json) => FuelPoint(
      id: json['id'] as int,
      activeNozzle: json['activeNozzle'] == null
          ? null
          : Nozzle.fromJson(json['activeNozzle'] as Map<String, dynamic>),
      nozzles: (json['nozzles'] as List<dynamic>?)
          ?.map((e) => Nozzle.fromJson(e as Map<String, dynamic>))
          .toList(),
      state: json['state'] as int,
      currentTransaction: json['currentTransaction'] == null
          ? null
          : Transaction.fromJson(
              json['currentTransaction'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$FuelPointToJson(FuelPoint instance) => <String, dynamic>{
      'id': instance.id,
      'activeNozzle': instance.activeNozzle,
      'nozzles': instance.nozzles,
      'state': instance.state,
      'currentTransaction': instance.currentTransaction,
    };
