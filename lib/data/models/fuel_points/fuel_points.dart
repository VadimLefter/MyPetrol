import 'package:json_annotation/json_annotation.dart';
import 'package:test_ap1/data/models/fuel_points/transaction.dart';
import 'nozzle.dart';

part 'fuel_points.g.dart';

@JsonSerializable()
class FuelPoint {
  final int id;
  final Nozzle? activeNozzle;
  final List<Nozzle>? nozzles;
  final int state;
  final Transaction? currentTransaction;

  FuelPoint({
    required this.id,
    required this.activeNozzle,
    required this.nozzles,
    required this.state,
    required this.currentTransaction,
  });

  factory FuelPoint.fromJson(Map<String, dynamic> json) =>
      _$FuelPointFromJson(json);

  Map<String, dynamic> toJson() => _$FuelPointToJson(this);
}
