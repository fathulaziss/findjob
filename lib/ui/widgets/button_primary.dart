import 'package:findjob/shared/styles.dart';
import 'package:flutter/material.dart';

class ButtonPrimary extends StatelessWidget {
  final double? height;
  final Color? backgroundColor;
  final String? title;
  final TextStyle? titleStyle;
  final Function? onPressed;

  const ButtonPrimary({
    this.height,
    this.backgroundColor,
    this.title,
    this.titleStyle,
    required this.onPressed,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: height ?? IconSizes.xl - 3,
      child: ElevatedButton(
        onPressed: () {
          onPressed!();
        },
        style: ButtonStyle(
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(Corners.lg * 8.25),
            ),
          ),
          backgroundColor: MaterialStateProperty.all(
              backgroundColor ?? AppColors.whiteColor),
          overlayColor: MaterialStateProperty.all(Colors.black12),
          shadowColor: MaterialStateProperty.all(Colors.transparent),
        ),
        child: Text(title ?? '', style: titleStyle ?? TextStyles.purpleMedium),
      ),
    );
  }
}
