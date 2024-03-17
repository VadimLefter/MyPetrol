// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'accured_certificat.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AccuredCertificate _$AccuredCertificateFromJson(Map<String, dynamic> json) =>
    AccuredCertificate(
      advertMessage: json['AdvertMessage'] as String?,
      barcode: json['Barcode'] as String?,
      qr: json['QR'] as String?,
      validTo: json['ValidTo'] as String?,
      value: json['Value'] as String?,
    );

Map<String, dynamic> _$AccuredCertificateToJson(AccuredCertificate instance) =>
    <String, dynamic>{
      'AdvertMessage': instance.advertMessage,
      'Barcode': instance.barcode,
      'QR': instance.qr,
      'ValidTo': instance.validTo,
      'Value': instance.value,
    };
