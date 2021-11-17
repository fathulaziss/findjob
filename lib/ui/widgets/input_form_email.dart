import 'package:findjob/shared/styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class InputFormEmail extends StatefulWidget {
  final TextEditingController controller;
  final ValueSetter<String> email;
  final ValueSetter<bool> isValid;
  final Color? colorBorder;
  final EdgeInsetsGeometry? margin;
  final String? Function(String?)? validate;
  final String? Function(String?)? onChange;

  const InputFormEmail({
    required this.controller,
    required this.email,
    required this.isValid,
    this.colorBorder,
    this.margin,
    this.validate,
    this.onChange,
    Key? key,
  }) : super(key: key);

  @override
  _InputFormEmailState createState() => _InputFormEmailState();
}

class _InputFormEmailState extends State<InputFormEmail> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: widget.margin ?? EdgeInsets.only(bottom: Insets.xs * 2.5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Email Address',
              style: TextStyles.greyNormal.copyWith(fontSize: FontSizes.s16)),
          verticalSpace(Insets.xs * 2),
          TextFormField(
            style: TextStyles.purpleNormal.copyWith(fontSize: FontSizes.s16),
            autofocus: true,
            obscureText: false,
            keyboardType: TextInputType.emailAddress,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            textCapitalization: TextCapitalization.none,
            enableInteractiveSelection: true,
            cursorColor: AppColors.mainColor,
            controller: widget.controller,
            onChanged: widget.onChange,
            validator: widget.validate ??
                (value) {
                  if (!GetUtils.isEmail(value.toString())) {
                    widget.isValid(false);
                    widget.email('');
                    return 'Email format is not correct';
                  }
                  widget.email(value.toString());
                  widget.isValid(true);
                  return null;
                },
            decoration: inputDecoration(hintText: 'jhony@example.com'),
          )
        ],
      ),
    );
  }
}
