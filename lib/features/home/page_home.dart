import 'package:findjob/models/model_category.dart';
import 'package:findjob/models/model_job.dart';
import 'package:findjob/providers/category_provider.dart';
import 'package:findjob/providers/job_provider.dart';
import 'package:findjob/providers/user_provider.dart';
import 'package:findjob/shared/constants/assets.dart';
import 'package:findjob/shared/constants/styles.dart';
import 'package:findjob/shared/widgets/cards/card_categories.dart';
import 'package:findjob/shared/widgets/cards/card_jobs.dart';
import 'package:findjob/shared/widgets/others/loading_indicator.dart';
import 'package:findjob/shared/widgets/pages/page_category_detail.dart';
import 'package:findjob/shared/widgets/pages/page_job_detail.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

class PageHome extends StatefulWidget {
  const PageHome({Key? key}) : super(key: key);

  @override
  State<PageHome> createState() => _PageHomeState();
}

class _PageHomeState extends State<PageHome> {
  @override
  Widget build(BuildContext context) {
    var categoryProvider = Provider.of<CategoryProvider>(context);
    var jobProvider = Provider.of<JobProvider>(context);
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Flex(
        direction: Axis.vertical,
        children: [
          buildProfile(),
          Container(
            width: Get.width,
            height: IconSizes.med * 10,
            child: Flex(
              direction: Axis.vertical,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(
                      Insets.med * 2, 0, Insets.med * 2, Insets.lg),
                  child: Text('Hot Categories',
                      style: TextStyles.blackNormal
                          .copyWith(fontSize: FontSizes.s16)),
                ),
                Expanded(
                  child: FutureBuilder<List<ModelCategory>>(
                    future: categoryProvider.getJobCategories(),
                    builder: (context, snapshot) {
                      if (snapshot.connectionState == ConnectionState.done) {
                        return ListView.builder(
                          itemCount: snapshot.data!.length,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: EdgeInsets.only(
                                left: index == 0 ? Insets.med : 0,
                                right: index == snapshot.data!.length - 1
                                    ? Insets.med
                                    : 0,
                              ),
                              child: CardCategories(
                                margin: EdgeInsets.only(
                                    left: Insets.med, right: Insets.sm),
                                onTap: () {
                                  Get.to(() => PageCategoryDetail(
                                      modelCategory: snapshot.data![index]));
                                },
                                title: snapshot.data![index].name,
                                image: snapshot.data![index].imageUrl,
                              ),
                            );
                          },
                        );
                      } else {
                        return loadingIndicator();
                      }
                    },
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: Insets.med * 2, vertical: Insets.xl * 1.5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Just Posted',
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
                verticalSpace(Insets.xxl),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget buildProfile() {
    var userProvider = Provider.of<UserProvider>(context, listen: false);
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: Insets.med * 2, vertical: Insets.xl * 1.5),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Hello,',
                    style: TextStyles.greyNormal
                        .copyWith(fontSize: FontSizes.s16)),
                verticalSpace(Insets.xs / 2),
                Text(userProvider.user.name,
                    style: TextStyles.blackSemiBold
                        .copyWith(fontSize: FontSizes.s24))
              ],
            ),
          ),
          horizontalSpace(20.w),
          Image.asset(Assets.userDefault, width: IconSizes.xxl)
        ],
      ),
    );
  }
}
