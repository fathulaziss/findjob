import 'package:findjob/shared/styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class InputEmail extends StatefulWidget {
  final String label;
  final String hintText;
  final TextEditingController controller;
  final ValueSetter<String> email;
  final ValueSetter<bool> isValid;
  final EdgeInsetsGeometry? margin;
  final String? Function(String?)? validate;
  final String? Function(String?)? onChange;

  const InputEmail({
    required this.label,
    required this.hintText,
    required this.controller,
    required this.email,
    required this.isValid,
    this.margin,
    this.validate,
    this.onChange,
    Key? key,
  }) : super(key: key);

  @override
  _InputEmailState createState() => _InputEmailState();
}

class _InputEmailState extends State<InputEmail> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: widget.margin ?? EdgeInsets.only(bottom: Insets.xs * 2.5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(widget.label,
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
            decoration: inputDecoration(hintText: widget.hintText),
          )
        ],
      ),
    );
  }
}
