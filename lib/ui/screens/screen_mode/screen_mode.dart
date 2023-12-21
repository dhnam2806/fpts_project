import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fpts_product/ui/widgets/radio_custom.dart';
import 'package:fpts_product/ui/widgets/selected_container.dart';

class ScreenMode extends StatefulWidget {
  const ScreenMode({super.key});

  @override
  State<ScreenMode> createState() => _ScreenModeState();
}

class _ScreenModeState extends State<ScreenMode> {
  int _selectedIndex = 0;
  int _selectedTheme = 0;

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
          'Chế độ màn hình',
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
                  'Chế độ sáng được tự động bật từ 07:00 đến 18:00 hàng ngày.',
              onChanged: (int value) {
                setState(() {
                  _selectedIndex = value;
                });
              },
            ),
            SizedBox(
              height: 12.h,
            ),
            Container(
              decoration: BoxDecoration(
                color: Color(0xFF191D1F),
                borderRadius: BorderRadius.circular(12.r),
              ),
              child: Column(
                children: [
                  RadioCustom(
                      value: 1,
                      groupValue: _selectedIndex,
                      title: "Thủ công",
                      description:
                          'Tự chọn chế độ màn hình theo sở thích của bạn.',
                      onChanged: (int value) {
                        setState(() {
                          _selectedIndex = value;
                        });
                      }),
                  _selectedIndex == 0
                      ? Container()
                      : Container(
                          padding: EdgeInsets.only(bottom: 16.h, left: 60.w),
                          child: Row(children: [
                            Expanded(
                              child: SelectedContainer(
                                  title: "Tối",
                                  value: 0,
                                  color: Colors.black54,
                                  groupValue: _selectedTheme,
                                  onChanged: (int value) {
                                    setState(() {
                                      _selectedTheme = value;
                                    });
                                  }),
                            ),
                            SizedBox(
                              width: 16.w,
                            ),
                            Expanded(
                              child: SelectedContainer(
                                  title: "Sáng",
                                  value: 1,
                                  color: Colors.white70,
                                  groupValue: _selectedTheme,
                                  onChanged: (int value) {
                                    setState(() {
                                      _selectedTheme = value;
                                    });
                                  }),
                            ),
                            SizedBox(
                              width: 16.w,
                            ),
                          ]),
                        ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}