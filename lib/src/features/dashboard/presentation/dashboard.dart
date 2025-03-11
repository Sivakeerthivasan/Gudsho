import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gudsho/src/core/assets/assets.dart';
import 'package:gudsho/src/features/dashboard/presentation/tabs/home_tab.dart';

class DashBoardScreen extends StatefulWidget {
  const DashBoardScreen({super.key});

  @override
  State<DashBoardScreen> createState() => _DashBoardScreenState();
}

class _DashBoardScreenState extends State<DashBoardScreen> {
  int _selectedPageIndex = 0;
  final List<Widget> _pages = [
    HomePageTab(),
    HomePageTab(),
    HomePageTab(),
    HomePageTab(),
  ];
  late PageController pageController;
  @override
  void initState() {
    super.initState();
    pageController = PageController(initialPage: _selectedPageIndex);
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        shape: CircleBorder(),
        elevation: 0,
        onPressed: () {},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: PageView(
        physics: NeverScrollableScrollPhysics(),
        controller: pageController,
        children: _pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed, // Fixed
        backgroundColor: Colors.white, // <--
        selectedItemColor: Color(0xFF0B4C51),
        items: [
          BottomNavigationBarItem(
            label: 'Home',
            icon: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: _selectedPageIndex == 0 ? Color(0xFFEDFFF6) : null,
                ),
                child: SvgPicture.asset(Assets.homeBottomNavIcon)),
          ),
          BottomNavigationBarItem(
            label: 'Media Hub',
            icon: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: _selectedPageIndex == 1 ? Color(0xFFEDFFF6) : null,
                ),
                child: SvgPicture.asset(Assets.mediaHubBottomNavIcon)),
          ),
          BottomNavigationBarItem(
            label: 'Posts',
            icon: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: _selectedPageIndex == 2 ? Color(0xFFEDFFF6) : null,
                ),
                child: SvgPicture.asset(Assets.postBottonNavIcon)),
          ),
          BottomNavigationBarItem(
            label: 'Analytics',
            icon: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: _selectedPageIndex == 3 ? Color(0xFFEDFFF6) : null,
                ),
                child: SvgPicture.asset(Assets.analyticsBottomNavItem)),
          ),
        ],
        currentIndex: _selectedPageIndex,
        onTap: (selectedPageIndex) {
          setState(() {
            _selectedPageIndex = selectedPageIndex;
            pageController.jumpToPage(selectedPageIndex);
          });
        },
      ),
    );
  }
}
