import 'package:flutter/material.dart';
import 'package:fpts_product/const/app_colors.dart';
import 'package:fpts_product/ui/widgets/navbar_style/classic_style.dart';
import 'package:fpts_product/ui/widgets/navbar_style/modern_style.dart';
import 'package:fpts_product/ui/widgets/navbar_style/radio_button.dart';

class NavBarStyle extends StatefulWidget {
  const NavBarStyle({super.key});

  @override
  State<NavBarStyle> createState() => _NavBarStyleState();
}

class _NavBarStyleState extends State<NavBarStyle> {
  int _selectedStyle = 0;
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
          'Kiểu thanh điều hướng',
          style: TextStyle(
            fontFamily: 'Manrope',
            letterSpacing: 1,
            fontSize: 24,
            color: AppColors.header,
            fontWeight: FontWeight.w800,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
        child: Column(
          children: [
            Container(
              child: Column(
                children: [
                  RadioButtonCustom(
                    value: 0,
                    groupValue: _selectedStyle,
                    onChanged: (value) {
                      setState(() {
                        _selectedStyle = value as int;
                      });
                    },
                    title: 'Hiện đại',
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  ModernNavbarStyle(),
                  SizedBox(
                    height: 24,
                  ),
                  RadioButtonCustom(
                    value: 1,
                    groupValue: _selectedStyle,
                    onChanged: (value) {
                      setState(() {
                        _selectedStyle = value as int;
                      });
                    },
                    title: 'Cổ điển',
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  ClassicNavbarStyle(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
