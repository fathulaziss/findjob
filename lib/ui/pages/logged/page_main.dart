import 'package:findjob/ui/pages/logged/page_home.dart';
import 'package:findjob/ui/pages/logged/page_favorite.dart';
import 'package:findjob/ui/pages/logged/page_notification.dart';
import 'package:findjob/ui/pages/logged/page_profile.dart';
import 'package:findjob/ui/widgets/navbar_bottom.dart';
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
            Align(
              alignment: Alignment.bottomCenter,
              child: NavBarBottom(
                selectedIndex: selectedPage,
                onTap: (pageIndex) {
                  setState(() {
                    selectedPage = pageIndex;
                  });
                  pageController.jumpToPage(selectedPage!);
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
