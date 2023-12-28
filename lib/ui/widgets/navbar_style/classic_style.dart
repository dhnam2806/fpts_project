import 'package:flutter/material.dart';
import 'package:fpts_product/const/app_colors.dart';

class ClassicNavbarStyle extends StatefulWidget {
  const ClassicNavbarStyle({super.key});

  @override
  State<ClassicNavbarStyle> createState() => _ClassicNavbarStyleState();
}

class _ClassicNavbarStyleState extends State<ClassicNavbarStyle> {
  TextStyle _unselectedText = TextStyle(
    fontFamily: 'Manrope',
    color: AppColors.secondary,
    fontSize: 12,
    fontWeight: FontWeight.w500,
  );
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 12, horizontal: 14),
      decoration: BoxDecoration(
        color: AppColors.surface_02,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Container(
                child: Image.asset(
                  'assets/icons/home_divider.png',
                ),
              ),
              Text(
                'Trang chủ',
                style: TextStyle(
                  fontFamily: 'Manrope',
                  color: AppColors.green,
                  fontSize: 12,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
          Column(
            children: [
              Image.asset(
                'assets/icons/trading.png',
                height: 34,
              ),
              Text('Đặt lệnh', style: _unselectedText),
            ],
          ),
          Column(
            children: [
              Image.asset(
                'assets/icons/clipboard_text.png',
                height: 34,
              ),
              Text('Sổ lệnh', style: _unselectedText),
            ],
          ),
          Column(
            children: [
              Image.asset(
                'assets/icons/wallet.png',
                height: 34,
              ),
              Text('Tài sản', style: _unselectedText),
            ],
          ),
          Column(
            children: [
              Image.asset(
                'assets/icons/menu.png',
                height: 34,
              ),
              Text('Chức năng', style: _unselectedText),
            ],
          ),
        ],
      ),
    );
  }
}
