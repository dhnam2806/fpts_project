import 'package:flutter/material.dart';
import 'package:fpts_product/const/app_colors.dart';

class ModernNavbarStyle extends StatefulWidget {
  const ModernNavbarStyle({super.key});

  @override
  State<ModernNavbarStyle> createState() => _ModernNavbarStyleState();
}

class _ModernNavbarStyleState extends State<ModernNavbarStyle> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 12, horizontal: 14.635),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: AppColors.surface_02,
        border: Border.all(
          color: AppColors.input_border_default,
          width: 1,
        ),
      ),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Container(
          height: 48,
          padding: const EdgeInsets.symmetric(horizontal: 11),
          child: Row(
            children: [
              Image.asset(
                'assets/icons/home.png',
              ),
              SizedBox(
                width: 8,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Trang chủ',
                    style: TextStyle(
                      fontFamily: 'Manrope',
                      color: AppColors.green,
                      fontSize: 12,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Container(
                    width: 14,
                    height: 2,
                    color: AppColors.green,
                  )
                ],
              ),
            ],
          ),
        ),
        Image.asset(
          'assets/icons/trading.png',
          height: 48,
        ),
        Image.asset(
          'assets/icons/clipboard_text.png',
          height: 48,
        ),
        Image.asset(
          'assets/icons/wallet.png',
          height: 48,
        ),
        Image.asset(
          'assets/icons/menu.png',
          height: 48,
        ),
      ]),
    );
  }
}
