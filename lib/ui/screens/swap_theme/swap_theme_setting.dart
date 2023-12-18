import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fpts_product/ui/screens/swap_theme/selected_theme.dart';
import 'package:fpts_product/ui/widgets/radio_list_tile/radio_list_title.dart';

class SwapThemeSetting extends StatefulWidget {
  const SwapThemeSetting({super.key});

  @override
  State<SwapThemeSetting> createState() => _SwapThemeSettingState();
}

class _SwapThemeSettingState extends State<SwapThemeSetting>
    with TickerProviderStateMixin {
  int _selectedIndex = 0;

  late final AnimationController controller = AnimationController(
    duration: const Duration(seconds: 2),
    vsync: this,
  )..forward();

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
              fontSize: 18.sp,
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
              RadioListTitleCustom(
                value: 0,
                groupValue: _selectedIndex,
                title: "Tự động",
                description:
                    'Ảnh chủ đề sẽ thay đổi tự động theo thời gian trong ngày và trong năm vào các dịp đặc biệt.',
                onTap: () {
                  setState(() {
                    _selectedIndex = 0;
                  });
                },
              ),
              SizedBox(
                height: 12.h,
              ),
              RadioListTitleCustom(
                value: 1,
                groupValue: _selectedIndex,
                title: "Thủ công",
                description: 'Tự chọn ảnh chủ đề theo sở thích của bạn.',
                onTap: () {
                  setState(() {
                    _selectedIndex = 1;
                  });
                },
              ),
              SizedBox(
                height: 12.h,
              ),
              _selectedIndex == 0
                  ? Container()
                  : Expanded(
                      child: SlideTransition(
                        position: Tween<Offset>(
                          begin: Offset(0, 0),
                          end: Offset.zero,
                        ).animate(CurvedAnimation(
                          parent: AnimationController(
                            vsync: this,
                            duration: Duration(milliseconds: 500),
                          ),
                          curve: Curves.fastOutSlowIn,
                        )),
                        child: Expanded(
                          child: SelectedTheme(),
                        ),
                      ),
                    ),
            ],
          ),
        ));
  }
}
