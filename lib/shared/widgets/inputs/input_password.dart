import 'package:findjob/shared/constants/styles.dart';
import 'package:findjob/shared/helpers/regex.dart';
import 'package:flutter/material.dart';

class InputPassword extends StatefulWidget {
  final String label;
  final String hintText;
  final TextEditingController controller;
  final ValueSetter<bool> isValid;
  final EdgeInsetsGeometry? margin;
  final String? Function(String?)? validate;
  final String? Function(String?)? onChange;

  const InputPassword({
    required this.label,
    required this.hintText,
    required this.controller,
    required this.isValid,
    this.margin,
    this.validate,
    this.onChange,
    Key? key,
  }) : super(key: key);

  @override
  _InputPasswordState createState() => _InputPasswordState();
}

class _InputPasswordState extends State<InputPassword> {
  bool obsecureText = true;
  void onTap() {
    setState(() {
      obsecureText = !obsecureText;
    });
  }

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
            obscureText: obsecureText,
            keyboardType: TextInputType.text,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            textCapitalization: TextCapitalization.none,
            enableInteractiveSelection: true,
            cursorColor: AppColors.mainColor,
            controller: widget.controller,
            onChanged: widget.onChange,
            validator: widget.validate ??
                (value) {
                  if (!isValidPassword(password: value.toString())) {
                    widget.isValid(false);
                    return '- Password minimum 8 characters\n' +
                        '- Consists of uppercases, lowercases, and numbers';
                  }
                  widget.isValid(true);
                  return null;
                },
            decoration: inputDecoration(
              hintText: widget.hintText,
              suffixIcon: Padding(
                padding: EdgeInsets.only(right: Insets.lg),
                child: InkWell(
                  child: obsecureText
                      ? Icon(
                          Icons.visibility_off,
                          size: IconSizes.med,
                          color: AppColors.mainColor,
                        )
                      : Icon(
                          Icons.visibility,
                          size: IconSizes.med,
                          color: AppColors.mainColor,
                        ),
                  onTap: onTap,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
