import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fpts_product/const/app_colors.dart';
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
        color: AppColors.bg_02,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(16.r),
          topRight: Radius.circular(16.r),
        ),
      ),
      child: Column(
        children: [
          Container(
            margin:
                EdgeInsets.only(top: 12.h, bottom: 16.h, left: 7.w, right: 7.w),
            decoration: BoxDecoration(
              color: AppColors.blue_gray_01,
              borderRadius: BorderRadius.circular(50.r),
            ),
            child: TabBar(
              indicatorColor: AppColors.green,
              labelColor: AppColors.green,
              unselectedLabelColor: AppColors.gray,
              automaticIndicatorColorAdjustment: false,
              dividerColor: Colors.transparent,
              controller: _tabController,
              indicatorSize: TabBarIndicatorSize.tab,
              indicatorPadding:
                  EdgeInsets.symmetric(horizontal: 38.w, vertical: 6.h),
              labelStyle: TextStyle(
                fontFamily: 'Manrope',
                fontSize: 12.sp,
                fontWeight: FontWeight.w700,
              ),
              unselectedLabelStyle: TextStyle(
                fontFamily: 'Manrope',
                fontSize: 12.sp,
                fontWeight: FontWeight.w500,
              ),
              labelPadding:
                  EdgeInsets.symmetric(horizontal: 4.w, vertical: 12.h),
              tabs: [
                Text("Mặc định"),
                Text("Cổ điển"),
                Text("Trẻ trung"),
                Text("Phong cảnh"),
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
