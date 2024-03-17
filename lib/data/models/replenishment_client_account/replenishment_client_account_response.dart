import 'package:json_annotation/json_annotation.dart';

part 'replenishment_client_account_response.g.dart';

@JsonSerializable()
class ReplenishmentClientAccountResponse {

  @JsonKey(name: 'ErrorCode')
  final int errorCode;

  @JsonKey(name: 'ErrorMessage')
  final String? errorMessage;

  @JsonKey(name: 'BillUid')
  final String billUid;

  @JsonKey(name: 'TaskId')
  final int taskId;

  ReplenishmentClientAccountResponse({
    required this.errorCode,
    required this.errorMessage,
    required this.billUid,
    required this.taskId,
  });

  factory ReplenishmentClientAccountResponse.fromJson(Map<String, dynamic> json) =>
      _$ReplenishmentClientAccountResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ReplenishmentClientAccountResponseToJson(this);
}
