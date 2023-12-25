// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fpts_product/const/app_colors.dart';

// ignore: must_be_immutable
class ListContent extends StatefulWidget {
  String title;
  bool isSelected = false;
  ListContent({
    Key? key,
    required this.title,
    required this.isSelected,
  }) : super(key: key);

  @override
  State<ListContent> createState() => _ListContentState();
}

class _ListContentState extends State<ListContent> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 48.h,
        margin: EdgeInsets.only(bottom: 12.h),
        padding: EdgeInsets.symmetric(horizontal: 8.w),
        decoration: BoxDecoration(
          border: widget.isSelected
              ? Border.all(
                  color: AppColors.green,
                  width: 1,
                )
              : null,
          color: AppColors.surface_02,
          borderRadius: BorderRadius.circular(16.r),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: 24.w,
              height: 24.h,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fitHeight,
                  image: AssetImage('assets/icons/three-dots.png'),
                ),
              ),
            ),
            Center(
              child: Text(
                widget.title,
                style: TextStyle(
                  color: AppColors.green,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            widget.isSelected
                ? Container(
                    width: 20.w,
                    height: 20.h,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: AppColors.green,
                    ),
                    child: Icon(
                      Icons.check,
                      color: AppColors.surface_02,
                      size: 16.sp,
                    ))
                : Container(
                    width: 20.w,
                    height: 20.h,
                  ),
          ],
        ));
  }
}
