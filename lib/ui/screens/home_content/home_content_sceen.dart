import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fpts_product/const/app_colors.dart';
import 'package:fpts_product/ui/widgets/list_content.dart';

class HomeContentScreen extends StatefulWidget {
  const HomeContentScreen({super.key});

  @override
  State<HomeContentScreen> createState() => _HomeContentScreenState();
}

class _HomeContentScreenState extends State<HomeContentScreen> {
  final listContent = [
    'Chỉ sô thị trường',
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.surface_01,
        appBar: AppBar(
          centerTitle: true,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: AppColors.gray,
            ),
            onPressed: () {},
          ),
          backgroundColor: AppColors.bg_01,
          title: Text(
            'Nội dung trang chủ',
            style: TextStyle(
              letterSpacing: 1,
              height: 36.h,
              fontSize: 24.sp,
              color: AppColors.white,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 12.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: 42.h,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Text(
                    "Lựa chọn tối đa 07 nội dung bạn quan tâm nhất để hiển thị trên màn hình chính",
                    style: TextStyle(
                      fontSize: 14.sp,
                      color: AppColors.white,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 16.h,
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: listContent.length,
                  itemBuilder: (context, index) {
                    final item = listContent[index];
                    final isSelected = selectedItems.contains(item);
                    return GestureDetector(
                        onTap: () {
                          setState(() {
                            if (isSelected) {
                              selectedItems.remove(item);
                            } else {
                              selectedItems.add(item);
                            }
                          });
                        },
                        child: ListContent(title: listContent[index], isSelected: isSelected));
                  },
                ),
              ),
            ],
          ),
        ));
  }
}
