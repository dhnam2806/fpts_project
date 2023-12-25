import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fpts_product/const/app_colors.dart';

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        body: Column(
          children: [
            Text("Lựa chọn tối đa 07 nội dung bạn quan tâm nhất để hiển thị trên màn hình chính"),
            ListView.builder(
              itemCount: listContent.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: Icon(Icons.more_horiz_outlined),
                  title: Text(listContent[index]),
                  trailing: Icon(Icons.check_box),
                  onTap: () {},
                );
              },
            ),
          ],
        ));
  }
}
