import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:test_ap1/providers/feeding_transaction_provider.dart';
import 'package:test_ap1/providers/supplementation_provider.dart';
import 'package:test_ap1/providers/feeding_and_verification_page_provider.dart';
import 'package:test_ap1/providers/type_feeding_provider.dart';
import 'home_page_provider.dart';
import 'language_provider.dart';


final homePageProvider = StateProvider<HomePageProvider>((ref) => HomePageProvider.instance);

final typeFeedingProvider = ChangeNotifierProvider<TypeFeedingProvider>((ref) => TypeFeedingProvider.instance);

final languageProvider = ChangeNotifierProvider<LanguageProvider>((ref) => LanguageProvider.instance);

final feedingTransactionProvider = ChangeNotifierProvider<FeedingTransactionProvider>((ref) => FeedingTransactionProvider.instance);

final feedingAndVerificationPageProvider = ChangeNotifierProvider<FeedingAndVerificationPageProvider>((ref) => FeedingAndVerificationPageProvider.instance);

final supplementationProvider = ChangeNotifierProvider<SupplementationProvider>((ref) => SupplementationProvider.instance);

final currentIndexNavBarProvider = StateProvider<int>((ref) => 0);

final valueKeyboardFeedingProvider = StateProvider<String>((ref) => '');

final valueKeyboardHomeDetailsProvider = StateProvider<String>((ref) => '');

final valueKeyboardSupplementationProvider = StateProvider<String>((ref) => '');

//final activationLicencesProvider = StateProvider<String>((ref) => '');

final nameCardProvider = StateProvider<String>((ref) => '');



