import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:test_ap1/resources/app_colors.dart';
import 'package:test_ap1/resources/app_styles.dart';

import '../../generated/l10n.dart';
import '../../providers/app_providers.dart';
import '../widgets/leading_app_bar_widget.dart';

class SettingKeyboard extends ConsumerWidget {
  const SettingKeyboard({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.black,
        automaticallyImplyLeading: false,
        title: LeadingAppBarWidget(title: S.of(context).cash, color: Colors.white,),
        centerTitle: true,
      ),
      body: Column(
        children: [
          SizedBox(height: 24.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.sp),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InkWell(
                    onTap: () {
                      ref.read(languageProvider).changeLocale('ru');
                    },
                    child: RowSelect(
                        iconLeft: const Icon(Icons.language),
                        text: S.of(context).language,
                        iconRight: const Icon(Icons.arrow_forward_ios))),
                const Divider(),
                InkWell(
                  onTap: () {},
                  child: RowSelect(
                      iconLeft: const Icon(Icons.info_outline),
                      text: S.of(context).infoApp,
                      iconRight: const Icon(Icons.arrow_forward_ios)),
                ),
                const Divider(),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 16.sp),
            child: Row(
              children: [
                SizedBox(width: 45.w),
                SizedBox(width: 16.w),
                Text(
                  S.of(context).testMode,
                  style: AppStyle.boldStyle,
                ),
                const Spacer(),
                const CheckboxWidget(),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.sp),
            child: const Divider(),
          ),
        ],
      ),
    );
  }
}

class RowSelect extends StatelessWidget {
  final Icon? iconLeft;
  final Icon iconRight;
  final String text;
  final Widget? child;

  const RowSelect({
    super.key,
    required this.iconLeft,
    required this.text,
    required this.iconRight,
    this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.sp),
      child: Row(
        children: [
          iconLeft ?? SizedBox(width: 45.w),
          SizedBox(width: 16.w),
          Text(
            text,
            style: AppStyle.boldStyle,
          ),
          const Spacer(),
          iconRight,
        ],
      ),
    );
  }
}

class CheckboxWidget extends StatefulWidget {
  const CheckboxWidget({super.key});

  @override
  CheckboxWidgetState createState() => CheckboxWidgetState();
}

class CheckboxWidgetState extends State<CheckboxWidget> {
  bool isChecked = false;

  @override
  void initState() {
    super.initState();
    _loadCheckboxState();
  }

  _loadCheckboxState() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      isChecked = prefs.getBool('isChecked') ?? false;
    });
  }

  _saveCheckboxState(bool value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      isChecked = value;
      prefs.setBool('isChecked', isChecked);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      value: isChecked,
      onChanged: (bool? value) {
        _saveCheckboxState(value!);
      },
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(4.0),
      ),
    );
  }
}
