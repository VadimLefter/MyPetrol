import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:test_ap1/resources/app_colors.dart';
import 'package:test_ap1/resources/app_icons.dart';
import 'package:test_ap1/ui/pages/client/preauth.dart';
import 'package:test_ap1/ui/pages/main_page.dart';
import '../../../data/models/fuel_points/nozzle.dart';
import '../../../generated/l10n.dart';
import '../../../providers/app_providers.dart';
import '../../widgets/leading_app_bar_widget.dart';
import '../error_api_page.dart';
import 'feeding_data.dart';

class TypeFeeding extends ConsumerStatefulWidget {
  const TypeFeeding({super.key});

  @override
  TypeFeedingState createState() => TypeFeedingState();
}

class TypeFeedingState extends ConsumerState<TypeFeeding> {

  @override
  void initState() {
    ref.read(typeFeedingProvider).loadFuels();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: LeadingAppBarWidget(
          title: S.of(context).food,
          color: Colors.white,
        ),
        centerTitle: true,
        backgroundColor: AppColor.black,
      ),
      body: GridView.builder(
          padding: EdgeInsets.symmetric(horizontal: 16.sp, vertical: 48.sp),
          itemCount: ref.read(typeFeedingProvider).fuels.length,//nameProductAndPrice.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            childAspectRatio: 1.5,
            crossAxisCount: 2,
            crossAxisSpacing: 16.sp,
            mainAxisSpacing: 16.sp,
          ),
          itemBuilder: (context, index) {
            return FeedingType(
              index: index,);
          }),
      bottomNavigationBar: const NavToHome(),
    );
  }
}

class FeedingType extends ConsumerWidget {
  final int index;

  const FeedingType({super.key,
    required this.index,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return InkWell(
      onTap: () {
        ref.read(typeFeedingProvider).updateCurrentIndex(index);
        Navigator.of(context).push(MaterialPageRoute(builder: (context) => FeedingData(fuel: ref.read(typeFeedingProvider).fuels[index])));
      },
      child: Container(
        height: 212.h,
        width: 336.w,
        decoration: BoxDecoration(
          border: Border.all(),
          borderRadius: BorderRadius.circular(24.sp),
          color: ref.watch(typeFeedingProvider).currentIndex == index
              ? AppColor.green
              : Colors.white,
        ),
        child: Center(
          child: Text(
            ref.watch(typeFeedingProvider).fuels[index].productName ?? '',
            style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 32.sp,
                color: ref.watch(typeFeedingProvider).currentIndex == index
                    ? Colors.white
                    : Colors.black),
          ),
        ),
      ),
    );
  }
}

class NavToHome extends StatelessWidget {
  const NavToHome({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 97.sp,
      color: AppColor.black,
      child: InkWell(
        onTap: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => MainPage()));
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              AppAsset.home,
              height: 37.sp,
            ),
            Text(
              'Home',
              style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w700,
                  color: AppColor.grey),
            )
          ],
        ),
      ),
    );
  }
}


