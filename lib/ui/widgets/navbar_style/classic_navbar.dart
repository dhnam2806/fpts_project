import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent-tab-view.dart';

class ClassicNavbar extends StatefulWidget {
  @override
  State<ClassicNavbar> createState() => _ClassicNavbarState();
}

class _ClassicNavbarState extends State<ClassicNavbar> {
  PersistentTabController _controller =
      PersistentTabController(initialIndex: 0);
  List<Widget> _buildScreens() {
    return [
      Container(),
      Container(),
      Container(),
      Container(),
      Container(),
    ];
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: Icon(CupertinoIcons.home),
        title: ("Trang chủ"),
        activeColorPrimary: Color(0xFF00B36F),
        inactiveColorPrimary: Colors.grey,
      ),
      PersistentBottomNavBarItem(
          icon: Icon(CupertinoIcons.chart_bar_alt_fill),
          title: ("Đặt lệnh"),
          activeColorPrimary: Color(0xFF00B36F),
          inactiveColorPrimary: Colors.grey),
      PersistentBottomNavBarItem(
        icon: Icon(CupertinoIcons.news),
        title: ("Sổ lệnh"),
        activeColorPrimary: Color(0xFF00B36F),
        inactiveColorPrimary: Colors.grey,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(CupertinoIcons.folder_badge_person_crop),
        title: ("Tài sản"),
        activeColorPrimary: Color(0xFF00B36F),
        inactiveColorPrimary: Colors.grey,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(CupertinoIcons.chat_bubble),
        title: ("Chức năng"),
        activeColorPrimary: Color(0xFF00B36F),
        inactiveColorPrimary: Colors.grey,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70.h,
      margin: EdgeInsets.symmetric(
        horizontal: 8.w,
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16.r),
        child: PersistentTabView(
          context,
          controller: _controller,
          navBarHeight: 64.h,
          screens: _buildScreens(),
          items: _navBarsItems(),
          confineInSafeArea: true,
          backgroundColor: Color(0xFF191D1F),
          popAllScreensOnTapOfSelectedTab: true,
          popActionScreens: PopActionScreensType.all,
          navBarStyle: NavBarStyle
              .style6, // Choose the nav bar style with this property.
        ),
      ),
    );
  }
}
