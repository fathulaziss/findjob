import 'package:findjob/shared/assets.dart';
import 'package:findjob/shared/styles.dart';
import 'package:findjob/ui/widgets/card_categories.dart';
import 'package:flutter/material.dart';

class PageHome extends StatelessWidget {
  const PageHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          buildProfile(),
          Container(
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(
                      Insets.med * 2, 0, Insets.med * 2, Insets.lg),
                  child: Text('Hot Categories',
                      style: TextStyles.blackNormal
                          .copyWith(fontSize: FontSizes.s16)),
                ),
                CardCategories(
                    title: 'Website\nDeveloper', image: Assets.imageCategory1)
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
