import 'package:json_annotation/json_annotation.dart';

part 'close_shift.g.dart';

@JsonSerializable()
class CloseShiftResponse{
  final int errorCode;
  final String? errorMessage;

  CloseShiftResponse({required this.errorCode, required this.errorMessage});

  factory CloseShiftResponse.fromJson(Map<String, dynamic> json) =>
      _$CloseShiftResponseFromJson(json);

  Map<String, dynamic> toJson() => _$CloseShiftResponseToJson(this);
}