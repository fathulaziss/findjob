import 'package:findjob/ui/pages/logged/home_page.dart';
import 'package:findjob/ui/pages/logged/favorite_page.dart';
import 'package:findjob/ui/pages/logged/notification_page.dart';
import 'package:findjob/ui/pages/logged/profile_page.dart';
import 'package:findjob/ui/widgets/custom_bottom_navbar.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  final int initial;
  const MainPage({
    required this.initial,
    Key? key,
  }) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
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
                HomePage(),
                NotificationPage(),
                FavoritePage(),
                ProfilePage()
              ],
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: CustomBottomNavBar(
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
