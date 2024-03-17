import 'package:json_annotation/json_annotation.dart';

part 'shift_model_dto.g.dart';

@JsonSerializable()
class ShiftDto {
  final int errorCode;
  final String? errorMessage;
  final int state;
  final int id;
  final String createDate;

  ShiftDto({
    required this.errorCode,
    required this.errorMessage,
    required this.state,
    required this.id,
    required this.createDate,
  });

  factory ShiftDto.fromJson(Map<String, dynamic> json) =>
      _$ShiftDtoFromJson(json);

  Map<String, dynamic> toJson() => _$ShiftDtoToJson(this);
}
