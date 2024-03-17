import 'package:flutter/material.dart';
import 'package:test_ap1/resources/app_colors.dart';
import 'package:test_ap1/resources/app_styles.dart';
import 'package:test_ap1/ui/widgets/leading_app_bar_widget.dart';

class ErrorApiPage extends StatelessWidget {
  final String message;
  const ErrorApiPage({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: AppColor.black,
        title: const LeadingAppBarWidget(title: 'Error', color: Colors.white),
      ),
      body: Center(child: Text(message, style: AppStyle.errorMessage, textAlign: TextAlign.center,)),
    );
  }
}
