import 'package:json_annotation/json_annotation.dart';

part 'add_transaction_dto.g.dart';

@JsonSerializable()
class AddTransactionDto {
  final int fuelPointId;
  final int nozzleId;
  final double dispensedPrice;
  final double? dispensedVolume;
  final double? dispensedAmount;
  final String cardBarcode;
  final int paymentTypeId;

  AddTransactionDto({
    required this.fuelPointId,
    required this.nozzleId,
    required this.dispensedPrice,
    required this.dispensedVolume,
    required this.dispensedAmount,
    required this.cardBarcode,
    required this.paymentTypeId,
  });

  factory AddTransactionDto.fromJson(Map<String, dynamic> json) =>
      _$AddTransactionDtoFromJson(json);

  Map<String, dynamic> toJson() => _$AddTransactionDtoToJson(this);
}
