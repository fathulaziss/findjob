import 'package:findjob/shared/constants/styles.dart';
import 'package:flutter/material.dart';

class PageProfile extends StatelessWidget {
  const PageProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Center(
        child: Text("Profile Page", style: TextStyles.blackMedium),
      ),
    );
  }
}
