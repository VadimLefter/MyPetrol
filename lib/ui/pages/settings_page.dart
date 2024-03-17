import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_ap1/ui/pages/setting_keyboaard.dart';

import '../../generated/l10n.dart';
import '../../providers/app_providers.dart';

class SettingsPage extends ConsumerWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.sp),
      child: Column(
        children: [
          InkWell(
              onTap: () {
                ref.read(languageProvider).changeLocale('ru');
              },
              child: RowSelect(
                  iconLeft: const Icon(Icons.language),
                  text: S.of(context).language,
                  iconRight: const Icon(Icons.arrow_forward_ios))),
          InkWell(
            splashFactory: NoSplash.splashFactory,
              onTap: () {
                ref.read(languageProvider).changeLocale('ro');
              },
              child: RowSelect(
                  iconLeft: const Icon(Icons.language),
                  text: S.of(context).language,
                  iconRight: const Icon(Icons.arrow_forward_ios))),
        ],
      ),
    );
  }
}
