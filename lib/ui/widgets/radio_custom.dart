// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fpts_product/const/app_colors.dart';

class RadioCustom extends StatefulWidget {
  int value;
  int groupValue;
  String title;
  String description;
  void Function(int) onChanged;
  RadioCustom({
    Key? key,
    required this.value,
    required this.groupValue,
    required this.title,
    required this.description,
    required this.onChanged,
  }) : super(key: key);

  @override
  State<RadioCustom> createState() => _RadioCustomState();
}

class _RadioCustomState extends State<RadioCustom> {
  @override
  Widget build(BuildContext context) {
    bool isSelected = widget.value == widget.groupValue;

    return GestureDetector(
      onTap: () {
        bool selected = widget.value != widget.groupValue;
        if (selected) {
          widget.onChanged(widget.value);
        }
      },
      child: Container(
        padding: EdgeInsets.symmetric(
          vertical: 12,
        ),
        decoration: BoxDecoration(
          color: AppColors.bg_02,
          borderRadius: BorderRadius.circular(12.r),
        ),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                width: 18.w,
                height: 18.h,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: isSelected ? AppColors.green : AppColors.gray,
                    width: isSelected ? 4 : 0,
                  ),
                  shape: BoxShape.circle,
                ),
                child: Container(
                  decoration: BoxDecoration(
                    color: isSelected ? AppColors.white : AppColors.gray,
                    shape: BoxShape.circle,
                  ),
                ),
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.title,
                    style: TextStyle(
                      fontSize: 16.sp,
                      color: AppColors.white,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: 6.h,
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 4.w),
                    child: Text(
                      widget.description,
                      style: TextStyle(
                        fontSize: 13.sp,
                        color: AppColors.gray,
                      ),
                    ),
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
