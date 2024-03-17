import 'package:json_annotation/json_annotation.dart';

part 'add_transaction_Response_dto.g.dart';

@JsonSerializable()
class AddTransactionResponseDto {
  final int errorCode;
  final String? errorMessage;
  final int transactionId;

  AddTransactionResponseDto({
    required this.errorCode,
    required this.errorMessage,
    required this.transactionId,
  });

  factory AddTransactionResponseDto.fromJson(Map<String, dynamic> json) =>
      _$AddTransactionResponseDtoFromJson(json);

  Map<String, dynamic> toJson() => _$AddTransactionResponseDtoToJson(this);
}
