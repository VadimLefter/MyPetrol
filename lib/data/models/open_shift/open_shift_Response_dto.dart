import 'package:json_annotation/json_annotation.dart';

part 'open_shift_Response_dto.g.dart';

@JsonSerializable()
class OpenShiftResponseDto {
  final int errorCode;
  final String? errorMessage;

  OpenShiftResponseDto({
    required this.errorCode,
    required this.errorMessage,
  });

  factory OpenShiftResponseDto.fromJson(Map<String, dynamic> json) =>
      _$OpenShiftResponseDtoFromJson(json);

  Map<String, dynamic> toJson() => _$OpenShiftResponseDtoToJson(this);
}
