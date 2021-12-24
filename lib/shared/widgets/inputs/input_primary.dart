import 'package:findjob/shared/constants/styles.dart';
import 'package:flutter/material.dart';

class InputPrimary extends StatefulWidget {
  final String label;
  final String hintText;
  final TextEditingController controller;
  final EdgeInsetsGeometry? margin;
  final String? Function(String?)? validate;
  final String? Function(String?)? onChange;
  final TextInputType keyboardType;

  const InputPrimary({
    required this.label,
    required this.hintText,
    required this.controller,
    this.margin,
    this.validate,
    this.onChange,
    this.keyboardType = TextInputType.text,
    Key? key,
  }) : super(key: key);

  @override
  _InputPrimaryState createState() => _InputPrimaryState();
}

class _InputPrimaryState extends State<InputPrimary> {
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
            keyboardType: widget.keyboardType,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            textCapitalization: TextCapitalization.none,
            enableInteractiveSelection: true,
            cursorColor: AppColors.mainColor,
            controller: widget.controller,
            onChanged: widget.onChange,
            validator: widget.validate,
            decoration: inputDecoration(hintText: widget.hintText),
          )
        ],
      ),
    );
  }
}
