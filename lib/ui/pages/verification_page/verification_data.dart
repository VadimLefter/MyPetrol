import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_ap1/data/models/card_info/card_info.dart';
import 'package:test_ap1/providers/api_providers.dart';
import 'package:test_ap1/resources/app_colors.dart';
import 'package:test_ap1/resources/app_styles.dart';
import 'package:test_ap1/ui/pages/main_page.dart';
import 'package:test_ap1/ui/widgets/leading_app_bar_widget.dart';
import '../../../generated/l10n.dart';
import '../../../providers/app_providers.dart';

class VerificationData extends ConsumerWidget {

  const VerificationData({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AsyncValue<CardInfo> cardInfo = ref.watch(cardInfoProvider((cardId: ref.read(feedingAndVerificationPageProvider).cardBarcodeClassic, stationId: '333')));
    return cardInfo.when(
        data: (data) {
          return Scaffold(
            appBar: AppBar(
              automaticallyImplyLeading: false,
              backgroundColor: AppColor.black,
              title: LeadingAppBarWidget(title: S.of(context).verification, color: AppColor.white,)
            ),
            body: Column(
              children: [
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 16.sp, vertical: 24.sp),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(S.of(context).cod,
                              style: AppStyle.verificationTextStyle),
                          const Spacer(),
                          Text(
                            data.cardNumber,
                            style: AppStyle.verificationDataStyle,
                          ),
                        ],
                      ),
                      const Divider(),
                      Row(
                        children: [
                          Text(S.of(context).nameCard,
                              style: AppStyle.verificationTextStyle),
                          const Spacer(),
                          Text(
                            data.cardName,
                            style: AppStyle.verificationDataStyle,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Column(
                  children: [
                    ColoredBox(
                      color: AppColor.white,
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 16.sp, vertical: 25.sp),
                        child: Row(
                          children: [
                            Text(
                              S.of(context).allSum,
                              style: AppStyle.verificationDataStyleTextSum,
                            ),
                            const Spacer(),
                            Text(
                              '${data.balance} MDL',
                              style: AppStyle.verificationDataStyleSum,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const Spacer(),
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 16.sp, vertical: 80.sp),
                  child: InkWell(
                    onTap: () {
                      ref.read(nameCardProvider.notifier).state = data.cardName;
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => MainPage()));
                    },
                    child: Container(
                      height: 80.h,
                      width: 688.w,
                      decoration: BoxDecoration(
                        color: AppColor.green,
                        borderRadius: BorderRadius.circular(8.sp),
                      ),
                      child: Center(
                          child: Text(
                        'Ok',
                        style: AppStyle.buttonOkStyle,
                      )),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
        error: (error, stackTrace) {
          return Scaffold(
            body: Center(
              child: Text(error.toString()),
            ),
          );
        },
        loading: () => const Scaffold(body: Center(child: CircularProgressIndicator())));
  }
}
