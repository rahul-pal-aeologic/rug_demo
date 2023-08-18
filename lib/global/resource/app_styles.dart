import 'package:flutter/material.dart';
import 'package:rug_demo/global/resource/app_colors.dart';

import 'app_dimensions.dart';

class AppStyles {
  static const _smallFontSize = 12.0;
  static const _mediumFontSize = 14.0;
  static const _regularFontSize = 16.0;
  static const _sizeWith20Pixels = 20.0;
  static const _firstLargeFontSize = 22.0;
  static const _normalFontSize = 18.0;
  static const _secondLargeFontSize = 24.0;
  static const _largeFontSize = 26.0;
  static const _extraLargeFontSize = 36.0;
  static const _extraLargeFontSizeforty = 40.0;
  static const _sizeWith15Pixels = 15.0;
  static const _sizeWith18Pixels = 18.0;

  static const TextStyle headerStyle = TextStyle(
      color: AppColors.titleColor,
      fontSize: AppDimentions.px16,
      fontFamily: 'Axiforma',
      fontWeight: FontWeight.w400);
  static const TextStyle textFieldHintStyle = TextStyle(
      color: AppColors.hintColor,
      fontSize: AppDimentions.px16,
      fontFamily: 'Axiforma',
      fontWeight: FontWeight.w400);
  static const TextStyle headerStyleMonst = TextStyle(
      color: AppColors.titleColor,
      fontSize: AppDimentions.px20,
      fontFamily: 'Axiforma',
      fontWeight: FontWeight.w400);
  static const TextStyle headerStyleMonst500 = TextStyle(
      color: AppColors.primaryColor,
      fontSize: AppDimentions.px18,
      fontFamily: 'Axiforma',
      fontWeight: FontWeight.w500);
  static const TextStyle largeHeaderStyle = TextStyle(
      color: AppColors.titleColor,
      fontSize: AppDimentions.px25,
      fontFamily: 'Axiforma',
      fontWeight: FontWeight.w400);
  static const TextStyle largeHeaderStyle20px = TextStyle(
      color: AppColors.primaryColor,
      fontSize: AppDimentions.px20,
      fontFamily: 'Axiforma',
      fontWeight: FontWeight.w400);
  static const TextStyle buttonStyle = TextStyle(
      color: AppColors.titleColor,
      fontSize: AppDimentions.px14,
      fontFamily: 'Axiforma',
      fontWeight: FontWeight.bold);
  static const TextStyle lightBlue15W = TextStyle(
      color: AppColors.insideFormColor,
      fontSize: AppDimentions.px15,
      fontWeight: FontWeight.w600,
      fontFamily: 'Axiforma');
  static const TextStyle title15W600 = TextStyle(
      color: AppColors.insideFormColor,
      fontSize: AppDimentions.px15,
      fontWeight: FontWeight.w600,
      fontFamily: 'Axiforma');
  static const TextStyle title15W600underline = TextStyle(
      color: AppColors.insideFormColor,
      fontSize: AppDimentions.px15,
      decoration: TextDecoration.underline,
      decorationStyle: TextDecorationStyle.solid,
      fontWeight: FontWeight.w600,
      fontFamily: 'Axiforma');
  static const TextStyle title15W400 = TextStyle(
      color: AppColors.insideFormColor,
      fontSize: AppDimentions.px15,
      fontWeight: FontWeight.w400,
      fontFamily: 'Axiforma');
  static const TextStyle lightBlue15W600 = TextStyle(
      color: AppColors.titleColor,
      fontSize: AppDimentions.px15,
      fontWeight: FontWeight.w400,
      fontFamily: 'Axiforma');
  //-------------------Font Styles---------------------------------//

  static TextStyle mediumBoldTextWithColor(
      {required Color color,
      required TextOverflow ellipsis,
      TextOverflow? overflow}) {
    return TextStyle(
        color: color,
        fontSize: _mediumFontSize,
        fontWeight: FontWeight.bold,
        fontFamily: 'Axiforma-Bold',
        overflow: overflow);
  }

  static TextStyle mediumTextWithColor(Color color) {
    return TextStyle(
        color: color,
        fontSize: _mediumFontSize,
        fontWeight: FontWeight.w500,
        fontFamily: 'Axiforma-Bold');
  }

  static TextStyle mediumTextWithColorWeight300(Color color,
      {TextOverflow? overflow}) {
    return TextStyle(
        color: color,
        fontSize: _mediumFontSize,
        fontWeight: FontWeight.w300,
        fontFamily: 'Axiforma',
        overflow: overflow);
  }

  static TextStyle mediumTextWithColorWeight400(Color color,
      {TextOverflow? overflow}) {
    return TextStyle(
        color: color,
        fontSize: _mediumFontSize,
        fontWeight: FontWeight.w400,
        fontFamily: 'Axiforma',
        overflow: overflow);
  }

  static TextStyle secondlargeBoldTextWithColor(Color color) {
    return TextStyle(
        color: color,
        fontSize: _secondLargeFontSize,
        fontWeight: FontWeight.bold,
        fontFamily: 'Axiforma-Bold');
  }

  static TextStyle normalBoldTextWithColor(Color color) {
    return TextStyle(
        color: color,
        fontSize: _normalFontSize,
        fontWeight: FontWeight.bold,
        fontFamily: 'Axiforma');
  }

  static TextStyle normalTextWithColor(Color color) {
    return TextStyle(
        color: color,
        fontSize: _normalFontSize,
        fontWeight: FontWeight.w300,
        fontFamily: 'Axiforma-Regular');
  }

  static TextStyle normalBasicTextWithColor(Color color) {
    return TextStyle(
        color: color,
        fontSize: _normalFontSize,
        fontWeight: FontWeight.w500,
        fontFamily: 'Axiforma');
  }

  static TextStyle sizeWith20PixelsBoldTextWithColor(Color color,
      {TextOverflow? textOverflow}) {
    return TextStyle(
        color: color,
        fontSize: _sizeWith20Pixels,
        fontWeight: FontWeight.bold,
        fontFamily: 'Axiforma',
        overflow: textOverflow);
  }

  //---------------------------------------------------------//

  // ----------------   SMALL SIZE FONT ---------------------------//
  static TextStyle smallTextWithColor(Color color) {
    return TextStyle(
        color: color,
        fontSize: _smallFontSize,
        fontWeight: FontWeight.normal,
        fontFamily: 'Axiforma-Regular');
  }

  static TextStyle smallBoldTextWithColor(Color color) {
    return TextStyle(
        color: color,
        fontSize: _smallFontSize,
        fontWeight: FontWeight.bold,
        fontFamily: 'Axiforma');
  }

  static TextStyle smallBoldTextWithUnderline(Color color, {double? size}) {
    return TextStyle(
        color: color,
        fontSize: size ??_smallFontSize,
        fontWeight: FontWeight.bold,
        fontFamily: 'Axiforma-Bold',
        decoration: TextDecoration.underline);
  }

  static TextStyle smallLightTextWithColor(Color color) {
    return TextStyle(
        color: color,
        fontSize: _smallFontSize,
        fontWeight: FontWeight.w400,
        fontFamily: 'Axiforma-Light');
  }

  // ----------------   REGULAR SIZE FONT ---------------------------//

  // App Text Color
  static TextStyle regularTextWithColor(
      {TextOverflow? textOverflow, required Color color}) {
    return TextStyle(
        color: color,
        fontSize: _regularFontSize,
        fontWeight: FontWeight.normal,
        fontFamily: 'Axiforma',
        overflow: textOverflow);
  }

  static TextStyle regularBasicTextWithColor(Color color) {
    return TextStyle(
        color: color,
        fontSize: _regularFontSize,
        fontWeight: FontWeight.w500,
        fontFamily: 'Axiforma');
  }

  static TextStyle regularBoldTextWithColor(Color color,
      {TextOverflow? textOverflow}) {
    return TextStyle(
        color: color,
        fontSize: _regularFontSize,
        fontWeight: FontWeight.bold,
        fontFamily: 'Axiforma',
        overflow: textOverflow);
  }

  static TextStyle regularBoldTextWithColorWithWeight(Color color,
      {TextOverflow? textOverflow, FontWeight? fontWeight}) {
    return TextStyle(
        color: color,
        fontSize: _regularFontSize,
        fontWeight: fontWeight,
        fontFamily: 'Axiforma',
        overflow: textOverflow);
  }

  static TextStyle regularTextWithColorWithWeight(Color color,
      {TextOverflow? textOverflow, FontWeight? fontWeight}) {
    return TextStyle(
        color: color,
        fontSize: _regularFontSize,
        fontWeight: fontWeight,
        fontFamily: 'Axiforma',
        overflow: textOverflow);
  }

  static TextStyle regularLightTextWithColor(Color color) {
    return TextStyle(
        color: color,
        fontSize: _regularFontSize,
        fontWeight: FontWeight.w300,
        fontFamily: 'Axiforma-Light');
  }

  static TextStyle regularLightTextWithColorAnd18FontSize(Color color) {
    return TextStyle(
        color: color,
        fontSize: _sizeWith18Pixels,
        fontWeight: FontWeight.w400,
        fontFamily: 'Axiforma-Light');
  }

  // ----------------   LARGE SIZE FONT ---------------------------//

  // App Text Color
  static TextStyle largeTextWithColor(Color color) {
    return TextStyle(
        color: color,
        fontSize: _largeFontSize,
        fontWeight: FontWeight.normal,
        fontFamily: 'Axiforma-Regular');
  }

  static TextStyle largeBoldTextWithColor(Color color) {
    return TextStyle(
        color: color,
        fontSize: _largeFontSize,
        fontWeight: FontWeight.bold,
        fontFamily: 'Axiforma');
  }

  static TextStyle largeLightTextWithColor(Color color) {
    return TextStyle(
        color: color,
        fontSize: _largeFontSize,
        fontWeight: FontWeight.normal,
        fontFamily: 'Axiforma-Light');
  }

  static TextStyle firstlargeBoldTextWithColor(Color color) {
    return TextStyle(
        color: color,
        fontSize: _firstLargeFontSize,
        fontWeight: FontWeight.bold,
        fontFamily: 'Axiforma-Bold');
  }
  // ----------------  EXTRA LARGE SIZE FONT ---------------------------//

  // App Text Color
  static TextStyle extraLargeTextWithColor(Color color) {
    return TextStyle(
        color: color,
        fontSize: _extraLargeFontSize,
        fontWeight: FontWeight.normal,
        fontFamily: 'Axiforma-Regular');
  }

  static TextStyle extraLargeBoldTextWithColor(Color color) {
    return TextStyle(
        color: color,
        fontSize: _extraLargeFontSize,
        fontWeight: FontWeight.bold,
        fontFamily: 'Axiforma-Bold');
  }

  static TextStyle extraLargeLightTextWithColor(Color color) {
    return TextStyle(
        color: color,
        fontSize: _extraLargeFontSize,
        fontWeight: FontWeight.normal,
        fontFamily: 'Axiforma-Light');
  }

  static TextStyle extraLargefortyBoldTextWithColor(Color color) {
    return TextStyle(
        color: color,
        fontSize: _extraLargeFontSizeforty,
        fontWeight: FontWeight.bold,
        fontFamily: 'Axiforma-Bold');
  }

  // ----------------  15 pixel SIZE FONT ---------------------------//
  static TextStyle regularTextWithColorAnd15Size(Color color,
      {TextOverflow? textOverflow}) {
    return TextStyle(
        color: color,
        fontSize: _sizeWith15Pixels,
        fontWeight: FontWeight.normal,
        fontFamily: 'Axiforma',
        overflow: textOverflow);
  }

  static TextStyle normalTextStyle(BuildContext context,
      {Color? color,
      double? fontSize,
      String? ul,
      FontWeight? fontWeight,
      var letterSpacing}) {
    return TextStyle(
      decoration: ul != null ? TextDecoration.underline : TextDecoration.none,
      color: color ?? AppColors.blackColor,
      fontSize: fontSize ?? DeviceSize.width(context) / 20,
      letterSpacing: letterSpacing ?? 0.0,
      fontWeight: fontWeight,
    );
  }

  static TextStyle lightTextStyle(BuildContext context,
      {Color? color, double? fontSize, String? ul, FontWeight? fontWeight}) {
    return TextStyle(
      decoration: ul != null ? TextDecoration.underline : TextDecoration.none,
      color: color ?? AppColors.blackColor,
      fontWeight: fontWeight,
      fontSize: fontSize ?? DeviceSize.width(context) / 20,
    );
  }
}
