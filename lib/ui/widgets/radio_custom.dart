// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
          vertical: 8,
        ),
        decoration: BoxDecoration(
          color: Color(0xFF191D1F),
          borderRadius: BorderRadius.circular(12.r),
        ),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                width: 20.w,
                height: 20.h,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: isSelected ? Colors.green : Colors.grey[600]!,
                    width: isSelected ? 4 : 0,
                  ),
                  shape: BoxShape.circle,
                ),
                child: Container(
                  decoration: BoxDecoration(
                    color: isSelected ? Colors.white : Colors.grey[600]!,
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
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: 4.h,
                  ),
                  Text(
                    widget.description,
                    style: TextStyle(
                      fontSize: 14.sp,
                      color: Colors.grey[600],
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
