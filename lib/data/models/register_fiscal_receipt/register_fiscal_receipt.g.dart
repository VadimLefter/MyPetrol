// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_fiscal_receipt.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RegisterFiscalReceipt _$RegisterFiscalReceiptFromJson(
        Map<String, dynamic> json) =>
    RegisterFiscalReceipt(
      footerText: json['FooterText'] as String,
      headerText: json['HeaderText'] as String,
      forcePrint: json['ForcePrint'] as bool,
      lines: (json['Lines'] as List<dynamic>)
          .map((e) => Line.fromJson(e as Map<String, dynamic>))
          .toList(),
      clientEmail: json['ClientEmail'] as String,
      number: json['Number'] as String,
      payments: (json['Payments'] as List<dynamic>)
          .map((e) => Pay.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$RegisterFiscalReceiptToJson(
        RegisterFiscalReceipt instance) =>
    <String, dynamic>{
      'FooterText': instance.footerText,
      'HeaderText': instance.headerText,
      'ForcePrint': instance.forcePrint,
      'Lines': instance.lines,
      'ClientEmail': instance.clientEmail,
      'Number': instance.number,
      'Payments': instance.payments,
    };
