import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fpts_product/const/app_colors.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class ModernNavbar extends StatefulWidget {
  const ModernNavbar({super.key});

  @override
  State<ModernNavbar> createState() => _ModernNavbarState();
}

class _ModernNavbarState extends State<ModernNavbar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 8.w,
      ),
      decoration: BoxDecoration(
        color: AppColors.bg_02,
        borderRadius: BorderRadius.circular(16.r),
      ),
      child: GNav(
        gap: 4,
        iconSize: 24.sp,
        padding: EdgeInsets.symmetric(
          horizontal: 12.w,
          vertical: 20.h,
        ),
        // backgroundColor: Color(0xFF191D1F),
        color: AppColors.green,
        activeColor: AppColors.green,
        textStyle: TextStyle(
          fontSize: 12.sp,
          color: AppColors.green,
        ),
        tabs: [
          GButton(
            icon: Icons.home,
            text: 'Trang chủ',
          ),
          GButton(
            icon: Icons.search,
            text: 'Đặt lệnh',
          ),
          GButton(
            icon: Icons.notifications,
            text: 'Sổ lệnh',
          ),
          GButton(
            icon: Icons.person,
            text: 'Tài sản',
          ),
          GButton(
            icon: Icons.add,
            text: 'Chức năng',
          ),
        ],
      ),
    );
  }
}