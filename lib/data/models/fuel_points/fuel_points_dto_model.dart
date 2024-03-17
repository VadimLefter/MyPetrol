import 'package:json_annotation/json_annotation.dart';
import 'fuel_points.dart';

part 'fuel_points_dto_model.g.dart';

@JsonSerializable()
class FuelPointsDto {
  final int errorCode;
  final String? errorMessage;
  final List<FuelPoint>? fuelPoints;

  FuelPointsDto({
    required this.errorCode,
    required this.errorMessage,
    required this.fuelPoints,
  });

  factory FuelPointsDto.fromJson(Map<String, dynamic> json) => _$FuelPointsDtoFromJson(json);

  Map<String, dynamic> toJson() => _$FuelPointsDtoToJson(this);
}
