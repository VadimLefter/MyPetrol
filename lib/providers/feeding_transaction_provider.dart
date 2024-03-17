import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:test_ap1/providers/app_providers.dart';
import '../data/models/add_transaction/add_transaction_dto.dart';
import '../data/models/fuel/fuel.dart';
import '../ui/pages/error_api_page.dart';
import '../ui/pages/main_page.dart';
import 'api_providers.dart';

class FeedingTransactionProvider with ChangeNotifier {

  static final FeedingTransactionProvider instance = FeedingTransactionProvider._();

  double? _productPrice;
  double? _productQuantity;
  String? _feedingType = 'lei';
  bool _showProgressIndicator = false;

  FeedingTransactionProvider._();

  double? get productPrice => _productPrice;

  double? get productQuantity => _productQuantity;

  String? get feedingType => _feedingType;

  bool get showProgressIndicator => _showProgressIndicator;

  String? getFeedingType(String type) {
    _feedingType = type;
    notifyListeners();
    return _feedingType;
  }

  double? getProductPrice(double price, WidgetRef ref) {
    final valueStringKeyboard = ref.read(valueKeyboardFeedingProvider);
    final double valueKeyboard = valueStringKeyboard.isNotEmpty ? double.parse(valueStringKeyboard) : 0.0;

    switch (_feedingType) {
      case 'litri':
        _productPrice = valueKeyboard * price;
      case 'lei':
        _productPrice = valueKeyboard;
    }
    return _productPrice;
  }

  double? getProductQuantity(double price, WidgetRef ref) {
    final valueStringKeyboard = ref.read(valueKeyboardFeedingProvider);
    final double valueKeyboard = valueStringKeyboard.isNotEmpty ? double.parse(valueStringKeyboard) : 0.0;

    switch (_feedingType) {
      case 'litri':
        _productQuantity = valueKeyboard;
      case 'lei':
        _productQuantity = valueKeyboard / price;
    }
    return double.parse(_productQuantity!.toStringAsFixed(2));
  }

  Future<void> checkCurrentShiftState(int currentShiftState, WidgetRef ref) async {
    switch(currentShiftState) {
      case 0:
        break;
      case 1:
        await ref.read(closeShiftResponseProvider.future);
        await ref.read(openShiftResponseProvider.future);
        break;
      case 4:
        await ref.read(openShiftResponseProvider.future);
        break;
      case 5:
        await ref.read(openShiftResponseProvider.future);
        break;
    }
  }

  void _apiErrorHandling(NavigatorState navigator, int errorCode) {
    String message = '';

    switch (errorCode) {
      case 1:
        message = 'Неизвестная внутренняя ошибка';
        break;
      case 2:
        message = 'Команда отклонена оборудованием)';
        break;
      case 3:
        message = 'Заправочнкая колонка с указанным идентификатором не зарегистрирована';
        break;
      case 4:
        message = 'Заправочный пистолет с указанным идентификатором не зарегистирован';
        break;
      case 5:
        message = 'Для заправочного пистолета с указанным идентификатором не указан тип топлива или цена продажи';
        break;
      case 6:
        message = 'Рабочая смена не открыта';
        break;
      case 7:
        message = 'Рабочая смена не действительна';
        break;
      case 8:
        message = 'Заправочная колонка с указанным идентификатором обрабатывает другую транзакцию';
        break;
      case 9:
        message = 'Необходимо закрыть рабочую смену с печатью Z-отчета';
        break;
      default:
        message = 'Неизвестная ошибка';
        break;
    }

    navigator.push(MaterialPageRoute(builder: (context) => ErrorApiPage(message: message)));
  }

  void makeTransaction(Fuel fuel, WidgetRef ref, NavigatorState navigator) async {
    _showProgressIndicator = true;

   final currentShift = await ref.read(shiftProvider.future);
   await checkCurrentShiftState(currentShift.state, ref);

    final addTransaction = AddTransactionDto(
      fuelPointId: fuel.fuelPointId,
      nozzleId: fuel.id,
      dispensedPrice: fuel.productPrice,
      dispensedVolume: getProductQuantity(fuel.productPrice, ref),
      dispensedAmount: getProductPrice(fuel.productPrice, ref),
      cardBarcode: ref.read(feedingAndVerificationPageProvider).cardBarcodeClassic,
      paymentTypeId: 1,
    );

   final addTransactionResponse = await ref.read(addTransactionResponseProvider(addTransaction).future);

   if(addTransactionResponse.errorCode == 0) {
     navigator.push(MaterialPageRoute(builder: (context) => MainPage()));
   } else {
     _apiErrorHandling(navigator, addTransactionResponse.errorCode);
   }
    _showProgressIndicator = false;
    ref.read(valueKeyboardFeedingProvider.notifier).state = '';
  }

}
