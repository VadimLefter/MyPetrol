import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:test_ap1/resources/app_colors.dart';
import 'package:test_ap1/resources/app_icons.dart';
import 'package:test_ap1/ui/widgets/leading_app_bar_widget.dart';

class AccountClosure extends StatelessWidget {
  const AccountClosure({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const LeadingAppBarWidget(title: 'Închidere cont', color: AppColor.black,),
      ),
      body: Column(
        children: [
          SizedBox(height: 314.sp,),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 125.sp),
            child: SvgPicture.asset(AppAsset.isPaymentsService),
          ),
        ],
      ),
    );
  }
}
