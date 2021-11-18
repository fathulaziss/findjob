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
  static Color whiteColor2 = Color(0xFFF1F0F5);
  static Color blackColor = Color(0xFF272C2F);
  static Color greyColor = Color(0xFFB3B5C4);
  static Color greyColor2 = Color(0xFFC7C7C7);
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

class Sizes {
  static double get xs => 8 * scale;
  static double get sm => 12 * scale;
  static double get med => 20 * scale;
  static double get lg => 32 * scale;
  static double get xl => 48 * scale;
  static double get xxl => 80 * scale;
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

class BorderStyles {
  static OutlineInputBorder enableTextField = OutlineInputBorder(
    borderSide: BorderSide(color: Colors.transparent, width: 1),
    borderRadius: Corners.xxlBorder,
  );

  static OutlineInputBorder focusTextField = OutlineInputBorder(
    borderSide: BorderSide(color: AppColors.mainColor, width: 1),
    borderRadius: Corners.xxlBorder,
  );

  static OutlineInputBorder disableTextField = OutlineInputBorder(
    borderSide: BorderSide(color: AppColors.greyColor, width: 1),
    borderRadius: Corners.xxlBorder,
  );

  static OutlineInputBorder errorTextField = OutlineInputBorder(
    borderSide: BorderSide(color: AppColors.secondColor, width: 1),
    borderRadius: Corners.xxlBorder,
  );

  static OutlineInputBorder focusedErrorBorder = OutlineInputBorder(
    borderSide: BorderSide(color: AppColors.secondColor, width: 1),
    borderRadius: Corners.xxlBorder,
  );
}

InputDecoration inputDecoration(
    {required String hintText, Widget? prefixIcon, Widget? suffixIcon}) {
  return InputDecoration(
    isDense: true,
    filled: true,
    fillColor: AppColors.whiteColor2,
    border: BorderStyles.enableTextField,
    focusedBorder: BorderStyles.focusTextField,
    enabledBorder: BorderStyles.enableTextField,
    errorBorder: BorderStyles.errorTextField,
    disabledBorder: BorderStyles.disableTextField,
    focusedErrorBorder: BorderStyles.focusedErrorBorder,
    errorMaxLines: 5,
    prefixIconConstraints:
        BoxConstraints(minHeight: Sizes.lg, minWidth: Sizes.lg),
    suffixIconConstraints:
        BoxConstraints(minHeight: Sizes.lg, minWidth: Sizes.lg),
    contentPadding:
        EdgeInsets.symmetric(horizontal: Insets.xl, vertical: Insets.med),
    hintStyle: TextStyles.greyLight.copyWith(
        letterSpacing: 0.2,
        fontSize: FontSizes.s16,
        color: AppColors.greyColor2),
    hintText: hintText,
    prefixIcon: prefixIcon,
    suffixIcon: suffixIcon,
  );
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
