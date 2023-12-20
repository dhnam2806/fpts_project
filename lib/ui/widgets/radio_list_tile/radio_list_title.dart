// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RadioListTitleCustom extends StatefulWidget {
  int value;
  int groupValue;
  String title;
  String description;
  Function onTap;

  RadioListTitleCustom({
    super.key,
    required this.value,
    required this.groupValue,
    required this.title,
    required this.description,
    required this.onTap,
  });

  @override
  State<RadioListTitleCustom> createState() => _RadioListTitleCustomState();
}

class _RadioListTitleCustomState extends State<RadioListTitleCustom> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xFF191D1F),
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: RadioListTile(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.r),
          ),
          value: widget.value,
          activeColor: Color(0xFF00B36F),
          groupValue: widget.groupValue,
          onChanged: (index) {
            widget.onTap();
          },
          title: Column(
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
          )),
    );
  }
}
