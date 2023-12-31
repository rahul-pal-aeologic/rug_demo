import 'package:flutter/material.dart';
import 'package:rug_demo/global/resource/app_colors.dart';

class PrimaryButton extends StatelessWidget {
  final String label;
  final String label2;
  final void Function()? onPressed;
  final bool? disable;
  final IconData? iconName;
  final double? width;
  final bool? loading;
  final Color? color;
  final Color? textColor1;
  final Color? textColor2;
  final double? height;

  const PrimaryButton(
      {super.key,
      this.loading,
      required this.label,
      this.onPressed,
      this.disable,
      this.iconName,
      this.width,
      this.color,
      required this.label2,
      this.textColor1,
      this.textColor2,
      this.height});

  @override
  Widget build(context) {
    return SizedBox(
      height: height ?? 73,
      width: width,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          // shadowColor: AppColors.greyColor,
          // foregroundColor: Colors.blue,
          // shadowColor: Colors.black,
          // // elevation: 3,
          backgroundColor: color,
          shape: RoundedRectangleBorder(
            // side: BorderSide(color: AppColors.greyShade1, width: 2),
            borderRadius: BorderRadius.circular(18),
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
                  Row(
                    children: [
                      Text(
                        label,
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Axiforma-Regular',
                            color: textColor1,
                            fontSize: 14),
                      ),
                      Text(
                        label2,
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: textColor2,
                            fontFamily: "Axiforma-SemiBold",
                            fontSize: 14),
                      ),
                    ],
                  ),

                  // Text(
                  //   label,
                  //   style: AppStyles.mediumBoldTextWithColor(
                  //     ellipsis: TextOverflow.ellipsis,
                  //     color: (disable ?? false)
                  //         ? AppColors.primaryColor
                  //         : AppColors.whiteColor,
                  //   ),
                  // ),
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
              ),
      ),
    );
  }
}
