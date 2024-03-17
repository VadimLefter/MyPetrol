import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_ap1/resources/app_colors.dart';
import 'package:test_ap1/ui/widgets/leading_app_bar_widget.dart';
import '../../widgets/keyboard_number.dart';

class PreAuthPage extends HookWidget {
  const PreAuthPage({super.key});


  @override
  Widget build(BuildContext context) {
    final odometerTextController = useTextEditingController();
    final vehicleIdTextController = useTextEditingController();
    final unencryptedIdTextController = useTextEditingController();
    final driverIdTextController = useTextEditingController();
    
    final index = useState(0);

    final listController = [
      odometerTextController,
      vehicleIdTextController,
      unencryptedIdTextController,
      driverIdTextController,
    ];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.black,
        title: const LeadingAppBarWidget(
          title: 'Preautorizare',
          color: Colors.white,
        ),
      ),
      body: InkWell(
        highlightColor: Colors.transparent,
        splashColor: Colors.transparent,
        onTap: () {
          FocusScope.of(context).unfocus();
         // ref.read(currentControllerProvider.notifier).state = 0;
        },
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.sp, vertical: 24.sp),
              child: Column(
                children: [
                  TextFieldData(
                    title: 'Odometer:',
                    label: 'Odometer',
                    controller: odometerTextController,
                    onTap: () {
                      index.value = 0;//ref.read(currentControllerProvider.notifier).state = 1;
                    },
                  ),
                  TextFieldData(
                    title: 'Vehicle no:',
                    label: 'Vehicle no',
                    controller: vehicleIdTextController,
                    onTap: () {
                      index.value = 1;//ref.read(currentControllerProvider.notifier).state = 2;
                    },
                  ),
                  TextFieldData(
                    title: 'Unencrypted ID:',
                    label: 'Unencrypted ID',
                    controller: unencryptedIdTextController,
                    onTap: () {
                      index.value = 2;//ref.read(currentControllerProvider.notifier).state = 3;
                    },
                  ),
                  TextFieldData(
                    title: 'Driver ID:',
                    label: 'Driver ID',
                    controller: driverIdTextController,
                    onTap: () {
                      index.value = 3;//ref.read(currentControllerProvider.notifier).state = 4;
                    },
                  ),
                ],
              ),
            ),
            const Spacer(),
            Row(
              children: [
                const Spacer(),
                InkWell(
                  onTap: () {},
                  child: const _RowButton(text: 'Anulare', color: AppColor.red),
                ),
                const Spacer(),
                InkWell(
                  onTap: () {},
                  child: const _RowButton(
                      text: 'Confirmare', color: AppColor.green),
                ),
                const Spacer(),
              ],
            ),
            SizedBox(height: 16.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.sp),
              child: KeyboardNumber(
                showSetting: false,
                controller: listController[index.value],
                lengthInput: 15,
              ),
            ),
            SizedBox(height: 16.h),
          ],
        ),
      ),
    );
  }
}

class TextFieldData extends StatelessWidget {
  final String title;
  final String label;
  final TextEditingController controller;
  final VoidCallback onTap;

  const TextFieldData({
    super.key,
    required this.title,
    required this.label,
    required this.controller,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
              fontSize: 14.sp, fontWeight: FontWeight.w700, color: Colors.black),
        ),
        SizedBox(height: 8.h),
        SizedBox(
          height: 66.h,
          child: TextField(
            controller: controller,
            keyboardType: TextInputType.none,
            cursorColor: AppColor.blackGrey,
            cursorWidth: 2.w,
            onTap: onTap,
            decoration: InputDecoration(
              focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: AppColor.blackGrey),
                  borderRadius: BorderRadius.circular(12.sp)),
              contentPadding:
                  EdgeInsets.symmetric( horizontal: 16.sp),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12.sp),
              ),
              labelText: label,
              floatingLabelBehavior: FloatingLabelBehavior.never,
              labelStyle: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w400,
                  color: AppColor.blackGrey),
            ),
          ),
        ),
        SizedBox(height: 8.h),
      ],
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
      height: 72.h,
      width: 336.w,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(8.sp),
      ),
      child: Center(
        child: Text(
          text,
          style: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 32.sp,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}

