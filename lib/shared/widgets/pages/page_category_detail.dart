import 'package:findjob/models/model_category.dart';
import 'package:findjob/models/model_job.dart';
import 'package:findjob/providers/job_provider.dart';
import 'package:findjob/shared/constants/styles.dart';
import 'package:findjob/shared/widgets/cards/card_jobs.dart';
import 'package:findjob/shared/widgets/others/loading_indicator.dart';
import 'package:findjob/shared/widgets/pages/page_job_detail.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

class PageCategoryDetail extends StatelessWidget {
  final ModelCategory modelCategory;

  const PageCategoryDetail({
    required this.modelCategory,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var jobProvider = Provider.of<JobProvider>(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: Get.width,
              height: IconSizes.xxl * 4.5,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(modelCategory.imageUrl),
                  fit: BoxFit.cover,
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
                      modelCategory.name,
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
                  FutureBuilder<List<ModelJob>>(
                    future:
                        jobProvider.getJobs(filterCategory: modelCategory.name),
                    builder: (context, snapshot) {
                      if (snapshot.connectionState == ConnectionState.done) {
                        return Column(
                          children: snapshot.data!
                              .map(
                                (e) => CardJobs(
                                  onTap: () =>
                                      Get.to(() => PageJobDetail(modelJob: e)),
                                  modelJob: e,
                                ),
                              )
                              .toList(),
                        );
                      } else {
                        return loadingIndicator();
                      }
                    },
                  ),
                  Text('New Startups',
                      style: TextStyles.blackNormal
                          .copyWith(fontSize: FontSizes.s16)),
                  verticalSpace(Insets.xs * 6.25),
                  FutureBuilder<List<ModelJob>>(
                    future: jobProvider.getJobs(),
                    builder: (context, snapshot) {
                      if (snapshot.connectionState == ConnectionState.done) {
                        return Column(
                          children: snapshot.data!
                              .map(
                                (e) => CardJobs(
                                  onTap: () =>
                                      Get.to(() => PageJobDetail(modelJob: e)),
                                  modelJob: e,
                                ),
                              )
                              .toList(),
                        );
                      } else {
                        return loadingIndicator();
                      }
                    },
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
