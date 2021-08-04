import 'package:findjob/shared/shared.dart';
import 'package:flutter/material.dart';

class ButtonOutlined extends StatelessWidget {
  final double? width;
  final double? height;
  final String? title;
  final Color? outlinedColor;
  final TextStyle? titleStyle;
  final Function? onPressed;

  const ButtonOutlined({
    this.width,
    this.height,
    this.title,
    this.titleStyle,
    this.outlinedColor,
    required this.onPressed,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed!(),
      style: ButtonStyle(
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(66),
            side: BorderSide(color: outlinedColor ?? Colors.white, width: 1),
          ),
        ),
        fixedSize: MaterialStateProperty.all(Size(width ?? 200, height ?? 45)),
        backgroundColor: MaterialStateProperty.all(Colors.transparent),
        overlayColor: MaterialStateProperty.all(Colors.black12),
        shadowColor: MaterialStateProperty.all(Colors.transparent),
      ),
      child: Text(title ?? '',
          style: titleStyle ??
              whiteTextStyle.copyWith(
                  fontSize: 14, fontWeight: FontWeight.w500)),
    );
  }
}
