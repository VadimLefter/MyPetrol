import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:test_ap1/data/models/fuel_points/fuel_points_dto_model.dart';
import 'package:test_ap1/providers/api_providers.dart';
import 'package:test_ap1/providers/app_providers.dart';
import 'package:test_ap1/resources/app_colors.dart';
import 'package:test_ap1/resources/app_icons.dart';
import 'package:test_ap1/ui/pages/feeding_page/type_feeding.dart';
import '../../../resources/app_styles.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AsyncValue<FuelPointsDto> fuelPoint = ref.watch(fuelPointProvider);
    return fuelPoint.when(
        data: (data) {
          return GridView.builder(
            padding: EdgeInsets.symmetric(horizontal: 16.sp, vertical: 24.sp),
            itemCount: data.fuelPoints?.length ?? 0,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              childAspectRatio: 1.4,
              crossAxisCount: 2,
              crossAxisSpacing: 16.sp,
              mainAxisSpacing: 16.sp,
            ),
            itemBuilder: (BuildContext context, int index) {
              return GestureDetector(
                onTap: () {
                  ref.read(homePageProvider).loadNozzles(ref, index);
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => const TypeFeeding()));
                },
                child: _ItemGrid(
                  index: index,
                  state: data.fuelPoints?[index].state ?? 0,
                ),
              );
            },
          );
        },
        error: (error, stackTrace) {
          return Scaffold(
            body: Center(
              child: Text(error.toString()),
            ),
          );
        },
        loading: () => const Center(child: CircularProgressIndicator()));
  }
}

enum ItemGridConfigurationState {
  blue,
  green,
  orange,
  red,
}

class _ItemGridConfigurationStyle {
  final Color color;
  final String icon;

  const _ItemGridConfigurationStyle({required this.color, required this.icon});
}

class ItemGridConfiguration {
  final ItemGridConfigurationState state;

  const ItemGridConfiguration({
    required this.state,
  });

  _ItemGridConfigurationStyle get _style {
    switch (state) {
      case ItemGridConfigurationState.blue:
        return blueStyle;
      case ItemGridConfigurationState.orange:
        return orangeStyle;
      case ItemGridConfigurationState.green:
        return greenStyle;
      case ItemGridConfigurationState.red:
        return redStyle;
    }
  }

  static const blueStyle = _ItemGridConfigurationStyle(
    color: AppColor.blue,
    icon: AppAsset.pecoHome,
  );
  static const greenStyle = _ItemGridConfigurationStyle(
    color: AppColor.green,
    icon: AppAsset.homeFeeding,
  );
  static const orangeStyle = _ItemGridConfigurationStyle(
    color: AppColor.orange,
    icon: AppAsset.progressDolor,
  );
  static const redStyle = _ItemGridConfigurationStyle(
    color: AppColor.red,
    icon: AppAsset.attention,
  );
}

class _ItemGrid extends StatelessWidget {
  final int index;
  final int state;

  const _ItemGrid({required this.index, required this.state});

  ItemGridConfigurationState get status {
    switch (state) {
      case 1:
        return ItemGridConfigurationState.blue;
      case 2:
        return ItemGridConfigurationState.orange;
      case 3:
        return ItemGridConfigurationState.green;
      default:
        return ItemGridConfigurationState.red;
    }
  }

  @override
  Widget build(BuildContext context) {
    final configuration = ItemGridConfiguration(state: status);
    return Container(
      height: 226.h,
      width: 336.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24.sp),
        color: configuration._style.color,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 24.sp, top: 24.sp),
            child: Text(
              'Nr.${index + 1}',
              style: AppStyle.appBarTitle,
            ),
          ),
          Center(
              child: SvgPicture.asset(
            configuration._style.icon,
            height: 80.h,
            width: 80.w,
          )),
        ],
      ),
    );
  }
}

class _ItemGridData extends StatelessWidget {
  final int index;

  const _ItemGridData({required this.index});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 236.h,
      width: 346.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24.sp),
        color: AppColor.blue,
      ),
      child: Padding(
        padding: EdgeInsets.only(left: 24.sp, top: 24.sp),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Nr.${index + 1} / P1',
                  style: AppStyle.appBarTitle,
                ),
                const Spacer(),
                Padding(
                  padding: EdgeInsets.only(right: 16.sp),
                  child: SvgPicture.asset(
                    AppAsset.feeding,
                    color: Colors.white,
                    height: 51.h,
                    width: 51.w,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                SvgPicture.asset(
                  AppAsset.peco,
                  height: 19.h,
                  width: 17.w,
                ),
                SizedBox(width: 19.w),
                Text(
                  'Diesel Premium 95',
                  style: AppStyle.detailFeedingStyle,
                )
              ],
            ),
            SizedBox(height: 16.h),
            Row(
              children: [
                SvgPicture.asset(
                  AppAsset.price,
                  height: 19.h,
                  width: 17.w,
                ),
                SizedBox(width: 19.w),
                Text(
                  '18, 70',
                  style: AppStyle.detailFeedingStyle,
                )
              ],
            ),
            SizedBox(height: 16.h),
            Row(
              children: [
                SvgPicture.asset(
                  AppAsset.liter,
                  height: 19.h,
                  width: 17.w,
                ),
                SizedBox(width: 19.w),
                Text(
                  '10 litri',
                  style: AppStyle.detailFeedingStyle,
                )
              ],
            ),
            SizedBox(height: 16.h),
            Row(
              children: [
                SvgPicture.asset(
                  AppAsset.money,
                  height: 19.h,
                  width: 17.w,
                ),
                SizedBox(width: 19.w),
                Text(
                  '187,00',
                  style: AppStyle.detailFeedingStyle,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

