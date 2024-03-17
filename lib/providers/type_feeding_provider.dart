import 'package:flutter/material.dart';
import 'package:test_ap1/providers/home_page_provider.dart';

import '../data/models/fuel/fuel.dart';


class TypeFeedingProvider extends ChangeNotifier {
  static final TypeFeedingProvider instance = TypeFeedingProvider._();

  List<Fuel> _fuels = [];
  int _currentIndex = 0;

  int get currentIndex => _currentIndex;

  List<Fuel> get fuels => _fuels;


  TypeFeedingProvider._();

  void loadFuels() {
    _fuels = HomePageProvider.instance.nozzles.map((e) {
          return Fuel(
            id: e.id,
            productPrice: e.productPrice,
            productName: e.productName,
            fuelPointId: e.fuelPointId,
            productCode: e.productCode);
        }).toList();
    _fuels = _fuels.toSet().toList();
  }

  void updateCurrentIndex(int index) {
    _currentIndex = index;
    notifyListeners();
  }

}
