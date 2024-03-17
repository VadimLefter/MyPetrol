import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:test_ap1/resources/app_colors.dart';
import 'package:test_ap1/ui/widgets/keyboard_number.dart';

class ActivationLicencesPage extends HookWidget{
  const ActivationLicencesPage({super.key});

  @override
  Widget build(BuildContext context) {
    const storage = FlutterSecureStorage();
    final licenseController = useTextEditingController();
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 160.h),
          Text('Activare licență',
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 48.sp)),
          SizedBox(height: 16.h),
          Text('Introduceți licența din 8 cifre',
              style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 24.sp,
                  color: AppColor.grey)),
          SizedBox(height: 48.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 83.sp),
            child: PinCodeTextField(
              appContext: context,
              length: 8,
              controller: licenseController,
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
          KeyboardNumber(controller: licenseController, lengthInput: 8,),
          SizedBox(height: 70.h),
        ],
      ),
    );
  }
}

void saveLicenceKey(FlutterSecureStorage storage, String value) async {
  await storage.write(key: 'licence', value: value);
}

Future<String?> getLicenceKey(FlutterSecureStorage storage) async {
   String? licenceKey = await storage.read(key: 'licence');
   return licenceKey;
}







