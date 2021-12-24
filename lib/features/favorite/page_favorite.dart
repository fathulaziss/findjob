import 'package:findjob/shared/constants/styles.dart';
import 'package:flutter/material.dart';

class PageFavorite extends StatelessWidget {
  const PageFavorite({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Center(
        child: Text("Like Page", style: TextStyles.blackMedium),
      ),
    );
  }
}
