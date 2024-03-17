import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:test_ap1/data/models/add_transaction/add_transaction_Response_dto.dart';
import 'package:test_ap1/data/models/add_transaction/add_transaction_dto.dart';
import 'package:test_ap1/data/models/card_info/card_info.dart';
import 'package:test_ap1/data/models/close_shift/close_shift.dart';
import 'package:test_ap1/data/models/fuel_points/fuel_points_dto_model.dart';
import 'package:test_ap1/data/models/open_shift/open_shift_Response_dto.dart';
import 'package:test_ap1/data/models/register_fiscal_receipt/response/register_fiscal_receipt_response.dart';
import 'package:test_ap1/data/models/replenishment_client_account/replenishment_client_account_response.dart';
import '../data/api_client/api_client.dart';
import '../data/models/register_fiscal_receipt/register_fiscal_receipt.dart';
import '../data/models/replenishment_client_account/replenishment_client_account_body.dart';
import '../data/models/shift/shift_model_dto.dart';

final apiClientProvider = Provider((ref) => ApiClient());

final fuelPointProvider = FutureProvider.autoDispose<FuelPointsDto>((ref) {
  final apiClient = ref.watch(apiClientProvider);
  return apiClient.getFuelPoints();
});

final shiftProvider = FutureProvider.autoDispose<ShiftDto>((ref) {
  final apiClient = ref.watch(apiClientProvider);
  return apiClient.getShift();
});

final openShiftResponseProvider = FutureProvider.autoDispose<OpenShiftResponseDto>((ref) {
  final apiClient = ref.watch(apiClientProvider);
  return apiClient.postOpenShift();
});

final closeShiftResponseProvider = FutureProvider.autoDispose<CloseShiftResponse>((ref) {
  final apiClient = ref.watch(apiClientProvider);
  return apiClient.postCloseShift();
});

final addTransactionResponseProvider = FutureProvider.family.autoDispose<AddTransactionResponseDto, AddTransactionDto>((ref, addTransaction) {
  final apiClient = ref.watch(apiClientProvider);
  return apiClient.postAddTransaction(addTransaction);
});

final cardInfoProvider = FutureProvider.family.autoDispose<CardInfo, CardInfoArgs>((ref, args) {
  final apiClient = ref.watch(apiClientProvider);
  return apiClient.getCardInfo(args);
});

final registerFiscalReceiptProvider = FutureProvider.family.autoDispose<RegisterFiscalReceiptResponse, RegisterFiscalReceipt>((ref, registerFiscalReceipt) {
  final apiClient = ref.watch(apiClientProvider);
  return apiClient.postRegisterFiscalReceipt(registerFiscalReceipt);
});

final replenishmentClientAccountProvider = FutureProvider.family.autoDispose<ReplenishmentClientAccountResponse, ReplenishmentClientAccountBody>((ref, replenishmentClientAccountBody) {
  final apiClient = ref.watch(apiClientProvider);
  return apiClient.postReplenishmentClientAccount(replenishmentClientAccountBody);
});

