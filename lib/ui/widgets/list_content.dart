// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ListContent extends StatefulWidget {
  String title;
  ListContent({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  State<ListContent> createState() => _ListContentState();
}

class _ListContentState extends State<ListContent> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Row(
      children: [
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/icons/three-dot.png')),
          ),
        ),
        Text(widget.title),
        Container(
            margin: EdgeInsets.all(8),
            width: 20.w,
            height: 20.h,
            // decoration: BoxDecoration(
            //   border: Border.all(
            //     color: isSelected ? Colors.transparent : Colors.grey,
            //     width: 1,
            //   ),
            //   shape: BoxShape.circle,
            //   color: isSelected ? AppColors.green : Colors.grey[300],
            // ),
            child: Icon(
              Icons.check,
              color: Colors.white,
              size: 16.sp,
            )),
      ],
    ));
  }
}
