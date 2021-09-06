import 'package:findjob/shared/shared.dart';
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
      height: height ?? 45,
      child: ElevatedButton(
        onPressed: () {
          onPressed!();
        },
        style: ButtonStyle(
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(66),
            ),
          ),
          backgroundColor:
              MaterialStateProperty.all(backgroundColor ?? Colors.white),
          overlayColor: MaterialStateProperty.all(Colors.black12),
          shadowColor: MaterialStateProperty.all(Colors.transparent),
        ),
        child: Text(title ?? '',
            style: titleStyle ??
                purpleTextStyle.copyWith(
                    fontSize: 14, fontWeight: FontWeight.w500)),
      ),
    );
  }
}
