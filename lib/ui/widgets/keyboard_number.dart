import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:test_ap1/resources/app_icons.dart';
import 'package:test_ap1/ui/pages/setting_keyboaard.dart';

import '../../resources/app_colors.dart';
import '../../resources/app_styles.dart';

class KeyboardNumber extends StatelessWidget {
  final TextEditingController controller;
  final int lengthInput;
  final bool? showSetting;

  const KeyboardNumber(
      {super.key,
      required this.controller,
      required this.lengthInput,
      this.showSetting});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Column(
              children: [
                Number(
                    value: '7',
                    controller: controller,
                    lengthInput: lengthInput),
                Number(
                    value: '4',
                    controller: controller,
                    lengthInput: lengthInput),
                Number(
                    value: '1',
                    controller: controller,
                    lengthInput: lengthInput),
                showSetting == false
                    ? Number(
                        value: '.',
                        controller: controller,
                        lengthInput: lengthInput)
                    : const ButtonSetting(),
              ],
            ),
            Column(
              children: [
                Number(
                    value: '8',
                    controller: controller,
                    lengthInput: lengthInput),
                Number(
                    value: '5',
                    controller: controller,
                    lengthInput: lengthInput),
                Number(
                    value: '2',
                    controller: controller,
                    lengthInput: lengthInput),
                Number(
                    value: '0',
                    controller: controller,
                    lengthInput: lengthInput),
              ],
            ),
            Column(
              children: [
                Number(
                    value: '9',
                    controller: controller,
                    lengthInput: lengthInput),
                Number(
                    value: '6',
                    controller: controller,
                    lengthInput: lengthInput),
                Number(
                    value: '3',
                    controller: controller,
                    lengthInput: lengthInput),
                ButtonDelete(controller: controller),
              ],
            ),
            // SizedBox(height: 80.h),
          ],
        ),
      ],
    );
  }
}

class Number extends ConsumerWidget {
  final int lengthInput;
  final String value;
  final TextEditingController controller;

  const Number(
      {super.key,
      required this.value,
      required this.controller,
      required this.lengthInput});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: EdgeInsets.all(8.sp),
      child: GestureDetector(
        onTap: () {
          if (controller.text.length == lengthInput) {
            return;
          } else {
            controller.text = controller.text + value;
            //ref.read(provider.notifier).state = ref.read(provider) + value;
          }
        },
        child: Container(
          height: 107.h,
          width: 216.67.w,
          decoration: BoxDecoration(
            color: AppColor.white,
            borderRadius: BorderRadius.circular(24.sp),
          ),
          child: Center(
              child: Text(
            value,
            style: AppStyle.keyboardNumStyle,
          )),
        ),
      ),
    );
  }
}

class ButtonDelete extends ConsumerWidget {
  final TextEditingController controller;

  const ButtonDelete(
      {super.key, required this.controller});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: EdgeInsets.all(8.0.sp),
      child: InkWell(
        borderRadius: BorderRadius.circular(24.sp),
        onTap: () {
          if (controller.text.isNotEmpty) {
            controller.text =
                controller.text.substring(0, controller.text.length - 1);
          }
        },
        onLongPress: () {
          controller.text = '';
        },
        child: SizedBox(
          height: 107.h,
          width: 216.67.w,
          child: Center(
            child: SvgPicture.asset(
              AppAsset.delete,
              color: Colors.black,
              height: 25.h,
            ),
          ),
        ),
      ),
    );
  }
}

class ButtonSetting extends StatelessWidget {

  const ButtonSetting({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0.sp),
      child: InkWell(
        borderRadius: BorderRadius.circular(24.sp),
        onTap: () {
          Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => const SettingKeyboard()));
        },
        child: SizedBox(
          height: 107.h,
          width: 216.67.w,
          child: Center(
              child: SvgPicture.asset(
            AppAsset.setting1,
            height: 35.h,
          )),
        ),
      ),
    );
  }
}
