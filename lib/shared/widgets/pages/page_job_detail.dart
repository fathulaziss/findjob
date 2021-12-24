import 'package:findjob/shared/constants/assets.dart';
import 'package:findjob/shared/constants/styles.dart';
import 'package:findjob/shared/widgets/buttons/button_primary.dart';
import 'package:findjob/shared/widgets/others/item_job_detail.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PageJobDetail extends StatelessWidget {
  const PageJobDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: Get.width,
          color: AppColors.whiteColor,
          padding: EdgeInsets.symmetric(horizontal: Insets.med * 2),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(
                      horizontal: Insets.med * 2, vertical: Insets.xl * 1.5),
                  padding: EdgeInsets.symmetric(
                      horizontal: Insets.med * 2, vertical: Insets.sm),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(Corners.lg * 5),
                      color: AppColors.greyColor3),
                  alignment: Alignment.center,
                  child: Text(
                    'You have applied this job and the recruiter will contact you',
                    textAlign: TextAlign.center,
                    style: TextStyles.greyNormal
                        .copyWith(color: AppColors.greyColor4),
                  ),
                ),
                _buildTitle(),
                verticalSpace(Insets.xl * 1.5),
                _buildQualification(),
                verticalSpace(Insets.xl * 1.5),
                _buildAboutJob(),
                verticalSpace(Insets.xl * 1.5),
                _buildResponsibility(),
                verticalSpace(Insets.xl * 1.5),
                ButtonPrimary(
                  onPressed: () {},
                  margin: EdgeInsets.symmetric(horizontal: Insets.xxl * 2),
                  backgroundColor: AppColors.secondColor,
                  title: 'Cancel Apply',
                  titleStyle: TextStyles.whiteMedium,
                ),
                // ButtonPrimary(
                //   margin: EdgeInsets.symmetric(horizontal: Insets.xxl * 2),
                //   onPressed: () {},
                //   backgroundColor: AppColors.mainColor,
                //   title: 'Apply for Job',
                //   titleStyle: TextStyles.whiteMedium,
                // ),
                verticalSpace(Insets.sm),
                TextButton(
                  onPressed: () {},
                  child: Text('Message Recruiter', style: TextStyles.greyLight),
                ),
                verticalSpace(Insets.xl),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildTitle() {
    return Column(
      children: [
        Image.asset(Assets.logoGoogle, width: IconSizes.xxl),
        verticalSpace(Insets.xl),
        Text(
          'Front-End Developer',
          textAlign: TextAlign.center,
          style: TextStyles.blackSemiBold.copyWith(fontSize: FontSizes.s20),
        ),
        verticalSpace(Insets.xs / 2),
        Text(
          'Google, Inc • Jakarta',
          textAlign: TextAlign.center,
          style: TextStyles.greyNormal,
        ),
      ],
    );
  }

  Widget _buildQualification() {
    return Column(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Qualifications', style: TextStyles.blackMedium),
            verticalSpace(Insets.lg),
            ItemJobDetail(itemDesc: 'Full-Time On Site'),
            verticalSpace(Insets.lg),
            ItemJobDetail(itemDesc: "Start at \$18,000 per month"),
          ],
        ),
      ],
    );
  }

  Widget _buildAboutJob() {
    return Column(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('About the job', style: TextStyles.blackMedium),
            verticalSpace(Insets.lg),
            ItemJobDetail(
                itemDesc:
                    "Candidate must possess at least a Bachelor's Degree."),
            verticalSpace(Insets.lg),
            ItemJobDetail(
                itemDesc:
                    "Able to use Microsoft Office and Google based service."),
            verticalSpace(Insets.lg),
            ItemJobDetail(
                itemDesc:
                    "Have an excellent time management, good at organized and details."),
          ],
        ),
      ],
    );
  }

  Widget _buildResponsibility() {
    return Column(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Responsibilities', style: TextStyles.blackMedium),
            verticalSpace(Insets.lg),
            ItemJobDetail(
                itemDesc:
                    "Initiate and promote any programs, events, training, or activities."),
            verticalSpace(Insets.lg),
            ItemJobDetail(
                itemDesc:
                    "Assessing and anticipating needs and collaborate with Division."),
          ],
        ),
      ],
    );
  }
}
