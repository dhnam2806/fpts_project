import 'package:flutter/material.dart';
import 'package:fpts_product/const/app_colors.dart';
import 'package:fpts_product/ui/screens/swap_theme/swap_theme_style.dart';
import 'package:fpts_product/ui/widgets/radio_custom.dart';

class SwapThemeSetting extends StatefulWidget {
  const SwapThemeSetting({super.key});

  @override
  State<SwapThemeSetting> createState() => _SwapThemeSettingState();
}

class _SwapThemeSettingState extends State<SwapThemeSetting>
    with TickerProviderStateMixin {
  int _selectedIndex = 0;

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
            'Chủ đề',
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
          padding: EdgeInsets.symmetric(
            horizontal: 12,
            vertical: 4,
          ),
          child: Column(
            children: [
              RadioCustom(
                value: 0,
                groupValue: _selectedIndex,
                title: "Tự động",
                description:
                    'Ảnh chủ đề sẽ thay đổi tự động theo thời gian trong ngày và trong năm vào các dịp đặc biệt.',
                onChanged: (int value) {
                  setState(() {
                    _selectedIndex = value;
                  });
                },
              ),
              SizedBox(
                height: 16,
              ),
              RadioCustom(
                value: 1,
                groupValue: _selectedIndex,
                title: "Thủ công",
                description: 'Tự chọn ảnh chủ đề theo sở thích của bạn.',
                onChanged: (int value) {
                  setState(() {
                    _selectedIndex = value;
                  });
                },
              ),
              SizedBox(
                height: 14,
              ),
              _selectedIndex == 0
                  ? Container()
                  : Expanded(child: TabBarThemeStyle()),
            ],
          ),
        ));
  }
}
