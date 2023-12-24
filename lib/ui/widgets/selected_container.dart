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
              height: 300.h,
              decoration: BoxDecoration(
                color: widget.color,
                borderRadius: BorderRadius.circular(12.r),
                border: isSelected
                    ? Border.all(
                        color: AppColors.green,
                        width: 2,
                      )
                    : null,
              ),
            ),
            Container(
              margin: EdgeInsets.all(8),
              width: 22.w,
              height: 22.h,
              decoration: BoxDecoration(
                border: Border.all(
                  color: isSelected ? Colors.transparent : Colors.grey,
                  width: 1,
                ),
                shape: BoxShape.circle,
                color: isSelected ? AppColors.green : Colors.grey[300],
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
              fontSize: 14.sp,
              color: isSelected ? AppColors.green : AppColors.gray,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
