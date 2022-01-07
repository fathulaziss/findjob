import 'package:findjob/shared/constants/styles.dart';
import 'package:findjob/shared/widgets/others/navbar_bottom.dart';
import 'package:findjob/features/home/page_home.dart';
import 'package:findjob/features/favorite/page_favorite.dart';
import 'package:findjob/features/notification/page_notification.dart';
import 'package:findjob/features/profile/page_profile.dart';
import 'package:flutter/material.dart';

class PageMain extends StatefulWidget {
  final int initial;
  const PageMain({
    required this.initial,
    Key? key,
  }) : super(key: key);

  @override
  _PageMainState createState() => _PageMainState();
}

class _PageMainState extends State<PageMain> {
  PageController pageController = PageController();
  int? selectedPage;

  @override
  void initState() {
    selectedPage = widget.initial;
    super.initState();
  }

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
        child: Stack(
          children: [
            PageView(
              controller: pageController,
              onPageChanged: (pageIndex) {
                setState(() {
                  selectedPage = pageIndex;
                });
              },
              children: [
                PageHome(),
                PageNotification(),
                PageFavorite(),
                PageProfile()
              ],
            ),
            NavBarBottom(
              selectedIndex: selectedPage,
              onTap: (pageIndex) {
                setState(() {
                  selectedPage = pageIndex;
                });
                pageController.jumpToPage(selectedPage!);
              },
            )
          ],
        ),
      ),
    );
  }
}
