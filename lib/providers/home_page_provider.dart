import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../data/models/fuel_points/nozzle.dart';
import 'api_providers.dart';

class HomePageProvider {
  static final HomePageProvider instance = HomePageProvider._();

  List<Nozzle> nozzles = [];
  int nozzleId = 0;

  HomePageProvider._();

  Future<void> loadNozzles(WidgetRef ref, int index) async {
    final fuelPoints = await ref.read(fuelPointProvider.future);
    nozzles = fuelPoints.fuelPoints?[index].nozzles ?? [];
    nozzleId = fuelPoints.fuelPoints?[index].id ?? 0;
  }
}
