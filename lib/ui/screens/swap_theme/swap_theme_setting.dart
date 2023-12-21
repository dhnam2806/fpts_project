import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fpts_product/ui/screens/swap_theme/swap_theme_style.dart';
import 'package:fpts_product/ui/widgets/radio_list_tile/radio_custom.dart';

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
        backgroundColor: Color(0xFF101315),
        appBar: AppBar(
          centerTitle: true,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.grey[600],
            ),
            onPressed: () {},
          ),
          backgroundColor: Color(0xFF101315),
          title: Text(
            'Chủ đề',
            style: TextStyle(
              letterSpacing: 1,
              fontSize: 20.sp,
              color: Colors.white,
              fontWeight: FontWeight.w500,
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
                height: 12.h,
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
                height: 12.h,
              ),
              _selectedIndex == 0
                  ? Container()
                  : Expanded(child: TabBarThemeStyle()),
            ],
          ),
        ));
  }
}
