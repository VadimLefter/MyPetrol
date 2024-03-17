import 'package:json_annotation/json_annotation.dart';

part 'transaction.g.dart';

@JsonSerializable()
class Transaction {
  final int id;
  final int transactionNumber;
  final int shiftId;
  final String createDate;
  final int fuelPointId;
  final int nozzleId;
  final int productCode;
  final double productPrice;
  final String? productName;
  final String? productVATCode;
  final double dispensedPrice;
  final double dispensedVolume;
  final double dispensedAmount;
  final double grossAmount;
  final double discount;
  final String? cardBarcode;
  final double authorizedAmount;
  final double authorizedVolume;
  final int paymentType;
  final int state;
  final int orderMode;
  final int syncState;
  final int fiscalReceiptPrintingErrorId;
  final int syncErrorId;

  Transaction({
    required this.id,
    required this.transactionNumber,
    required this.shiftId,
    required this.createDate,
    required this.fuelPointId,
    required this.nozzleId,
    required this.productCode,
    required this.productPrice,
    required this.productName,
    required this.productVATCode,
    required this.dispensedPrice,
    required this.dispensedVolume,
    required this.dispensedAmount,
    required this.grossAmount,
    required this.discount,
    required this.cardBarcode,
    required this.authorizedAmount,
    required this.authorizedVolume,
    required this.paymentType,
    required this.state,
    required this.orderMode,
    required this.syncState,
    required this.fiscalReceiptPrintingErrorId,
    required this.syncErrorId,
  });

  factory Transaction.fromJson(Map<String, dynamic> json) =>
      _$TransactionFromJson(json);

  Map<String, dynamic> toJson() => _$TransactionToJson(this);
}
