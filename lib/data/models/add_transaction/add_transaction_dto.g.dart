// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_transaction_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddTransactionDto _$AddTransactionDtoFromJson(Map<String, dynamic> json) =>
    AddTransactionDto(
      fuelPointId: json['fuelPointId'] as int,
      nozzleId: json['nozzleId'] as int,
      dispensedPrice: (json['dispensedPrice'] as num).toDouble(),
      dispensedVolume: (json['dispensedVolume'] as num?)?.toDouble(),
      dispensedAmount: (json['dispensedAmount'] as num?)?.toDouble(),
      cardBarcode: json['cardBarcode'] as String,
      paymentTypeId: json['paymentTypeId'] as int,
    );

Map<String, dynamic> _$AddTransactionDtoToJson(AddTransactionDto instance) =>
    <String, dynamic>{
      'fuelPointId': instance.fuelPointId,
      'nozzleId': instance.nozzleId,
      'dispensedPrice': instance.dispensedPrice,
      'dispensedVolume': instance.dispensedVolume,
      'dispensedAmount': instance.dispensedAmount,
      'cardBarcode': instance.cardBarcode,
      'paymentTypeId': instance.paymentTypeId,
    };
