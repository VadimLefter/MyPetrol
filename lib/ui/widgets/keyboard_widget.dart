import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:test_ap1/resources/app_icons.dart';

import '../../resources/app_colors.dart';
import '../../resources/app_styles.dart';

class KeyboardCustom extends StatelessWidget {
  final StateProvider provider;
  final VoidCallback? onTapOk;

  const KeyboardCustom({
    super.key,
    required this.provider,
    required this.onTapOk,
  });

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
                  provider: provider,
                ),
                Number(
                  value: '5',
                  provider: provider,
                ),
                Number(
                  value: '1',
                  provider: provider,
                ),
                Number(
                  value: '0',
                  provider: provider,
                ),
              ],
            ),
            Column(
              children: [
                Number(
                  value: '9',
                  provider: provider,
                ),
                Number(
                  value: '4',
                  provider: provider,
                ),
                Number(
                  value: '2',
                  provider: provider,
                ),
                Number(
                  value: '.',
                  provider: provider,
                ),
              ],
            ),
            Column(
              children: [
                Number(
                  value: '8',
                  provider: provider,
                ),
                Number(
                  value: '6',
                  provider: provider,
                ),
                Number(
                  value: '3',
                  provider: provider,
                ),
                Number(
                  value: '00',
                  provider: provider,
                ),
              ],
            ),
            Column(
              children: [
                RightButtonDelete(
                  provider: provider,
                ),
                RightButtonOk(
                  provider: provider, onTap: onTapOk,
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}

class Number extends ConsumerWidget {
  final StateProvider provider;
  final String value;

  const Number({super.key, required this.value, required this.provider});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: EdgeInsets.all(8.sp),
      child: InkWell(
        onTap: () {
          if (value == '.' && ref.read(provider).contains('.') == true) {
            return;
          } else if (value == '.' && value == 0.toString()) {
            return;
          } else if (ref.read(provider).length >= 13) {
            return;
          } else {
            ref.read(provider.notifier).state = ref.read(provider) + value;
          }
        },
        child: Container(
          height: 107.h,
          width: 160.w,
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

class RightButtonDelete extends ConsumerWidget {
  final StateProvider provider;

  const RightButtonDelete({super.key, required this.provider});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: EdgeInsets.all(8.0.sp),
      child: InkWell(
        onTap: () {
          if (ref.read(provider).isNotEmpty) {
            ref.read(provider.notifier).state =
                ref.read(provider).substring(0, ref.read(provider).length - 1);
          } else if (ref.read(provider).isEmpty) {
            ref.read(provider.notifier).state = '';
          }
        },
        onLongPress: () {
          ref.read(provider.notifier).state = '';
        },
        child: Container(
          height: 232.h,
          width: 160.w,
          decoration: BoxDecoration(
            color: AppColor.white,
            borderRadius: BorderRadius.circular(24.sp),
          ),
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

class RightButtonOk extends StatelessWidget {
  final StateProvider provider;
  final VoidCallback? onTap;

  const RightButtonOk({
    super.key,
    required this.provider,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0.sp),
      child: InkWell(
        onTap: onTap,
        child: Container(
          height: 232.h,
          width: 160.w,
          decoration: BoxDecoration(
            color: AppColor.green,
            borderRadius: BorderRadius.circular(24.sp),
          ),
          child: Center(child: Text('Ok', style: AppStyle.buttonOkStyle)),
        ),
      ),
    );
  }
}
