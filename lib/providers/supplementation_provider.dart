import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:test_ap1/data/models/replenishment_client_account/replenishment_client_account_body.dart';
import '../data/models/register_fiscal_receipt/line.dart';
import '../data/models/register_fiscal_receipt/pay.dart';
import '../data/models/register_fiscal_receipt/register_fiscal_receipt.dart';
import '../generated/l10n.dart';
import '../ui/pages/error_api_page.dart';
import '../ui/pages/feeding_page/payment_selection.dart';
import '../ui/pages/main_page.dart';
import 'api_providers.dart';
import 'app_providers.dart';

class SupplementationProvider with ChangeNotifier {

  static final SupplementationProvider instance = SupplementationProvider._();

  int _payType = 1;
  double _price = 0;
  int _billNumber = 0;

  SupplementationProvider._();

  double get price => _price;
  int get payType => _payType;
  int get billNumber => _billNumber;

  int getPayType(int code) {
    _payType = code;
    notifyListeners();
    return _payType;
  }

  Future<void> _loadBillNumber() async {
    final sharedPreferences = await SharedPreferences.getInstance();
    _billNumber = sharedPreferences.getInt('billNumber') ?? 0;
  }

  Future<int> _incrementAndSaveBillNumber() async {
    _billNumber++;
    final sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.setInt('billNumber', _billNumber);
    return _billNumber;
  }

  void supplementationBalance(WidgetRef ref) async {
    await _loadBillNumber();
    final currentShift = await ref.read(shiftProvider.future);
    final shiftId = currentShift.id;
    var billNumber = await _incrementAndSaveBillNumber();

    final replenishmentClientAccount = ReplenishmentClientAccountBody(
      billDate: DateTime.now().toString(),
      billNumber: billNumber,
      clientCardCode: ref.read(feedingAndVerificationPageProvider).cardBarcodeClassic,
      officeCode: '',
      paymentCode: _payType,
      rnr: 0,
      shiftId: '$shiftId',
      shiftNumber: 1,
      sum: _price);

    final replenishmentClientAccountResponse = await ref.read(replenishmentClientAccountProvider(replenishmentClientAccount).future);
    print(replenishmentClientAccountResponse.errorCode);
  }

  void makeRegisterFiscalReceipt(WidgetRef ref, BuildContext context) async {
    final registerFiscalReceipt = RegisterFiscalReceipt(
      footerText: 'Thank you!',
      headerText: 'Operator 1',
      forcePrint: true,
      lines: [
        Line(
          discount: 0,
          name: 'Dinozauri X1001',
          price: _price,
          quantity: 1,
          unitCode: 3,
          unitName: '',
          vat: 'A',
        )
      ],
      clientEmail: 'noreply@mail.com',
      number: '1',
      payments: [
        Pay(
          amount: _price,
          code: _payType.toString(),
        )
      ],
    );

    final registerFiscalReceiptResponse = await ref.read(registerFiscalReceiptProvider(registerFiscalReceipt).future);
    final String errorCode = registerFiscalReceiptResponse.errorCode;

    if (errorCode != '0') {
      _apiErrorHandling(context, errorCode);
    } else {
       ref.read(currentIndexNavBarProvider.notifier).state = 0;
       Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) => MainPage()), (route) => false);
      supplementationBalance(ref);
    }
  }

  void onTapOk(WidgetRef ref, BuildContext context) async {

    final valueStringKeyboard = ref.watch(valueKeyboardSupplementationProvider);
    _price = valueStringKeyboard.isNotEmpty ? double.parse(valueStringKeyboard) : 0.0;
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => const PaymentSelection()));

  }

  void _apiErrorHandling(BuildContext context, String errorCode) {
    String message = '';

    switch (errorCode) {
      case '1':
        message = S
            .of(context)
            .error1ApiRegisterFiscalReceipt;
        break;
      case '2':
        message = S
            .of(context)
            .error2ApiRegisterFiscalReceipt;
        break;
      case '3':
        message = S
            .of(context)
            .error3ApiRegisterFiscalReceipt;
        break;
      case '4':
        message = S
            .of(context)
            .error4ApiRegisterFiscalReceipt;
        break;
      case '5':
        message = S
            .of(context)
            .error5ApiRegisterFiscalReceipt;
        break;
      case '40':
        message = S
            .of(context)
            .error40ApiRegisterFiscalReceipt;
        break;
      case '41':
        message = S
            .of(context)
            .error41ApiRegisterFiscalReceipt;
        break;
      case '42':
        message = S
            .of(context)
            .error42ApiRegisterFiscalReceipt;
        break;
      case '180':
        message = S
            .of(context)
            .error180ApiRegisterFiscalReceipt;
      default:
        message = S
            .of(context)
            .defaultErrorApiRegisterFiscalReceipt;
        break;
    }

    Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => ErrorApiPage(message: message)));
  }
}