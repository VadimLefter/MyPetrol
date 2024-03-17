import 'dart:convert';
import 'dart:typed_data';
import 'package:crypto/crypto.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nfc_manager/nfc_manager.dart';
import 'package:nfc_manager/platform_tags.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';
import 'app_providers.dart';

class FeedingAndVerificationPageProvider with ChangeNotifier{

   String _activeButton = 'card';
   String _cardBarcodeClassic = '';

  static final FeedingAndVerificationPageProvider instance = FeedingAndVerificationPageProvider._();

  FeedingAndVerificationPageProvider._();

  String get activeButton => _activeButton;
  String get cardBarcodeClassic => _cardBarcodeClassic;

  void onTapButtonCard() {
    _activeButton = 'card';
    notifyListeners();
  }

   void onTapButtonScan() {
     _activeButton = 'scan';
     notifyListeners();
   }

   Future<String?> getCardBarcodeClassic(NfcTag tag) async {

     String sb = '';
     String cardCode = '';
     var mifareTag = MifareClassic.from(tag);
     if (mifareTag == null) {
       debugPrint("Not a MifareClassic tag");
       return null;
     }
     var authResult = await mifareTag.authenticateSectorWithKeyA(sectorIndex: 0, key: Uint8List.fromList([0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF]));
     if (authResult) {
       final data = await mifareTag.readBlock(blockIndex: 0);

       for (var page in data) {
         int b = page & (0xFF);
         if (b < 0x10) sb = sb;
         sb = sb + b.toString();
       }

       var bytes = utf8.encode(sb);
       var digest = md5.convert(bytes);

       cardCode = digest.toString();
     }
     print(cardCode);
     return cardCode;
   }

   Future<void> initNFC( WidgetRef ref, NavigatorState navigator, Widget widget) async {
    print('s-a apelat');
     try {
       await NfcManager.instance.startSession(onDiscovered: (NfcTag tag) async {

         _cardBarcodeClassic = await getCardBarcodeClassic(tag) ?? '';
           ref.read(currentIndexNavBarProvider.notifier).state = 0;
         navigator.push(MaterialPageRoute(builder: (context) => widget));

         });
     } catch (e) {
       print('Error NFC: $e');
     }
   }


   void onQRViewCreated(QRViewController controller) {
       controller;
       notifyListeners();

     controller.scannedDataStream.listen((scanData) {
       notifyListeners();
         //action
     });
   }
}