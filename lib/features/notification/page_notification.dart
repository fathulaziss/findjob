import 'package:findjob/shared/constants/styles.dart';
import 'package:flutter/material.dart';

class PageNotification extends StatelessWidget {
  const PageNotification({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Center(
        child: Text("Notification Page", style: TextStyles.blackMedium),
      ),
    );
  }
}
