import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:test_ap1/resources/app_colors.dart';
import 'package:test_ap1/ui/widgets/keyboard_number.dart';

class PinCodePage extends HookWidget{
  const PinCodePage({super.key});

  @override
  Widget build(BuildContext context) {
    final pinCodeController = useTextEditingController();
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 160.h),
          Text('Introduceți PIN-UL',
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 48.sp)),
          SizedBox(height: 16.h),
          Text('Introduceți pin-ul din 5 cifre',
              style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 24.sp,
                  color: AppColor.grey)),
          SizedBox(height: 48.h),
          //Text(ref.watch(activationLicencesProvider)),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 135.sp),
              child: PinCodeTextField(
                appContext: context,
                length: 5,
                controller: pinCodeController,
                keyboardType: TextInputType.none,
                pinTheme: PinTheme(
                  fieldHeight: 57.h,
                  fieldWidth: 55.w,
                  shape: PinCodeFieldShape.box,
                  inactiveColor: Colors.black,
                  activeColor: Colors.black,
                ),
              )
          ),
          const Spacer(),
          KeyboardNumber(controller: pinCodeController, lengthInput: 5),
          SizedBox(height: 70.h),
        ],
      ),
    );
  }
}







