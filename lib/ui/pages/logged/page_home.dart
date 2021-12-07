import 'package:findjob/model/model_category.dart';
import 'package:findjob/shared/assets.dart';
import 'package:findjob/shared/styles.dart';
import 'package:findjob/ui/pages/logged/page_category_detail.dart';
import 'package:findjob/ui/pages/logged/page_job_detail.dart';
import 'package:findjob/ui/widgets/card_categories.dart';
import 'package:findjob/ui/widgets/card_jobs.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PageHome extends StatefulWidget {
  const PageHome({Key? key}) : super(key: key);

  @override
  State<PageHome> createState() => _PageHomeState();
}

class _PageHomeState extends State<PageHome> {
  List<ModelCategory> listCategory = [
    ModelCategory(title: 'Website\nDeveloper', image: Assets.imageCategory1),
    ModelCategory(title: 'Mobile\nDeveloper', image: Assets.imageCategory2),
    ModelCategory(title: 'App\nDesigner', image: Assets.imageCategory3),
    ModelCategory(title: 'Content\nWriter', image: Assets.imageCategory4),
    ModelCategory(title: 'Video\nGrapher', image: Assets.imageCategory5),
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
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
                  child: ListView.builder(
                    itemCount: listCategory.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsets.only(
                          left: index == 0 ? Insets.med : 0,
                          right: index == listCategory.length ? Insets.sm : 0,
                        ),
                        child: CardCategories(
                          margin: EdgeInsets.only(
                              left: Insets.med, right: Insets.sm),
                          onTap: () {
                            Get.to(() => PageCategoryDetail());
                          },
                          title: listCategory[index].title,
                          image: listCategory[index].image,
                        ),
                      );
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
                CardJobs(
                    onTap: () {
                      Get.to(() => PageJobDetail());
                    },
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
                verticalSpace(Insets.xxl),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget buildProfile() {
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
                Text('Jason Powell',
                    style: TextStyles.blackSemiBold
                        .copyWith(fontSize: FontSizes.s24))
              ],
            ),
          ),
          Image.asset(Assets.userDefault, width: IconSizes.xxl)
        ],
      ),
    );
  }
}
