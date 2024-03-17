// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Transaction _$TransactionFromJson(Map<String, dynamic> json) => Transaction(
      id: json['id'] as int,
      transactionNumber: json['transactionNumber'] as int,
      shiftId: json['shiftId'] as int,
      createDate: json['createDate'] as String,
      fuelPointId: json['fuelPointId'] as int,
      nozzleId: json['nozzleId'] as int,
      productCode: json['productCode'] as int,
      productPrice: (json['productPrice'] as num).toDouble(),
      productName: json['productName'] as String?,
      productVATCode: json['productVATCode'] as String?,
      dispensedPrice: (json['dispensedPrice'] as num).toDouble(),
      dispensedVolume: (json['dispensedVolume'] as num).toDouble(),
      dispensedAmount: (json['dispensedAmount'] as num).toDouble(),
      grossAmount: (json['grossAmount'] as num).toDouble(),
      discount: (json['discount'] as num).toDouble(),
      cardBarcode: json['cardBarcode'] as String?,
      authorizedAmount: (json['authorizedAmount'] as num).toDouble(),
      authorizedVolume: (json['authorizedVolume'] as num).toDouble(),
      paymentType: json['paymentType'] as int,
      state: json['state'] as int,
      orderMode: json['orderMode'] as int,
      syncState: json['syncState'] as int,
      fiscalReceiptPrintingErrorId: json['fiscalReceiptPrintingErrorId'] as int,
      syncErrorId: json['syncErrorId'] as int,
    );

Map<String, dynamic> _$TransactionToJson(Transaction instance) =>
    <String, dynamic>{
      'id': instance.id,
      'transactionNumber': instance.transactionNumber,
      'shiftId': instance.shiftId,
      'createDate': instance.createDate,
      'fuelPointId': instance.fuelPointId,
      'nozzleId': instance.nozzleId,
      'productCode': instance.productCode,
      'productPrice': instance.productPrice,
      'productName': instance.productName,
      'productVATCode': instance.productVATCode,
      'dispensedPrice': instance.dispensedPrice,
      'dispensedVolume': instance.dispensedVolume,
      'dispensedAmount': instance.dispensedAmount,
      'grossAmount': instance.grossAmount,
      'discount': instance.discount,
      'cardBarcode': instance.cardBarcode,
      'authorizedAmount': instance.authorizedAmount,
      'authorizedVolume': instance.authorizedVolume,
      'paymentType': instance.paymentType,
      'state': instance.state,
      'orderMode': instance.orderMode,
      'syncState': instance.syncState,
      'fiscalReceiptPrintingErrorId': instance.fiscalReceiptPrintingErrorId,
      'syncErrorId': instance.syncErrorId,
    };
