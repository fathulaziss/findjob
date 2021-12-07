import 'package:findjob/shared/assets.dart';
import 'package:findjob/shared/styles.dart';
import 'package:flutter/material.dart';

class ItemJobDetail extends StatelessWidget {
  final String itemDesc;

  const ItemJobDetail({
    required this.itemDesc,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(AssetIcons.iconDot, width: IconSizes.med / 2),
        horizontalSpace(Insets.sm),
        Expanded(
            child: Text(
          itemDesc,
          style: TextStyles.blackLight,
        ))
      ],
    );
  }
}
