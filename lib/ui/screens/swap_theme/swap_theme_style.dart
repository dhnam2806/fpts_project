import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fpts_product/ui/screens/swap_theme/selected_theme.dart';

class TabBarThemeStyle extends StatefulWidget {
  const TabBarThemeStyle({super.key});

  @override
  State<TabBarThemeStyle> createState() => _TabBarThemeStyleState();
}

class _TabBarThemeStyleState extends State<TabBarThemeStyle>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 4, vsync: this);
    return Container(
      decoration: BoxDecoration(
        color: Color(0xFF191D1F),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20.r),
          topRight: Radius.circular(20.r),
        ),
      ),
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.all(8.w),
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 20, 22, 23),
              borderRadius: BorderRadius.circular(50.r),
            ),
            child: TabBar(
              indicatorColor: Color(0xFF00B36F),
              labelColor: Color(0xFF00B36F),
              unselectedLabelColor: Colors.grey[600],
              automaticIndicatorColorAdjustment: false,
              dividerColor: Colors.transparent,
              controller: _tabController,
              indicatorSize: TabBarIndicatorSize.label,
              indicatorPadding:
                  EdgeInsets.symmetric(horizontal: 12.w, vertical: 4.h),
              labelStyle: TextStyle(
                fontSize: 12.sp,
                fontWeight: FontWeight.w500,
              ),
              labelPadding:
                  EdgeInsets.symmetric(horizontal: 2.w, vertical: 12.h),
              tabs: [
                Text("Mặc định"),
                Text("Cổ điển"),
                Text("Trẻ trung"),
                Text("Phong cách"),
              ],
            ),
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                SelectedTheme(),
                SelectedTheme(),
                SelectedTheme(),
                SelectedTheme(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
