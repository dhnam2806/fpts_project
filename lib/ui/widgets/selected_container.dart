// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fpts_product/const/app_colors.dart';

class SelectedContainer extends StatefulWidget {
  String title;
  int value;
  int groupValue;
  Color color;
  void Function(int) onChanged;
  SelectedContainer({
    Key? key,
    required this.title,
    required this.value,
    required this.groupValue,
    required this.color,
    required this.onChanged,
  }) : super(key: key);

  @override
  State<SelectedContainer> createState() => _SelectedContainerState();
}

class _SelectedContainerState extends State<SelectedContainer> {
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
      child: Column(
        children: [
          Stack(alignment: Alignment.topRight, children: [
            Container(
              width: double.infinity,
              height: 320.h,
              decoration: BoxDecoration(
                color: widget.color,
                borderRadius: BorderRadius.circular(8.r),
                border: isSelected
                    ? Border.all(
                        color: AppColors.green,
                        width: 1.14,
                      )
                    : null,
              ),
            ),
            Container(
              margin: EdgeInsets.all(8),
              width: 20.w,
              height: 20.h,
              decoration: BoxDecoration(
                border: Border.all(
                  color: isSelected
                      ? Colors.transparent
                      : AppColors.border_default,
                  width: 0.5,
                ),
                shape: BoxShape.circle,
                color: isSelected ? AppColors.green : AppColors.bg_default,
              ),
              child: isSelected
                  ? Icon(
                      Icons.check,
                      color: Colors.white,
                      size: 16.sp,
                    )
                  : null,
            ),
          ]),
          SizedBox(
            height: 12.h,
          ),
          Text(
            widget.title,
            style: TextStyle(
              fontFamily: 'Manrope',
              fontSize: 14.sp,
              color: isSelected ? AppColors.green : AppColors.secondary,
              fontWeight: FontWeight.w700,
            ),
          ),
        ],
      ),
    );
  }
}
