import 'dart:math';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:rug_demo/global/resource/app_colors.dart';
import 'package:rug_demo/global/resource/app_dimensions.dart';
import 'package:rug_demo/global/resource/app_styles.dart';

class CustomScaffoldLayout extends StatelessWidget {
  Widget child;
  bool showAppbar;
  String? appbarTitle;
  double? layoutMinHeight;
  List<Widget>? actions;
  CustomScaffoldLayout(
      {super.key,
      required this.showAppbar,
      required this.child,
      this.appbarTitle,
      this.actions,
      this.layoutMinHeight});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: showAppbar
          ? AppBar(
              leading: InkWell(
                child: const Icon(Icons.arrow_back_ios),
                onTap: () {
                  context.pop();
                },
              ),
              centerTitle: true,
              title: Text(
                appbarTitle ?? '',
                style: AppStyles.largeBoldTextWithColor(
                  Colors.black,
                ),
              ),
              // backgroundColor: Colors.transparent,
              elevation: 0, actions: actions,
              // foregroundColor: AppColors.mainBackgroundColor,
            )
          : null,
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) => Container(
              height: max(
                layoutMinHeight ?? AppDimentions.loginPageMinHeight,
                constraints.maxHeight,
              ),
              padding: const EdgeInsets.symmetric(
                  horizontal: AppDimentions.px20, vertical: 20),
              decoration: const BoxDecoration(color: AppColors.whiteColor),
              child: child),
        ),
      ),
    );
  }
}
