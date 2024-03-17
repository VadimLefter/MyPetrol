import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';
import 'package:test_ap1/providers/app_providers.dart';
import 'package:test_ap1/resources/app_colors.dart';
import 'package:test_ap1/resources/app_icons.dart';
import 'package:test_ap1/resources/app_styles.dart';
import 'package:test_ap1/ui/pages/verification_page/verification_data.dart';
import '../../../generated/l10n.dart';

class VerificationPage extends ConsumerWidget {
  const VerificationPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(left: 16.sp, right: 16.sp, top: 48.sp),
          child: Row(
            children: [
              Expanded(
                child: InkWell(
                  onTap: () =>
                      ref.read(feedingAndVerificationPageProvider).onTapButtonCard(),
                  child: Container(
                    height: 77.32.h,
                    decoration: BoxDecoration(
                      boxShadow: const [
                        BoxShadow(
                          color: AppColor.grey,
                          blurRadius: 1,
                        ),
                      ],
                      color: ref.watch(feedingAndVerificationPageProvider).activeButton ==
                              'card'
                          ? AppColor.green
                          : Colors.white,
                      borderRadius: BorderRadius.circular(9.sp),
                    ),
                    child: Center(child: Text(S.of(context).card)),
                  ),
                ),
              ),
              Expanded(
                child: InkWell(
                  onTap: () =>
                      ref.read(feedingAndVerificationPageProvider).onTapButtonScan(),
                  child: Container(
                    height: 77.32.h,
                    decoration: BoxDecoration(
                      boxShadow: const [
                        BoxShadow(
                          color: AppColor.grey,
                          blurRadius: 1,
                        ),
                      ],
                      color: ref.watch(feedingAndVerificationPageProvider).activeButton ==
                              'scan'
                          ? AppColor.green
                          : Colors.white,
                      borderRadius: BorderRadius.circular(9.sp),
                    ),
                    child: Center(child: Text(S.of(context).scan)),
                  ),
                ),
              )
            ],
          ),
        ),
        ref.watch(feedingAndVerificationPageProvider).activeButton == 'card'
            ? const _CardWidget()
            : const _ScanWidget(),
      ],
    );
  }
}

class _CardWidget extends ConsumerStatefulWidget {
  const _CardWidget();

  @override
  _CardWidgetState createState() => _CardWidgetState();
}

class _CardWidgetState extends ConsumerState<_CardWidget> {

  @override
  void initState() {
    ref.read(feedingAndVerificationPageProvider).initNFC(ref,  Navigator.of(context), const VerificationData());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 179.h),
        Image.asset(
          AppAsset.buyWithCard,
          height: 208.h,
          width: 283.64.w,
        ),
        SizedBox(height: 86.h),
        Text(
          S.of(context).cardPresentation,
          style: AppStyle.boldStyle,
        ),
        SizedBox(height: 16.h),
        Text(
          S.of(context).pleaseAttachCard,
          style: AppStyle.slimStyle,
          overflow: TextOverflow.ellipsis,
        ),
      ],
    );
  }
}

class _ScanWidget extends ConsumerStatefulWidget {
  const _ScanWidget();

  @override
  _ScanWidgetState createState() => _ScanWidgetState();
}

class _ScanWidgetState extends ConsumerState<_ScanWidget> {

  final GlobalKey qrVerificationKey = GlobalKey(debugLabel: 'qrVerification');
  QRViewController? controller;

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 190.h),
        Container(
          alignment: Alignment.center,
          height: 260.29.h,
          width: 305.w,
          child: Stack(
            alignment: Alignment.center,
            children: [
              SizedBox(
                height: 202.h,
                width: 202.h,
                child: QRView(
                  key: qrVerificationKey,
                  onQRViewCreated:(controller) => ref.read(feedingAndVerificationPageProvider).onQRViewCreated(controller),
                ),
              ),
              SvgPicture.asset(AppAsset.centerHorizontalBar),
              Align(
                  alignment: Alignment.topLeft,
                  child:
                      SvgPicture.asset(AppAsset.horizontalBar, width: 59.08.w)),
              Align(
                  alignment: Alignment.topLeft,
                  child: SvgPicture.asset(
                    AppAsset.verticalBar,
                    height: 59.08.w,
                  )),
              Align(
                  alignment: Alignment.topRight,
                  child:
                      SvgPicture.asset(AppAsset.horizontalBar, width: 59.08.w)),
              Align(
                  alignment: Alignment.topRight,
                  child:
                      SvgPicture.asset(AppAsset.verticalBar, height: 59.08.w)),
              Align(
                  alignment: Alignment.bottomLeft,
                  child:
                      SvgPicture.asset(AppAsset.horizontalBar, width: 59.08.w)),
              Align(
                  alignment: Alignment.bottomLeft,
                  child:
                      SvgPicture.asset(AppAsset.verticalBar, height: 59.08.w)),
              Align(
                  alignment: Alignment.bottomRight,
                  child:
                      SvgPicture.asset(AppAsset.horizontalBar, width: 59.08.w)),
              Align(
                  alignment: Alignment.bottomRight,
                  child:
                      SvgPicture.asset(AppAsset.verticalBar, height: 59.08.w)),
            ],
          ),
        ),
        SizedBox(height: 24.h),
        Text(S.of(context).scanQr, style: AppStyle.boldStyle),
        SizedBox(height: 16.h),
        Text(
          S.of(context).scanQrForFinish,
          style: AppStyle.slimStyle,
          overflow: TextOverflow.ellipsis,
        ),
      ],
    );
  }
}
