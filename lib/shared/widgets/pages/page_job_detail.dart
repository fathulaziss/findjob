import 'package:findjob/models/model_job.dart';
import 'package:findjob/shared/constants/styles.dart';
import 'package:findjob/shared/widgets/buttons/button_primary.dart';
import 'package:findjob/shared/widgets/others/item_job_detail.dart';
import 'package:flutter/material.dart';

class PageJobDetail extends StatefulWidget {
  final ModelJob modelJob;

  const PageJobDetail({
    required this.modelJob,
    Key? key,
  }) : super(key: key);

  @override
  State<PageJobDetail> createState() => _PageJobDetailState();
}

class _PageJobDetailState extends State<PageJobDetail> {
  bool isApply = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.mainColor,
        automaticallyImplyLeading: false,
        toolbarHeight: 0,
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: Insets.med * 2),
          child: SingleChildScrollView(
            child: Column(
              children: [
                isApply ? _buildNotifApply() : SizedBox(height: Insets.med * 2),
                _buildTitle(),
                verticalSpace(Insets.xl * 1.5),
                _buildQualification(),
                verticalSpace(Insets.xl * 1.5),
                _buildAboutJob(),
                verticalSpace(Insets.xl * 1.5),
                _buildResponsibility(),
                verticalSpace(Insets.xl * 1.5),
                ButtonPrimary(
                  onPressed: () {
                    setState(() {
                      isApply = !isApply;
                    });
                  },
                  margin: EdgeInsets.symmetric(horizontal: Insets.xxl * 2),
                  backgroundColor:
                      isApply ? AppColors.secondColor : AppColors.mainColor,
                  title: isApply ? 'Cancel Apply' : 'Apply for Job',
                  titleStyle: TextStyles.whiteMedium,
                ),
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
        Image.network(widget.modelJob.companyLogo, width: IconSizes.xxl),
        verticalSpace(Insets.xl),
        Text(
          widget.modelJob.name,
          textAlign: TextAlign.center,
          style: TextStyles.blackSemiBold.copyWith(fontSize: FontSizes.s20),
        ),
        verticalSpace(Insets.xs / 2),
        Text(
          '${widget.modelJob.companyName} • ${widget.modelJob.location}',
          textAlign: TextAlign.center,
          style: TextStyles.greyNormal,
        ),
      ],
    );
  }

  Widget _buildQualification() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Qualifications', style: TextStyles.blackMedium),
        verticalSpace(Insets.lg),
        Column(
            children: widget.modelJob.qualifications
                .map((e) => ItemJobDetail(itemDesc: e))
                .toList()),
      ],
    );
  }

  Widget _buildAboutJob() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('About the job', style: TextStyles.blackMedium),
        verticalSpace(Insets.lg),
        Column(
          children: widget.modelJob.about
              .map((e) => ItemJobDetail(itemDesc: e))
              .toList(),
        ),
      ],
    );
  }

  Widget _buildResponsibility() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Responsibilities', style: TextStyles.blackMedium),
        verticalSpace(Insets.lg),
        Column(
          children: widget.modelJob.responsibilities
              .map((e) => ItemJobDetail(itemDesc: e))
              .toList(),
        ),
      ],
    );
  }

  Widget _buildNotifApply() {
    return Container(
      margin: EdgeInsets.symmetric(
          horizontal: Insets.med * 2, vertical: Insets.xl * 1.5),
      padding:
          EdgeInsets.symmetric(horizontal: Insets.med * 2, vertical: Insets.sm),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(Corners.lg * 5),
          color: AppColors.greyColor3),
      alignment: Alignment.center,
      child: Text(
        'You have applied this job and the recruiter will contact you',
        textAlign: TextAlign.center,
        style: TextStyles.greyNormal.copyWith(color: AppColors.greyColor4),
      ),
    );
  }
}
