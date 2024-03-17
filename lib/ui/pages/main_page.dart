import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:test_ap1/providers/app_providers.dart';
import 'package:test_ap1/resources/app_icons.dart';
import 'package:test_ap1/ui/pages/settings_page.dart';
import 'package:test_ap1/ui/pages/verification_page/verification_page.dart';
import '../../generated/l10n.dart';
import '../../resources/app_colors.dart';
import '../../resources/app_styles.dart';
import 'feeding_page/feeding_page.dart';
import 'home_page/home_page.dart';

class MainPage extends ConsumerWidget {
  MainPage({super.key});

  final List<Widget> _pages = [
    const HomePage(),
    const VerificationPage(),
    const FeedingPage(),
    const SettingsPage(),
  ];

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedIndex = ref.watch(currentIndexNavBarProvider);
    final title = titleAppBar(selectedIndex, context);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          title,
          style: AppStyle.appBarTitle,
        ),
        backgroundColor: AppColor.black,
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: _pages[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: AppColor.black,
        selectedItemColor: AppColor.green,
        unselectedItemColor: AppColor.grey,
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              AppAsset.home,
              color: selectedIndex == 0 ? AppColor.green : AppColor.grey,
              height: 16,
            ),
            label: S.of(context).home,
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              AppAsset.verification,
              color: selectedIndex == 1 ? AppColor.green : AppColor.grey,
              height: 16,
            ),
            label: S.of(context).verification,
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              AppAsset.feeding,
              color: selectedIndex == 2 ? AppColor.green : AppColor.grey,
              height: 16,
            ),
            label: S.of(context).cardRefill,
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              AppAsset.setting,
              color: selectedIndex == 3 ? AppColor.green : Colors.grey,
              height: 16,
            ),
            label: S.of(context).setting,
          ),
        ],
        currentIndex: selectedIndex,
        onTap: (index) => ref.read(currentIndexNavBarProvider.notifier).state = index,
      ),
    );
  }
}

String titleAppBar(int index, BuildContext context) {
  String title;
  if (index == 0) {
    title = S.of(context).home;
  } else if (index == 1) {
    title = S.of(context).verification;
  } else if (index == 2) {
    title = S.of(context).substitutions;
  } else {
    title = S.of(context).setting;
  }
  return title;
}
