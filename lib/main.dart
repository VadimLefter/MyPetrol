import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_ap1/providers/app_providers.dart';
import 'package:test_ap1/providers/language_provider.dart';
import 'package:test_ap1/ui/pages/main_page.dart';
import 'generated/l10n.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const ProviderScope(child: MyApp()));

  await LanguageProvider.instance.loadFromSP();
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ScreenUtilInit(
      designSize: const Size(720, 1280),
      builder: (_, child) {
        return MaterialApp(
        theme: ThemeData(
          useMaterial3: true,
        ),
        localizationsDelegates: const [
          S.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        locale: ref.watch(languageProvider).currentLocaleGet,
        supportedLocales: S.delegate.supportedLocales,
        home: MainPage(),
      );
      },
    );
  }
}
