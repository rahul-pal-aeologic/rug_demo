import 'package:flutter/material.dart';
import 'package:rug_demo/global/resource/app_colors.dart';
import 'package:rug_demo/global/resource/app_dimensions.dart';
import 'package:rug_demo/global/resource/app_styles.dart';
class PrimaryButton extends StatelessWidget {
  final String label;
  final void Function()? onPressed;
  final bool? disable;
  final IconData? iconName;
  final double? width;
  final bool? loading;
  const PrimaryButton(
      {super.key,
      this.loading,
      required this.label,
      this.onPressed,
      this.disable,
      this.iconName,
      this.width});

  @override
  Widget build(context) {
    return SizedBox(
      height: 56,
      // width: width ?? 200,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            shadowColor: AppColors.greyColor,
            elevation: 3,
            backgroundColor: AppColors.primaryColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(AppDimentions.buttonBorder),
            ),
          ),
          onPressed: (disable ?? false) ? null : onPressed,
          child: (loading ?? false)
              ? const CircularProgressIndicator(
                  color: Colors.white,
                )
              : Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      label.toUpperCase(),
                      style: AppStyles.mediumBoldTextWithColor(
                        ellipsis: TextOverflow.ellipsis,
                        color: (disable ?? false)
                            ? AppColors.greyColor
                            : AppColors.whiteColor,
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
