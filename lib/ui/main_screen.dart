import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fpts_product/const/app_colors.dart';
import 'package:fpts_product/ui/screens/home_content/home_content_sceen.dart';
import 'package:fpts_product/ui/screens/navbar_setting_screen/nav_bar_setting.dart';
import 'package:fpts_product/ui/screens/screen_mode/screen_mode.dart';
import 'package:fpts_product/ui/screens/swap_theme/swap_theme_setting.dart';
import 'package:fpts_product/ui/widgets/text_box.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.surface_01,
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: AppColors.bg_01,
          title: Text(
            'Danh sách màn hình',
            style: TextStyle(
              letterSpacing: 1,
              height: 36.h,
              fontSize: 24.sp,
              color: AppColors.white,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        body: Column(children: [
          TextBoxCus(title: 'Nội dung trang chủ', onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => HomeContentScreen()));
          },),
          TextBoxCus(title: 'Thanh điều hướng', onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => NavBarSettingScreen()));
          },),
          TextBoxCus(title: 'Chế độ màn hình', onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => ScreenMode()));
          },),
          TextBoxCus(title: 'Chủ đề', onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => SwapThemeSetting()));
          },),
        ],)
    );
  }
}