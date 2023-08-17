import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:logger/logger.dart';
import 'package:rug_demo/global/resource/app_colors.dart';
import 'package:rug_demo/presentation/common_widgets/custom_dialog_box.dart';

class Helper {
  static var logger = Logger();

  static printLogValue(dynamic message,
      [dynamic error, StackTrace? stackTrace]) {
    logger.d(message, error: error, stackTrace: stackTrace);
  }

  static printWrapped(String text) {
    final pattern = RegExp('.{1,800}'); // 800 is the size of each chunk
    pattern.allMatches(text).forEach((match) => debugPrint(match.group(0)));
  }

  static printError(dynamic message, [dynamic error, StackTrace? stackTrace]) {
    logger.e(message, error: error, stackTrace: stackTrace);
  }

  static DateFormat getDateFormat(BuildContext context,
      {bool day = false, bool minute = false}) {
    if (minute) return DateFormat.yMMMd().add_jm();
    if (day) return DateFormat.yMMMd();
    return DateFormat.yMMMM();
  }

  static Future<void> showCustomDialog(
      {required BuildContext context,
      required String title,
      required String subtitle,
      bool? showTick,
      required String buttonText,
      required void Function()? onPressed}) {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return CustomDialogBox(
            title: title,
            subtitle: subtitle,
            buttonText: buttonText,
            onPressed: onPressed,
            showTick: showTick,
          );
        });
  }

  static Future commonDatePicker(BuildContext context,
      {required DateTime firstDate,
      required DateTime initialDate,
      required DateTime lastDate}) async {
    return await showDatePicker(
      context: context,
      initialDate: initialDate,
      firstDate: firstDate,
      lastDate: lastDate,
      builder: (context, child) {
        return Theme(
          data: Theme.of(context).copyWith(
            colorScheme: const ColorScheme.light(
              primary: AppColors.primaryColor,
              onSurface: AppColors.primaryColor,
            ),
            textButtonTheme: TextButtonThemeData(
              style: TextButton.styleFrom(
                foregroundColor: AppColors.primaryColor,
              ),
            ),
          ),
          child: child!,
        );
      },
    );
  }
}
