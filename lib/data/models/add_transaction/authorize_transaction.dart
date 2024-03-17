import 'package:json_annotation/json_annotation.dart';

part 'authorize_transaction.g.dart';

@JsonSerializable()
class AuthorizeTransaction {
  final int fuelPointId;
  final int nozzleId;
  final double price;
  final double amount;
  final int authorizeType;
  final String cardBarcode;
  final int paymentTypeId;

  AuthorizeTransaction({
    required this.fuelPointId,
    required this.nozzleId,
    required this.price,
    required this.amount,
    required this.authorizeType,
    required this.cardBarcode,
    required this.paymentTypeId,
  });

  factory AuthorizeTransaction.fromJson(Map<String, dynamic> json) =>
      _$AuthorizeTransactionFromJson(json);

  Map<String, dynamic> toJson() => _$AuthorizeTransactionToJson(this);
}
