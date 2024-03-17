import 'package:json_annotation/json_annotation.dart';

part'accured_certificat.g.dart';

@JsonSerializable()
class AccuredCertificate {

  @JsonKey(name: 'AdvertMessage')
  final String? advertMessage;

  @JsonKey(name: 'Barcode')
  final String? barcode;

  @JsonKey(name: 'QR')
  final String? qr;

  @JsonKey(name: 'ValidTo')
  final String? validTo;

  @JsonKey(name: 'Value')
  final String? value;

  AccuredCertificate({
    required this.advertMessage,
    required this.barcode,
    required this.qr,
    required this.validTo,
    required this.value,
  });

  factory AccuredCertificate.fromJson(Map<String, dynamic> json) =>
      _$AccuredCertificateFromJson(json);

  Map<String, dynamic> toJson() => _$AccuredCertificateToJson(this);


}
