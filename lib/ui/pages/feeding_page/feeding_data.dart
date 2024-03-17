import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_ap1/providers/app_providers.dart';
import 'package:test_ap1/resources/app_styles.dart';
import 'package:test_ap1/ui/widgets/leading_app_bar_widget.dart';
import '../../../data/models/fuel/fuel.dart';
import '../../../generated/l10n.dart';
import '../../../resources/app_colors.dart';
import '../../widgets/keyboard_widget.dart';

class FeedingData extends ConsumerWidget {
 final Fuel fuel;

  const FeedingData({
    required this.fuel,
    super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: AppColor.black,
          title: LeadingAppBarWidget(
            title: S.of(context).food,
            color: Colors.white,
          )),
      body: ref.read(feedingTransactionProvider).showProgressIndicator ? const Center(child: CircularProgressIndicator()) : Column(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 16.sp, right: 16.sp, top: 16.sp),
            child: Column(
              children: [
                Row(
                  children: [
                    Text(S.of(context).nameCard,
                        style: AppStyle.verificationTextStyle),
                    const Spacer(),
                    Text(
                      ref.read(nameCardProvider), //era watch
                      style: AppStyle.verificationDataStyle,
                    ),
                  ],
                ),
                const Divider(),
                Row(
                  children: [
                    Text(S.of(context).product,
                        style: AppStyle.verificationTextStyle),
                    const Spacer(),
                    Text(
                     fuel.productName ?? '',
                      style: AppStyle.verificationDataStyle,
                    ),
                  ],
                ),
                const Divider(),
                Row(
                  children: [
                    Text(S.of(context).quantity,
                        style: AppStyle.verificationTextStyle),
                    const Spacer(),
                    Text(
                     '${ref.watch(feedingTransactionProvider).getProductQuantity(fuel.productPrice, ref)} l', // watch
                      style: AppStyle.verificationDataStyle,
                    ),
                  ],
                ),
                const Divider(),
                Row(
                  children: [
                    Text(S.of(context).price,
                        style: AppStyle.verificationTextStyle),
                    const Spacer(),
                    Text(
                      '${fuel.productPrice} mdl',
                      style: AppStyle.verificationDataStyle,
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 15.h),
          Column(
            children: [
              ColoredBox(
                color: AppColor.white,
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 16.sp, vertical: 25.sp),
                  child: Row(
                    children: [
                      Text(
                        S.of(context).total,
                        style: AppStyle.verificationDataStyleTextSum,
                      ),
                      const Spacer(),
                      Text(
                       '${ref.watch(feedingTransactionProvider).getProductPrice(fuel.productPrice, ref)} MDL', //watch
                       style: AppStyle.verificationDataStyleSum,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(
              right: 16.sp,
              top: 24.sp,
            ),
            child: Row(
              children: [
                const Spacer(),
                Text(
                  ref.watch(valueKeyboardFeedingProvider).isNotEmpty ? ref.watch(valueKeyboardFeedingProvider) : '', //watch
                  style: AppStyle.priceStyle,
                ),
              ],
            ),
          ),
          const Spacer(),
          Padding(
            padding: EdgeInsets.only(
              left: 16.sp,
              right: 16.sp,
            ),
            child: Row(
              children: [
                InkWell(
                  onTap: () => ref.read(feedingTransactionProvider).getFeedingType('lei'),
                  child: Container(
                    height: 72.h,
                    width: 336.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.sp),
                      border:
                          ref.read(feedingTransactionProvider).feedingType == 'lei' ? null : Border.all(color: Colors.black),
                      color: ref.read(feedingTransactionProvider).feedingType == 'lei'
                          ? AppColor.green
                          : Colors.white,
                    ),
                    child: Center(
                        child: Text(
                      S.of(context).lei,
                      style: TextStyle(
                          color: ref.read(feedingTransactionProvider).feedingType == 'lei' ? Colors.white : Colors.black),
                    )),
                  ),
                ),
                SizedBox(width: 16.w),
                InkWell(
                  onTap: () => ref.read(feedingTransactionProvider).getFeedingType('litri'),
                  child: Container(
                    height: 72.h,
                    width: 336.w,
                    decoration: BoxDecoration(
                        border:
                            ref.read(feedingTransactionProvider).feedingType == 'litri' ? null : Border.all(color: Colors.black),
                        borderRadius: BorderRadius.circular(12.sp),
                        color:
                            ref.read(feedingTransactionProvider).feedingType == 'litri' ? AppColor.green : Colors.white),
                    child: Center(
                        child: Text(S.of(context).litres,
                            style: TextStyle(
                                color: ref.read(feedingTransactionProvider).feedingType == 'litri' ? Colors.white : Colors.black))),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 8.sp, bottom: 20.sp),
            child: KeyboardCustom(
              provider: valueKeyboardFeedingProvider,
              onTapOk: () => ref.read(feedingTransactionProvider).makeTransaction(fuel, ref, Navigator.of(context)),
            ),
          ),
        ],
      ),
    );
  }
}
