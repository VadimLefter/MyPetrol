// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Numerar`
  String get cash {
    return Intl.message(
      'Numerar',
      name: 'cash',
      desc: '',
      args: [],
    );
  }

  /// `Limba`
  String get language {
    return Intl.message(
      'Limba',
      name: 'language',
      desc: '',
      args: [],
    );
  }

  /// `Despre Aplicație`
  String get infoApp {
    return Intl.message(
      'Despre Aplicație',
      name: 'infoApp',
      desc: '',
      args: [],
    );
  }

  /// `Test mode`
  String get testMode {
    return Intl.message(
      'Test mode',
      name: 'testMode',
      desc: '',
      args: [],
    );
  }

  /// `Înapoi`
  String get back {
    return Intl.message(
      'Înapoi',
      name: 'back',
      desc: '',
      args: [],
    );
  }

  /// `Home`
  String get home {
    return Intl.message(
      'Home',
      name: 'home',
      desc: '',
      args: [],
    );
  }

  /// `Verificare`
  String get verification {
    return Intl.message(
      'Verificare',
      name: 'verification',
      desc: '',
      args: [],
    );
  }

  /// `Suplinire card`
  String get cardRefill {
    return Intl.message(
      'Suplinire card',
      name: 'cardRefill',
      desc: '',
      args: [],
    );
  }

  /// `Setări`
  String get setting {
    return Intl.message(
      'Setări',
      name: 'setting',
      desc: '',
      args: [],
    );
  }

  /// `Suplinire`
  String get substitutions {
    return Intl.message(
      'Suplinire',
      name: 'substitutions',
      desc: '',
      args: [],
    );
  }

  /// `Card`
  String get card {
    return Intl.message(
      'Card',
      name: 'card',
      desc: '',
      args: [],
    );
  }

  /// `Scanează`
  String get scan {
    return Intl.message(
      'Scanează',
      name: 'scan',
      desc: '',
      args: [],
    );
  }

  /// `Prezentare card`
  String get cardPresentation {
    return Intl.message(
      'Prezentare card',
      name: 'cardPresentation',
      desc: '',
      args: [],
    );
  }

  /// `Vă rugăm să atașați cardul de combustibil!`
  String get pleaseAttachCard {
    return Intl.message(
      'Vă rugăm să atașați cardul de combustibil!',
      name: 'pleaseAttachCard',
      desc: '',
      args: [],
    );
  }

  /// `Scanează QR`
  String get scanQr {
    return Intl.message(
      'Scanează QR',
      name: 'scanQr',
      desc: '',
      args: [],
    );
  }

  /// `Scanează QR Cod-ul pentru a finaliza verificarea!`
  String get scanQrForFinish {
    return Intl.message(
      'Scanează QR Cod-ul pentru a finaliza verificarea!',
      name: 'scanQrForFinish',
      desc: '',
      args: [],
    );
  }

  /// `Cod`
  String get cod {
    return Intl.message(
      'Cod',
      name: 'cod',
      desc: '',
      args: [],
    );
  }

  /// `Denumire card`
  String get nameCard {
    return Intl.message(
      'Denumire card',
      name: 'nameCard',
      desc: '',
      args: [],
    );
  }

  /// `Total suma:`
  String get allSum {
    return Intl.message(
      'Total suma:',
      name: 'allSum',
      desc: '',
      args: [],
    );
  }

  /// `Total spre plată:`
  String get totalToPay {
    return Intl.message(
      'Total spre plată:',
      name: 'totalToPay',
      desc: '',
      args: [],
    );
  }

  /// `Rest:`
  String get rest {
    return Intl.message(
      'Rest:',
      name: 'rest',
      desc: '',
      args: [],
    );
  }

  /// `Renunță`
  String get quit {
    return Intl.message(
      'Renunță',
      name: 'quit',
      desc: '',
      args: [],
    );
  }

  /// `Alimentare`
  String get food {
    return Intl.message(
      'Alimentare',
      name: 'food',
      desc: '',
      args: [],
    );
  }

  /// `Suplinire`
  String get feeding {
    return Intl.message(
      'Suplinire',
      name: 'feeding',
      desc: '',
      args: [],
    );
  }

  /// `Suma suplinirii`
  String get sumFeeding {
    return Intl.message(
      'Suma suplinirii',
      name: 'sumFeeding',
      desc: '',
      args: [],
    );
  }

  /// `Prezentare card`
  String get presentationCard {
    return Intl.message(
      'Prezentare card',
      name: 'presentationCard',
      desc: '',
      args: [],
    );
  }

  /// `Vă rugăm să atașați cardul de combustibil!`
  String get pleaseYouCardFuel {
    return Intl.message(
      'Vă rugăm să atașați cardul de combustibil!',
      name: 'pleaseYouCardFuel',
      desc: '',
      args: [],
    );
  }

  /// `Produs`
  String get product {
    return Intl.message(
      'Produs',
      name: 'product',
      desc: '',
      args: [],
    );
  }

  /// `Cantitate`
  String get quantity {
    return Intl.message(
      'Cantitate',
      name: 'quantity',
      desc: '',
      args: [],
    );
  }

  /// `Preț`
  String get price {
    return Intl.message(
      'Preț',
      name: 'price',
      desc: '',
      args: [],
    );
  }

  /// `Total:`
  String get total {
    return Intl.message(
      'Total:',
      name: 'total',
      desc: '',
      args: [],
    );
  }

  /// `LEI`
  String get lei {
    return Intl.message(
      'LEI',
      name: 'lei',
      desc: '',
      args: [],
    );
  }

  /// `LITRI`
  String get litres {
    return Intl.message(
      'LITRI',
      name: 'litres',
      desc: '',
      args: [],
    );
  }

  /// `Неизвестная ошибка попробуйте еще раз`
  String get defaultErrorApiRegisterFiscalReceipt {
    return Intl.message(
      'Неизвестная ошибка попробуйте еще раз',
      name: 'defaultErrorApiRegisterFiscalReceipt',
      desc: '',
      args: [],
    );
  }

  /// `Срок ключа активации истек`
  String get error180ApiRegisterFiscalReceipt {
    return Intl.message(
      'Срок ключа активации истек',
      name: 'error180ApiRegisterFiscalReceipt',
      desc: '',
      args: [],
    );
  }

  /// `Сдача не может быть рассчитана`
  String get error42ApiRegisterFiscalReceipt {
    return Intl.message(
      'Сдача не может быть рассчитана',
      name: 'error42ApiRegisterFiscalReceipt',
      desc: '',
      args: [],
    );
  }

  /// `Сумма оплат меньше суммы товаров в чеке`
  String get error41ApiRegisterFiscalReceipt {
    return Intl.message(
      'Сумма оплат меньше суммы товаров в чеке',
      name: 'error41ApiRegisterFiscalReceipt',
      desc: '',
      args: [],
    );
  }

  /// `Для выполнения операции недостаточно наличных в денежном ящике`
  String get error40ApiRegisterFiscalReceipt {
    return Intl.message(
      'Для выполнения операции недостаточно наличных в денежном ящике',
      name: 'error40ApiRegisterFiscalReceipt',
      desc: '',
      args: [],
    );
  }

  /// `Сервис не настроен или неверно настроен`
  String get error5ApiRegisterFiscalReceipt {
    return Intl.message(
      'Сервис не настроен или неверно настроен',
      name: 'error5ApiRegisterFiscalReceipt',
      desc: '',
      args: [],
    );
  }

  /// `Цифровая подпись сервиса недействительна`
  String get error4ApiRegisterFiscalReceipt {
    return Intl.message(
      'Цифровая подпись сервиса недействительна',
      name: 'error4ApiRegisterFiscalReceipt',
      desc: '',
      args: [],
    );
  }

  /// `База данных сервиса повреждена`
  String get error3ApiRegisterFiscalReceipt {
    return Intl.message(
      'База данных сервиса повреждена',
      name: 'error3ApiRegisterFiscalReceipt',
      desc: '',
      args: [],
    );
  }

  /// `База данных сервиса недоступна`
  String get error2ApiRegisterFiscalReceipt {
    return Intl.message(
      'База данных сервиса недоступна',
      name: 'error2ApiRegisterFiscalReceipt',
      desc: '',
      args: [],
    );
  }

  /// `Неизвестная внутренняя ошибка сервиса`
  String get error1ApiRegisterFiscalReceipt {
    return Intl.message(
      'Неизвестная внутренняя ошибка сервиса',
      name: 'error1ApiRegisterFiscalReceipt',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ro'),
      Locale.fromSubtags(languageCode: 'ru'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
