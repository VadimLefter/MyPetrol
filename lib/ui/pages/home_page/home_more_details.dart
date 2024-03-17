import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_ap1/resources/app_colors.dart';
import 'package:test_ap1/resources/app_styles.dart';
import 'package:test_ap1/ui/widgets/keyboard_number.dart';
import '../../../generated/l10n.dart';
import '../../widgets/leading_app_bar_widget.dart';

class HomeMoreDetails extends HookWidget {
  const HomeMoreDetails({super.key});

  @override
  Widget build(BuildContext context) {
    final valueController = useTextEditingController();
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 95.w,
        title: LeadingAppBarWidget(title: S.of(context).cash, color: Colors.black,),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.sp),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('200', style: AppStyle.sumFeedingDataStyle),
                SizedBox(height: 64.h),
                Row(
                  children: [
                    Text(
                      S.of(context).totalToPay,
                      style:
                          TextStyle(fontWeight: FontWeight.w400, fontSize: 24.sp),
                    ),
                    const Spacer(),
                    Text(
                      '200.00 mdl',
                      style:
                          TextStyle(fontWeight: FontWeight.w400, fontSize: 24.sp),
                    ),
                  ],
                ),
                const Divider(),
                SizedBox(height: 24.h),
                Row(
                  children: [
                    Text(
                      S.of(context).rest,
                      style:
                          TextStyle(fontWeight: FontWeight.w400, fontSize: 24.sp),
                    ),
                    const Spacer(),
                    Text(
                      '00.00 mdl',
                      style:
                          TextStyle(fontWeight: FontWeight.w400, fontSize: 24.sp),
                    ),
                  ],
                ),
                const Divider(),
              ],
            ),
          ),
          const Spacer(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.sp),
            child: Row(
              children: [
                _RowButton(text: S.of(context).quit, color: AppColor.red),
                const Spacer(),
                const _RowButton(text: 'Ok', color: AppColor.green),
              ],
            ),
          ),
          Padding(
            padding:  EdgeInsets.only(left: 10.sp, right: 10.sp, bottom: 50.sp, top: 24.sp),
            child: KeyboardNumber(
              controller: valueController,
              lengthInput: 10,
            ),
          ),
        ],
      ),
    );
  }
}

class _RowButton extends StatelessWidget {
  final String text;
  final Color color;

  const _RowButton({
    required this.text,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 57.h,
      width: 335.24.w,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(8.sp),
      ),
      child: Center(
        child: Text(text,
            style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 24.sp,
                color: Colors.white)),
      ),
    );
  }
}
