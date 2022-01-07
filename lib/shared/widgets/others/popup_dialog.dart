import 'package:findjob/shared/constants/styles.dart';
import 'package:findjob/shared/widgets/buttons/button_primary.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

showPopUpDialog({
  required String title,
  required String description,
  required String labelButton,
  required Function() onPress,
  Color? buttonColor,
  bool dismissible = false,
}) {
  Get.dialog(
      Dialog(
        backgroundColor: Colors.transparent,
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16), color: Colors.white),
          child: Padding(
            padding: EdgeInsets.all(Insets.lg),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  title,
                  style: TextStyles.blackSemiBold
                      .copyWith(fontSize: FontSizes.s16),
                  textAlign: TextAlign.center,
                ),
                verticalSpace(Insets.xl),
                Text(
                  description,
                  style: TextStyles.blackNormal,
                  textAlign: TextAlign.center,
                ),
                verticalSpace(Insets.xl),
                ButtonPrimary(
                  onPressed: onPress,
                  title: labelButton,
                  backgroundColor: buttonColor ?? AppColors.mainColor,
                  titleStyle: TextStyles.whiteBold,
                ),
              ],
            ),
          ),
        ),
      ),
      barrierDismissible: dismissible);
}
