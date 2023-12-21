import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ListTittleCustom extends StatefulWidget {
  final String title;
  final IconData icon;
  final Function onTap;
  const ListTittleCustom({
    super.key,
    required this.title,
    required this.icon,
    required this.onTap,
  });

  @override
  State<ListTittleCustom> createState() => _ListTittleCustomState();
}

class _ListTittleCustomState extends State<ListTittleCustom> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        widget.icon,
        color: Colors.grey[600],
      ),
      title: Text(
        widget.title,
        style: TextStyle(
          fontSize: 14.sp,
          color: Colors.white,
        ),
      ),
      trailing: Icon(
        Icons.arrow_forward_ios,
        size: 20,
        color: Colors.grey[600],
      ),
      onTap: () {
        widget.onTap();
      },
    );
  }
}
