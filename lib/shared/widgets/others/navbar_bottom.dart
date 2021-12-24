import 'package:findjob/shared/constants/assets.dart';
import 'package:findjob/shared/constants/styles.dart';
import 'package:flutter/material.dart';

class NavBarBottom extends StatelessWidget {
  final int? selectedIndex;
  final Function(int index)? onTap;

  NavBarBottom({this.selectedIndex, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        width: double.infinity,
        height: Sizes.med * 3.5,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                color: Colors.grey.withOpacity(0.3),
                spreadRadius: 5,
                blurRadius: 5,
                offset: Offset(0, 5))
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            InkWell(
              onTap: () {
                if (onTap != null) {
                  onTap!(0);
                }
              },
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    (selectedIndex == 0)
                        ? Image.asset(Assets.iconHomeActive,
                            width: IconSizes.med)
                        : Image.asset(Assets.iconHomeInActive,
                            width: IconSizes.med),
                    verticalSpace(Insets.xs * 1.25),
                    Text(
                      'Home',
                      style: (selectedIndex == 0)
                          ? TextStyles.blackBold
                              .copyWith(fontSize: FontSizes.s12)
                          : TextStyles.greyLight.copyWith(
                              fontSize: FontSizes.s12,
                              color: AppColors.greyColor2),
                    )
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () {
                if (onTap != null) {
                  onTap!(1);
                }
              },
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    (selectedIndex == 1)
                        ? Image.asset(Assets.iconNotificationActive,
                            width: IconSizes.med)
                        : Image.asset(Assets.iconNotificationInActive,
                            width: IconSizes.med),
                    verticalSpace(Insets.xs * 1.25),
                    Text(
                      'Notification',
                      style: (selectedIndex == 1)
                          ? TextStyles.blackBold
                              .copyWith(fontSize: FontSizes.s12)
                          : TextStyles.greyLight.copyWith(
                              fontSize: FontSizes.s12,
                              color: AppColors.greyColor2),
                    )
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () {
                if (onTap != null) {
                  onTap!(2);
                }
              },
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    (selectedIndex == 2)
                        ? Image.asset(Assets.iconLikeActive,
                            width: IconSizes.med)
                        : Image.asset(Assets.iconLikeInActive,
                            width: IconSizes.med),
                    verticalSpace(Insets.xs * 1.25),
                    Text(
                      'Favorite',
                      style: (selectedIndex == 2)
                          ? TextStyles.blackBold
                              .copyWith(fontSize: FontSizes.s12)
                          : TextStyles.greyLight.copyWith(
                              fontSize: FontSizes.s12,
                              color: AppColors.greyColor2),
                    )
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () {
                if (onTap != null) {
                  onTap!(3);
                }
              },
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    (selectedIndex == 3)
                        ? Image.asset(Assets.iconProfileActive,
                            width: IconSizes.med)
                        : Image.asset(Assets.iconProfileInActive,
                            width: IconSizes.med),
                    verticalSpace(Insets.xs * 1.25),
                    Text(
                      'Profile',
                      style: (selectedIndex == 3)
                          ? TextStyles.blackBold
                              .copyWith(fontSize: FontSizes.s12)
                          : TextStyles.greyLight.copyWith(
                              fontSize: FontSizes.s12,
                              color: AppColors.greyColor2),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
