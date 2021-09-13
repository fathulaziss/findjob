import 'package:findjob/shared/assets.dart';
import 'package:findjob/shared/shared.dart';
import 'package:flutter/material.dart';

class CustomBottomNavBar extends StatelessWidget {
  final int? selectedIndex;
  final Function(int index)? onTap;

  CustomBottomNavBar({this.selectedIndex, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 70,
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
                  Container(
                    width: 24,
                    height: 24,
                    margin: EdgeInsets.only(bottom: 5),
                    alignment: Alignment.center,
                    child: (selectedIndex == 0)
                        ? Image.asset(Assets.iconHomeActive)
                        : Image.asset(Assets.iconHomeInActive),
                  ),
                  Text(
                    'Home',
                    style: (selectedIndex == 0)
                        ? blackTextStyle.copyWith(fontSize: 10)
                        : grayTextStyle.copyWith(fontSize: 10),
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
                  Container(
                      width: 24,
                      height: 24,
                      margin: EdgeInsets.only(bottom: 5),
                      alignment: Alignment.center,
                      child: (selectedIndex == 1)
                          ? Image.asset(Assets.iconNotificationActive)
                          : Image.asset(Assets.iconNotificationInActive)),
                  Text(
                    'Notification',
                    style: (selectedIndex == 1)
                        ? blackTextStyle.copyWith(fontSize: 10)
                        : grayTextStyle.copyWith(fontSize: 10),
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
                  Container(
                      width: 24,
                      height: 24,
                      margin: EdgeInsets.only(bottom: 5),
                      alignment: Alignment.center,
                      child: (selectedIndex == 2)
                          ? Image.asset(Assets.iconLikeActive)
                          : Image.asset(Assets.iconLikeInActive)),
                  Text(
                    'Favorite',
                    style: (selectedIndex == 2)
                        ? blackTextStyle.copyWith(fontSize: 10)
                        : grayTextStyle.copyWith(fontSize: 10),
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
                  Container(
                      width: 24,
                      height: 24,
                      margin: EdgeInsets.only(bottom: 5),
                      alignment: Alignment.center,
                      child: (selectedIndex == 3)
                          ? Image.asset(Assets.iconProfileActive)
                          : Image.asset(Assets.iconProfileInActive)),
                  Text(
                    'Profile',
                    style: (selectedIndex == 3)
                        ? blackTextStyle.copyWith(fontSize: 10)
                        : grayTextStyle.copyWith(fontSize: 10),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
