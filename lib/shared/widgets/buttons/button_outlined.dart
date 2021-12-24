import 'package:findjob/shared/constants/styles.dart';
import 'package:flutter/material.dart';

class ButtonOutlined extends StatelessWidget {
  final double? height;
  final String? title;
  final Color? outlinedColor;
  final TextStyle? titleStyle;
  final Function? onPressed;

  const ButtonOutlined({
    this.height,
    this.title,
    this.titleStyle,
    this.outlinedColor,
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
              side: BorderSide(
                  color: outlinedColor ?? AppColors.whiteColor, width: 1),
            ),
          ),
          backgroundColor: MaterialStateProperty.all(Colors.transparent),
          overlayColor: MaterialStateProperty.all(Colors.black12),
          shadowColor: MaterialStateProperty.all(Colors.transparent),
        ),
        child: Text(title ?? '', style: titleStyle ?? TextStyles.whiteMedium),
      ),
    );
  }
}
