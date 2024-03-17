// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nozzle.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Nozzle _$NozzleFromJson(Map<String, dynamic> json) => Nozzle(
      id: json['id'] as int,
      fuelPointId: json['fuelPointId'] as int,
      productCode: json['productCode'] as int,
      productName: json['productName'] as String?,
      productPrice: (json['productPrice'] as num).toDouble(),
      dispensedAmount: (json['dispensedAmount'] as num).toDouble(),
      dispensedVolume: (json['dispensedVolume'] as num).toDouble(),
    );

Map<String, dynamic> _$NozzleToJson(Nozzle instance) => <String, dynamic>{
      'id': instance.id,
      'fuelPointId': instance.fuelPointId,
      'productCode': instance.productCode,
      'productName': instance.productName,
      'productPrice': instance.productPrice,
      'dispensedAmount': instance.dispensedAmount,
      'dispensedVolume': instance.dispensedVolume,
    };
