import 'package:findjob/shared/styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CardJobs extends StatelessWidget {
  final String positionName;
  final String companyName;
  final String imageCompany;
  final Function() onTap;

  const CardJobs({
    required this.positionName,
    required this.companyName,
    required this.imageCompany,
    required this.onTap,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: EdgeInsets.fromLTRB(Insets.xs * 2.5, 0, 0, Insets.xs * 6.25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(imageCompany, width: Sizes.med * 2.25),
                horizontalSpace(Insets.med * 2),
                Expanded(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(positionName,
                        style: TextStyles.blackMedium
                            .copyWith(fontSize: FontSizes.s16)),
                    verticalSpace(Insets.xs / 2),
                    Text(companyName, style: TextStyles.greyNormal),
                    verticalSpace(Insets.lg),
                    Container(
                        width: Get.width,
                        height: 1,
                        color: AppColors.greyColor3)
                  ],
                ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
