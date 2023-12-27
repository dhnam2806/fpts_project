import 'package:flutter/material.dart';
import 'package:fpts_product/const/app_colors.dart';
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
          'Chế độ màn hình',
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
                  'Chế độ sáng được tự động bật từ 07:00 đến 18:00 hàng ngày.',
              onChanged: (int value) {
                setState(() {
                  _selectedIndex = value;
                });
              },
            ),
            SizedBox(
              height: 12,
            ),
            Container(
              decoration: BoxDecoration(
                color: AppColors.bg_02,
                borderRadius: BorderRadius.circular(12),
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
                          padding: EdgeInsets.only(
                              bottom: 12, left: 58, right: 12),
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
                              width: 16,
                            ),
                            Expanded(
                              child: SelectedContainer(
                                  title: "Sáng",
                                  value: 1,
                                  color: Color(0xFFFEFEFE),
                                  groupValue: _selectedTheme,
                                  onChanged: (int value) {
                                    setState(() {
                                      _selectedTheme = value;
                                    });
                                  }),
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
