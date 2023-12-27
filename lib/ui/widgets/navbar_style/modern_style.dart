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
      padding: EdgeInsets.all(12),
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
          child: Row(
            children: [
              Image.asset(
                'assets/icons/home_icon.png',
              ),
              Column(
                // mainAxisSize: MainAxisSize.min,
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
        ),
        Image.asset(
          'assets/icons/order_list.png',
        ),
        Image.asset(
          'assets/icons/asset.png',
        ),
        Image.asset(
          'assets/icons/menu.png',
        ),
      ]),
    );
  }
}
