import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:test_ap1/resources/app_colors.dart';
import 'package:test_ap1/resources/app_icons.dart';

import '../../../generated/l10n.dart';
import '../../../providers/app_providers.dart';
import '../../widgets/leading_app_bar_widget.dart';

class PaymentSelection extends ConsumerWidget {
  const PaymentSelection({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: LeadingAppBarWidget(title: S.of(context).feeding, color: Colors.white,),
        centerTitle: true,
        backgroundColor: AppColor.black,

      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.sp),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () => ref.read(supplementationProvider).getPayType(2),
                child: Container(
                  height: 152.h,
                  width: 688.h,
                  decoration: BoxDecoration(
                    color: ref.watch(supplementationProvider).payType == 2 ? AppColor.green : Colors.white,
                    borderRadius: BorderRadius.circular(18.sp),
                    border: ref.watch(supplementationProvider).payType == 2 ? null : Border.all(color: Colors.black),
                  ),
                  child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(
                            AppAsset.cardPay, color: ref.watch(supplementationProvider).payType == 2 ? Colors.white : AppColor.blackGrey,
                            height: 53.h,
                          ),
                          Text(S.of(context).card,
                              style: TextStyle(
                                  fontSize: 24.sp,
                                  fontWeight: FontWeight.w700,
                                  color: ref.watch(supplementationProvider).payType == 2 ? Colors.white : Colors.black)),
                        ],
                      )),
                ),
              ),
              SizedBox(height: 24.h),
              InkWell(
                onTap: () {
                  ref.read(supplementationProvider).getPayType(1);
                  ref.read(supplementationProvider).makeRegisterFiscalReceipt(ref, context);
                },
                child: Container(
                  height: 152.h,
                  width: 688.h,
                  decoration: BoxDecoration(
                    color: ref.watch(supplementationProvider).payType == 1 ? AppColor.green : Colors.white,
                    borderRadius: BorderRadius.circular(18.sp),
                    border: ref.watch(supplementationProvider).payType == 1 ? null : Border.all(color: Colors.black),
                  ),
                  child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(
                            AppAsset.cashPay, color: ref.watch(supplementationProvider).payType == 1 ? Colors.white : AppColor.blackGrey,
                            height: 53.h,
                          ),
                          Text(S.of(context).cash,
                              style: TextStyle(
                                  fontSize: 24.sp,
                                  fontWeight: FontWeight.w700,
                                  color: ref.watch(supplementationProvider).payType == 1 ? Colors.white : Colors.black)),
                        ],
                      )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
