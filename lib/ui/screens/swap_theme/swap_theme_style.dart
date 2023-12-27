import 'package:flutter/material.dart';
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
          topLeft: Radius.circular(16),
          topRight: Radius.circular(16),
        ),
      ),
      child: Column(
        children: [
          Container(
            margin:
                EdgeInsets.only(top: 12, bottom: 16, left: 7, right: 7),
            decoration: BoxDecoration(
              color: AppColors.blue_gray_01,
              borderRadius: BorderRadius.circular(50),
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
                  EdgeInsets.symmetric(horizontal: 38, vertical: 6),
              labelStyle: TextStyle(
                fontFamily: 'Manrope',
                fontSize: 12,
                fontWeight: FontWeight.w700,
              ),
              unselectedLabelStyle: TextStyle(
                fontFamily: 'Manrope',
                fontSize: 12,
                fontWeight: FontWeight.w500,
              ),
              labelPadding:
                  EdgeInsets.symmetric(horizontal: 4, vertical: 12),
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
