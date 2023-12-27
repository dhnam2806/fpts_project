import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:fpts_product/const/app_colors.dart';
import 'package:fpts_product/ui/widgets/list_content.dart';

class HomeContentScreen extends StatefulWidget {
  const HomeContentScreen({super.key});

  @override
  State<HomeContentScreen> createState() => _HomeContentScreenState();
}

class _HomeContentScreenState extends State<HomeContentScreen> {
  final listContent = [
    'Chỉ số thị trường',
    'Tài sản',
    'Nhóm cổ phiếu',
    'Khuyến nghị đầu tư',
    'Danh sách sở hữu',
    'Danh mục yêu thích',
    'Tin tức sự kiện',
    'Bản đồ nhiệt',
    'Hiệu quả đầu tư',
    'Cổ phiếu đột biến',
    'Sợ hãi và tham lam',
  ];

  Set<String> selectedItems = Set<String>();

  Widget _proxyDecorator(Widget child, int index, Animation<double> animation) {
    return AnimatedBuilder(
      animation: animation,
      builder: (BuildContext context, Widget? child) {
        final double animValue = Curves.easeInOut.transform(animation.value);
        final double elevation = lerpDouble(0, 6, animValue)!;
        return Material(
          elevation: elevation,
          color: Colors.transparent,
          shadowColor: Colors.transparent,
          child: child,
        );
      },
      child: child,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.surface_01,
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
            'Nội dung trang chủ',
            style: TextStyle(
              fontFamily: 'Manrope',
              letterSpacing: 1,
              height: 36,
              fontSize: 24,
              color: AppColors.white,
              fontWeight: FontWeight.w800,
            ),
          ),
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 12),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: 42,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Text(
                    "Lựa chọn tối đa 07 nội dung bạn quan tâm nhất để hiển thị trên màn hình chính",
                    style: TextStyle(
                      fontSize: 14,
                      color: AppColors.white,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Expanded(
                child: Theme(
                  data: ThemeData(
                    canvasColor: AppColors.bg_01,
                  ),
                  child: ReorderableListView(
                    proxyDecorator: _proxyDecorator,
                    children: [
                      for (final item in listContent)
                        ListContent(
                          key: ValueKey(item),
                          title: item,
                          isSelected: selectedItems.contains(item),
                          onTap: () {
                            setState(() {
                              if (selectedItems.contains(item)) {
                                selectedItems.remove(item);
                              } else {
                                selectedItems.add(item);
                              }
                            });
                          },
                        ),
                    ],
                    onReorder: (oldIndex, newIndex) {
                      setState(() {
                        if (oldIndex < newIndex) {
                          newIndex -= 1;
                        }
                        final item = listContent.removeAt(oldIndex);
                        listContent.insert(newIndex, item);
                      });
                    },
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}

