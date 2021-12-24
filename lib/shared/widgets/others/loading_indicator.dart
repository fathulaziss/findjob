import 'package:findjob/shared/constants/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

Widget loadingIndicator({Color? color}) {
  return SpinKitFadingCircle(
    size: Sizes.lg + 3,
    duration: const Duration(seconds: 3),
    color: color ?? AppColors.mainColor,
  );
}
