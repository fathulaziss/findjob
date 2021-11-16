import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

double scale = Get.width <= 320 ? 0.75 : 1;

Widget verticalSpace(double v) {
  return SizedBox(height: v);
}

Widget horizontalSpace(double v) {
  return SizedBox(width: v);
}

class AppColors {
  static Color mainColor = Color(0xFF4141A4);
  static Color secondColor = Color(0xFFFD4F56);
  static Color whiteColor = Color(0xFFFFFFFF);
  static Color blackColor = Color(0xFF272C2F);
  static Color greyColor = Color(0xFFB3B5C4);
}

class FontSizes {
  static double get s10 => 10 * scale;
  static double get s14 => 14 * scale;
  static double get s16 => 16 * scale;
  static double get s20 => 20 * scale;
  static double get s24 => 24 * scale;
  static double get s32 => 32 * scale;
}

class Insets {
  static double get xs => 4 * scale;
  static double get sm => 8 * scale;
  static double get med => 12 * scale;
  static double get lg => 16 * scale;
  static double get xl => 20 * scale;
  static double get xxl => 32 * scale;
}

class IconSizes {
  static double get sm => 16 * scale;
  static double get med => 24 * scale;
  static double get lg => 32 * scale;
  static double get xl => 48 * scale;
  static double get xxl => 60 * scale;
}

class Corners {
  static double sm = 3 * scale;
  static BorderRadius smBorder = BorderRadius.all(smRadius);
  static Radius smRadius = Radius.circular(sm);

  static double med = 5 * scale;
  static BorderRadius medBorder = BorderRadius.all(medRadius);
  static Radius medRadius = Radius.circular(med);

  static double lg = 8 * scale;
  static BorderRadius lgBorder = BorderRadius.all(lgRadius);
  static Radius lgRadius = Radius.circular(lg);

  static double xl = 16 * scale;
  static BorderRadius xlBorder = BorderRadius.all(xlRadius);
  static Radius xlRadius = Radius.circular(xl);

  static double xxl = 24 * scale;
  static BorderRadius xxlBorder = BorderRadius.all(xxlRadius);
  static Radius xxlRadius = Radius.circular(xxl);
}

class TextStyles {
  static TextStyle purpleLight = GoogleFonts.poppins().copyWith(
      color: AppColors.mainColor,
      fontWeight: FontWeight.w300,
      fontSize: FontSizes.s14);
  static TextStyle purpleNormal = GoogleFonts.poppins().copyWith(
      color: AppColors.mainColor,
      fontWeight: FontWeight.w400,
      fontSize: FontSizes.s14);
  static TextStyle purpleMedium = GoogleFonts.poppins().copyWith(
      color: AppColors.mainColor,
      fontWeight: FontWeight.w500,
      fontSize: FontSizes.s14);
  static TextStyle purpleSemiBold = GoogleFonts.poppins().copyWith(
      color: AppColors.mainColor,
      fontWeight: FontWeight.w600,
      fontSize: FontSizes.s14);
  static TextStyle purpleBold = GoogleFonts.poppins().copyWith(
      color: AppColors.mainColor,
      fontWeight: FontWeight.w700,
      fontSize: FontSizes.s14);

  static TextStyle redLight = GoogleFonts.poppins().copyWith(
      color: AppColors.secondColor,
      fontWeight: FontWeight.w300,
      fontSize: FontSizes.s14);
  static TextStyle redNormal = GoogleFonts.poppins().copyWith(
      color: AppColors.secondColor,
      fontWeight: FontWeight.w400,
      fontSize: FontSizes.s14);
  static TextStyle redMedium = GoogleFonts.poppins().copyWith(
      color: AppColors.secondColor,
      fontWeight: FontWeight.w500,
      fontSize: FontSizes.s14);
  static TextStyle redSemiBold = GoogleFonts.poppins().copyWith(
      color: AppColors.secondColor,
      fontWeight: FontWeight.w600,
      fontSize: FontSizes.s14);
  static TextStyle redBold = GoogleFonts.poppins().copyWith(
      color: AppColors.secondColor,
      fontWeight: FontWeight.w700,
      fontSize: FontSizes.s14);

  static TextStyle whiteLight = GoogleFonts.poppins().copyWith(
      color: AppColors.whiteColor,
      fontWeight: FontWeight.w300,
      fontSize: FontSizes.s14);
  static TextStyle whiteNormal = GoogleFonts.poppins().copyWith(
      color: AppColors.whiteColor,
      fontWeight: FontWeight.w400,
      fontSize: FontSizes.s14);
  static TextStyle whiteMedium = GoogleFonts.poppins().copyWith(
      color: AppColors.whiteColor,
      fontWeight: FontWeight.w500,
      fontSize: FontSizes.s14);
  static TextStyle whiteSemiBold = GoogleFonts.poppins().copyWith(
      color: AppColors.whiteColor,
      fontWeight: FontWeight.w600,
      fontSize: FontSizes.s14);
  static TextStyle whiteBold = GoogleFonts.poppins().copyWith(
      color: AppColors.whiteColor,
      fontWeight: FontWeight.w700,
      fontSize: FontSizes.s14);

  static TextStyle blackLight = GoogleFonts.poppins().copyWith(
      color: AppColors.blackColor,
      fontWeight: FontWeight.w300,
      fontSize: FontSizes.s14);
  static TextStyle blackNormal = GoogleFonts.poppins().copyWith(
      color: AppColors.blackColor,
      fontWeight: FontWeight.w400,
      fontSize: FontSizes.s14);
  static TextStyle blackMedium = GoogleFonts.poppins().copyWith(
      color: AppColors.blackColor,
      fontWeight: FontWeight.w500,
      fontSize: FontSizes.s14);
  static TextStyle blackSemiBold = GoogleFonts.poppins().copyWith(
      color: AppColors.blackColor,
      fontWeight: FontWeight.w600,
      fontSize: FontSizes.s14);
  static TextStyle blackBold = GoogleFonts.poppins().copyWith(
      color: AppColors.blackColor,
      fontWeight: FontWeight.w700,
      fontSize: FontSizes.s14);

  static TextStyle greyLight = GoogleFonts.poppins().copyWith(
      color: AppColors.blackColor,
      fontWeight: FontWeight.w300,
      fontSize: FontSizes.s14);
  static TextStyle greyNormal = GoogleFonts.poppins().copyWith(
      color: AppColors.blackColor,
      fontWeight: FontWeight.w400,
      fontSize: FontSizes.s14);
  static TextStyle greyMedium = GoogleFonts.poppins().copyWith(
      color: AppColors.blackColor,
      fontWeight: FontWeight.w500,
      fontSize: FontSizes.s14);
  static TextStyle greySemiBold = GoogleFonts.poppins().copyWith(
      color: AppColors.blackColor,
      fontWeight: FontWeight.w600,
      fontSize: FontSizes.s14);
  static TextStyle greyBold = GoogleFonts.poppins().copyWith(
      color: AppColors.blackColor,
      fontWeight: FontWeight.w700,
      fontSize: FontSizes.s14);
}
