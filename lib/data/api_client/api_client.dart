import 'package:dio/dio.dart';
import 'package:test_ap1/data/models/add_transaction/add_transaction_dto.dart';
import 'package:test_ap1/data/models/register_fiscal_receipt/response/register_fiscal_receipt_response.dart';
import '../models/add_transaction/add_transaction_Response_dto.dart';
import '../models/card_info/card_info.dart';
import '../models/close_shift/close_shift.dart';
import '../models/fuel_points/fuel_points_dto_model.dart';
import '../models/open_shift/open_shift_Response_dto.dart';
import '../models/register_fiscal_receipt/register_fiscal_receipt.dart';
import '../models/replenishment_client_account/replenishment_client_account_body.dart';
import '../models/replenishment_client_account/replenishment_client_account_response.dart';
import '../models/shift/shift_model_dto.dart';

typedef CardInfoArgs = ({String stationId, String cardId});

class ApiClient {
   final Dio _dio = Dio();

  // static final ApiClient instance = ApiClient._();
  //
  //  ApiClient._();

  Future<FuelPointsDto> getFuelPoints() async {
    const String url =
        'http://172.18.20.102:6982/ISStationController/GetFuelPoints';
    return await _dio.get(url).then((value) => FuelPointsDto.fromJson(value.data));

  }

  Future<ShiftDto> getShift() async {
    const String url = 'http://172.18.20.102:6982/ISStationController/GetShift';
    return await _dio.get(url).then((value) => ShiftDto.fromJson(value.data));
  }

  Future<OpenShiftResponseDto> postOpenShift() async {
    const String url =
        'http://172.18.20.102:6982/ISStationController/OpenShift';
    return await _dio
        .post(url)
        .then((value) => OpenShiftResponseDto.fromJson(value.data));
  }

  Future<CloseShiftResponse> postCloseShift() async {
    const url = 'http://172.18.20.102:6982/ISStationController/CloseShift';
    return await _dio.post(url).then((value) => CloseShiftResponse.fromJson(value.data));
  }

  Future<CardInfo> getCardInfo(CardInfoArgs args) async {
    String url = 'http://172.18.20.102:6981/pec/json/GetCardInfo?StationID=${args.stationId}&CardID=${args.cardId}';
    return await _dio.get(url).then((value) => CardInfo.fromJson(value.data));
  }

  Future<AddTransactionResponseDto> postAddTransaction(
      AddTransactionDto addTransaction) async {
    const String url = 'http://172.18.20.102:6982/ISStationController/AddTransaction';
    return await _dio.post(url, data: addTransaction.toJson()).then((value) => AddTransactionResponseDto.fromJson(value.data));
  }

  Future<RegisterFiscalReceiptResponse> postRegisterFiscalReceipt(RegisterFiscalReceipt registerFiscalReceipt) async {
  const String url = 'http://10.10.10.52:8080/fpservice/json/RegisterFiscalReceipt';
    return await _dio.post(url, data: registerFiscalReceipt.toJson()).then((value) => RegisterFiscalReceiptResponse.fromJson(value.data));
  }

  Future<ReplenishmentClientAccountResponse> postReplenishmentClientAccount(ReplenishmentClientAccountBody replenishmentClientAccountBody) async {
    const url = 'http://172.18.20.102:6981/pec/json/ReplenishmentClientAccount';
    return await _dio.post(url, data: replenishmentClientAccountBody.toJson()).then((value) => ReplenishmentClientAccountResponse.fromJson(value.data));
  }

}
