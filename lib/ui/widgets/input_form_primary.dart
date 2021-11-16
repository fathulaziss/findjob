import 'package:findjob/shared/styles.dart';
import 'package:flutter/material.dart';

class InputFormPrimary extends StatefulWidget {
  final String? title;
  final Color? colorBorder;
  final String? hintText;
  final EdgeInsetsGeometry? margin;
  final bool? obsecureText;
  final TextEditingController? controller;

  const InputFormPrimary({
    required this.title,
    this.obsecureText,
    required this.controller,
    this.colorBorder,
    required this.hintText,
    this.margin,
    Key? key,
  }) : super(key: key);

  @override
  _InputFormPrimaryState createState() => _InputFormPrimaryState();
}

class _InputFormPrimaryState extends State<InputFormPrimary> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: widget.margin ?? EdgeInsets.only(bottom: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(widget.title ?? '', style: TextStyles.greyNormal),
          SizedBox(height: 8),
          Container(
            width: double.infinity,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: Color(0xFFF1F0F5),
                border: Border.all(
                    width: 1, color: widget.colorBorder ?? Colors.transparent)),
            child: TextFormField(
              style: TextStyles.blackNormal,
              autofocus: true,
              obscureText: widget.obsecureText ?? false,
              controller: widget.controller,
              decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.symmetric(horizontal: 20),
                hintStyle: TextStyles.greyLight.copyWith(letterSpacing: 0.2),
                hintText: widget.hintText ?? '',
              ),
            ),
          )
        ],
      ),
    );
  }
}
