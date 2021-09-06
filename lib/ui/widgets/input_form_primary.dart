import 'package:findjob/shared/shared.dart';
import 'package:flutter/material.dart';

class InputFormPrimary extends StatefulWidget {
  final String? title;
  final Color? colorBorder;
  final String? hintText;

  const InputFormPrimary({
    required this.title,
    this.colorBorder,
    required this.hintText,
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
      margin: EdgeInsets.only(
          bottom: (MediaQuery.of(context).size.width > 380) ? 20 : 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(widget.title ?? '',
              style: grayTextStyle.copyWith(
                  fontSize: (MediaQuery.of(context).size.width > 380) ? 16 : 14,
                  fontWeight: FontWeight.w400)),
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
              style: blackTextStyle.copyWith(
                  fontSize: (MediaQuery.of(context).size.width > 380) ? 16 : 14,
                  fontWeight: FontWeight.w400),
              autofocus: true,
              decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.symmetric(horizontal: 20),
                hintStyle: grayTextStyle.copyWith(
                    fontSize:
                        (MediaQuery.of(context).size.width > 380) ? 16 : 14,
                    fontWeight: FontWeight.w300),
                hintText: widget.hintText ?? '',
              ),
            ),
          )
        ],
      ),
    );
  }
}
