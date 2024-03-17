import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_ap1/resources/app_colors.dart';

class AppStyle {
  static TextStyle appBarTitle = TextStyle(
    fontSize: 24.sp,
    fontWeight: FontWeight.w700,
    color: Colors.white,
  );
  static TextStyle boldStyle = TextStyle(
    fontSize: 32.sp,
    fontWeight: FontWeight.w700,
    color: Colors.black,
  );
  static TextStyle slimStyle = TextStyle(
    fontSize: 24.sp,
    fontWeight: FontWeight.w300,
    color: Colors.black,
  );
  static TextStyle verificationTextStyle = TextStyle(
    fontSize: 22.sp,
    fontWeight: FontWeight.w700,
    color: Colors.black,
  );
  static TextStyle verificationDataStyle = TextStyle(
    fontSize: 22.sp,
    fontWeight: FontWeight.w400,
    color: Colors.black,
  );
  static TextStyle verificationDataStyleSum = TextStyle(
    fontSize: 32.sp,
    fontWeight: FontWeight.w600,
    color: Colors.black,
  );
  static TextStyle verificationDataStyleTextSum = TextStyle(
    fontSize: 30.sp,
    fontWeight: FontWeight.w700,
    color: Colors.black,
  );
  static TextStyle buttonOkStyle = TextStyle(
    fontSize: 32.sp,
    fontWeight: FontWeight.w400,
    color: Colors.white,
  );
  static TextStyle priceStyle = TextStyle(
    fontSize: 64.sp,
    fontWeight: FontWeight.w300,
    color: Colors.black,
  );
  static TextStyle keyboardNumStyle = TextStyle(
    fontSize: 32.sp,
    fontWeight: FontWeight.w400,
    color: Colors.black,
  );
  static TextStyle sumFeedingStyle = TextStyle(
    fontSize: 32.sp,
    fontWeight: FontWeight.w400,
    color: Colors.black,
  );
  static TextStyle sumFeedingDataStyle = TextStyle(
    fontSize: 96.sp,
    fontWeight: FontWeight.w300,
    color: Colors.black,
  );
  static TextStyle detailFeedingStyle = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeight.w700,
    color: Colors.white,
  );

  static TextStyle errorMessage = TextStyle(
    fontSize: 32.sp,
    fontWeight: FontWeight.w400,
    color: AppColor.red,
  );
}
