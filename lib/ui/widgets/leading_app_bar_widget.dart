import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../generated/l10n.dart';

class LeadingAppBarWidget extends StatelessWidget {
  final String title;
  final Color color;
  const LeadingAppBarWidget({
    super.key, required this.title, required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Align(
          alignment: Alignment.topLeft,
          child: InkWell(
            highlightColor: Colors.transparent,
             splashFactory: NoSplash.splashFactory,
            onTap: () {
              Navigator.of(context).pop();
            },
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(height: 50.sp,),
                Icon(
                  Icons.arrow_back_ios,
                  size: 30.sp,
                  weight: 10.sp,
                  color: color,
                ),
                Text(
                  S.of(context).back,
                  style: TextStyle(
                      fontSize: 24.sp,
                      fontWeight: FontWeight.w700,
                      color: color),
                ),
              ],
            ),
          ),
        ),
        Text(
          title,
          style: TextStyle(fontWeight: FontWeight.w700, fontSize: 24.sp, color: color),
        ),
      ],
    );
  }
}