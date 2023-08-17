import 'package:flutter/material.dart';
import 'package:rug_demo/global/resource/app_colors.dart';
import 'package:rug_demo/global/resource/app_dimensions.dart';
import 'package:rug_demo/global/resource/app_styles.dart';
import 'package:rug_demo/presentation/common_widgets/primary_button.dart';

class CustomDialogBox extends StatelessWidget {
  final String title;
  final String subtitle;
  final String buttonText;
  final void Function()? onPressed;
  final bool? showTick;
  final Widget? child;
  const CustomDialogBox(
      {super.key,
      this.child,
      this.showTick,
      required this.title,
      required this.subtitle,
      required this.buttonText,
      this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.transparent,
      insetPadding: const EdgeInsets.all(20),
      child: Container(
        // height: MediaQuery.of(context).size.height / 1.8,
        padding: const EdgeInsets.all(AppDimentions.px20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(AppDimentions.px24),
          color: AppColors.whiteColor,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            normalSpacer,
            // showTick ?? true ? SvgPicture.asset(AppAssets.doneSvg) : const SizedBox(),
            normalSpacer,
            Text(
              title,
              style:
                  AppStyles.firstlargeBoldTextWithColor(AppColors.blackColor),
            ),
            normalSpacer,
            Text(
              subtitle,
              textAlign: TextAlign.center,
              style: AppStyles.normalBasicTextWithColor(AppColors.textColor1),
            ),
            normalSpacer,
            child ?? const SizedBox(),
            normalSpacer,
            SizedBox(
              width: 200,
              child: PrimaryButton(
                label: buttonText,
                onPressed: onPressed,
              ),
            ),
            normalSpacer,
          ],
        ),
      ),
    );
  }
}
