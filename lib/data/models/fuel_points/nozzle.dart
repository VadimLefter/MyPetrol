import 'package:json_annotation/json_annotation.dart';

part 'nozzle.g.dart';

@JsonSerializable()
class Nozzle {
  final int id;
  final int fuelPointId;
  final int productCode;
  final String? productName;
  final double productPrice;
  final double dispensedAmount;
  final double dispensedVolume;

  Nozzle({
    required this.id,
    required this.fuelPointId,
    required this.productCode,
    required this.productName,
    required this.productPrice,
    required this.dispensedAmount,
    required this.dispensedVolume,
  });

  factory Nozzle.fromJson(Map<String, dynamic> json) => _$NozzleFromJson(json);

  Map<String, dynamic> toJson() => _$NozzleToJson(this);
}
