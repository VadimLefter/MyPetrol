import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_ap1/resources/app_colors.dart';
import 'package:test_ap1/resources/app_styles.dart';
import 'package:test_ap1/ui/widgets/leading_app_bar_widget.dart';
import '../../../generated/l10n.dart';
import '../../../providers/app_providers.dart';
import '../../widgets/keyboard_widget.dart';

class Supplementation extends ConsumerWidget {
  const Supplementation({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final valueStringKeyboard = ref.watch(valueKeyboardSupplementationProvider);
    final valueUI = valueStringKeyboard.isNotEmpty ? valueStringKeyboard : '0.00';
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: LeadingAppBarWidget(
            title: S.of(context).feeding, color: AppColor.white),
        backgroundColor: AppColor.black,
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 133.h,
            ),
            Text(S.of(context).sumFeeding, style: AppStyle.sumFeedingStyle),
            SizedBox(
              height: 24.h,
            ),
            Text(valueUI, style: AppStyle.sumFeedingDataStyle),
            const Spacer(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.sp, vertical: 40.sp),
              child: KeyboardCustom(
                provider: valueKeyboardSupplementationProvider,
                onTapOk: () => ref.read(supplementationProvider).onTapOk(ref, context),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
