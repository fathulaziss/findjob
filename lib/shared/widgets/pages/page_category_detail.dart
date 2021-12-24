import 'package:findjob/shared/constants/assets.dart';
import 'package:findjob/shared/constants/styles.dart';
import 'package:findjob/shared/widgets/cards/card_jobs.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PageCategoryDetail extends StatelessWidget {
  const PageCategoryDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: Get.width,
              height: IconSizes.xxl * 4.5,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(Assets.imageCategoryDetail),
                  fit: BoxFit.fill,
                ),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(Corners.xl),
                    bottomRight: Radius.circular(Corners.xl)),
              ),
              alignment: Alignment.bottomLeft,
              child: Padding(
                padding: EdgeInsets.only(
                    left: Insets.med * 2, bottom: Insets.xl * 1.5),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Website Developer',
                      style: TextStyles.whiteSemiBold
                          .copyWith(fontSize: FontSizes.s24),
                    ),
                    verticalSpace(Insets.xs / 2),
                    Text(
                      '12,309 available',
                      style: TextStyles.whiteNormal
                          .copyWith(fontSize: FontSizes.s16),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: Insets.med * 2, vertical: Insets.xl * 1.5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Big Companies',
                      style: TextStyles.blackNormal
                          .copyWith(fontSize: FontSizes.s16)),
                  verticalSpace(Insets.xs * 6.25),
                  CardJobs(
                      onTap: () {},
                      positionName: 'Front-End Developer',
                      companyName: 'Google',
                      imageCompany: Assets.logoGoogle),
                  CardJobs(
                      onTap: () {},
                      positionName: 'UI Designer Developer',
                      companyName: 'Instagram',
                      imageCompany: Assets.logoInstagram),
                  CardJobs(
                      onTap: () {},
                      positionName: 'Data Scientist',
                      companyName: 'Facebook',
                      imageCompany: Assets.logoFacebook),
                  verticalSpace(Insets.xl * 1.5),
                  Text('New Startups',
                      style: TextStyles.blackNormal
                          .copyWith(fontSize: FontSizes.s16)),
                  verticalSpace(Insets.xs * 6.25),
                  CardJobs(
                      onTap: () {},
                      positionName: 'Front-End Developer',
                      companyName: 'Google',
                      imageCompany: Assets.logoGoogle),
                  CardJobs(
                      onTap: () {},
                      positionName: 'UI Designer Developer',
                      companyName: 'Instagram',
                      imageCompany: Assets.logoInstagram),
                  CardJobs(
                      onTap: () {},
                      positionName: 'Data Scientist',
                      companyName: 'Facebook',
                      imageCompany: Assets.logoFacebook),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
