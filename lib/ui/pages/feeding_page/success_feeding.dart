import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:test_ap1/resources/app_colors.dart';
import 'package:test_ap1/resources/app_icons.dart';
import 'package:test_ap1/resources/app_styles.dart';

class SuccessFeeding extends StatelessWidget {
  const SuccessFeeding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.green,
      appBar: AppBar(
        title: Text('Alimentare', style: AppStyle.appBarTitle),
        centerTitle: true,
        backgroundColor: AppColor.green,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(AppAsset.success, color: Colors.white, width: 95.sp),
            SizedBox(height: 24.sp),
            Text(
              'Tranzacție aprobată',
              style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 32.sp,
                  color: Colors.white),
            ),
            SizedBox(height: 16.sp),
            Text(
              'Tranzacție aprobată offline cu succes!',
              style: TextStyle(
                  fontSize: 24.sp,
                  fontWeight: FontWeight.w400,
                  color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
