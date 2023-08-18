import 'package:flutter/material.dart';
import 'package:rug_demo/global/resource/app_colors.dart';
import 'package:rug_demo/global/resource/app_styles.dart';

class SecondaryButton extends StatelessWidget {
  final String label;
  final void Function()? onPressed;
  final bool? disable;
  final IconData? iconName;
  final double? width;
  const SecondaryButton(
      {super.key,
      required this.label,
      this.onPressed,
      this.disable,
      this.iconName,
      this.width});

  @override
  Widget build(context) {
    return SizedBox(
      height: 80,
      width: width,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            // shadowColor: AppColors.primaryColor,
            backgroundColor: AppColors.mainBackgroundColor,
            shape: RoundedRectangleBorder(
              side: const BorderSide(color: AppColors.greyColor, width: 2.5),
              borderRadius: BorderRadius.circular(14),
            ),
          ),
          onPressed: (disable ?? false) ? null : onPressed,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                label,
                style: AppStyles.mediumBoldTextWithColor(
                  ellipsis: TextOverflow.ellipsis,
                  color: (disable ?? false)
                      ? AppColors.greyColor
                      : AppColors.blackColor,
                ),
              ),
              if (iconName != null)
                Flexible(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 4.0),
                    child: Icon(
                      iconName,
                      color: AppColors.whiteColor,
                    ),
                  ),
                )
            ],
          )),
    );
  }
}
