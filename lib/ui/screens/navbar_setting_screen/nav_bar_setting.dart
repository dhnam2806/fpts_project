import 'package:flutter/material.dart';
import 'package:fpts_product/const/app_colors.dart';
import 'package:fpts_product/ui/screens/navbar_setting_screen/nav_bar_style.dart';
import 'package:fpts_product/ui/widgets/list_tittle_navbar_setting.dart';

class NavBarSettingScreen extends StatefulWidget {
  const NavBarSettingScreen({super.key});

  @override
  State<NavBarSettingScreen> createState() => _NavBarSettingScreenState();
}

class _NavBarSettingScreenState extends State<NavBarSettingScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bg_01,
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: AppColors.header,
            size: 24,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: AppColors.bg_01,
        title: Text(
          'Thanh điều hướng',
          style: TextStyle(
            fontFamily: 'Manrope',
            letterSpacing: 1,
            fontSize: 24,
            color: AppColors.header,
            fontWeight: FontWeight.w800,
          ),
        ),
      ),
      body: Container(
        margin: EdgeInsets.symmetric(
          horizontal: 12,
          vertical: 4,
        ),
        decoration: BoxDecoration(
          color: AppColors.bg_02,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTittleCustom(
                title: "Kiểu thanh điều hướng",
                icon: Image.asset(
                  'assets/icons/menu_dots.png',
                ),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => NavBarStyle()));
                }),
            ListTittleCustom(
                title: "Chỉnh thanh điều hướng",
                icon: Image.asset(
                  'assets/icons/square_transfer.png',
                ),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => NavBarStyle()));
                }),
          ],
        ),
      ),
    );
  }
}
