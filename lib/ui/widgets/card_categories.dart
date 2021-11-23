import 'package:findjob/shared/styles.dart';
import 'package:flutter/material.dart';

class CardCategories extends StatelessWidget {
  final String title;
  final String image;
  final double elevation;
  final EdgeInsets margin;

  const CardCategories({
    required this.title,
    required this.image,
    this.elevation = 1,
    this.margin = EdgeInsets.zero,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: margin,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(Corners.xl),
        side: BorderSide.none,
      ),
      elevation: elevation,
      child: Container(
        width: IconSizes.xxl * 2.5,
        height: IconSizes.xxl * 3.3,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(Corners.xl),
            image: DecorationImage(image: AssetImage(image))),
        alignment: Alignment.bottomLeft,
        child: Padding(
          padding: EdgeInsets.only(left: Insets.lg, bottom: Insets.lg),
          child: Text(title,
              style: TextStyles.whiteMedium.copyWith(fontSize: FontSizes.s18)),
        ),
      ),
    );
  }
}
