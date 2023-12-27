import 'package:flutter/material.dart';
import 'package:fpts_product/const/app_colors.dart';

class ListTittleCustom extends StatefulWidget {
  final title;
  final icon;
  final onTap;
  const ListTittleCustom({
    super.key,
     this.title,
     this.icon,
     this.onTap,
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
        color: AppColors.gray,
      ),
      title: Text(
        widget.title,
        style: TextStyle(
          fontSize: 14,
          color: AppColors.white,
        ),
      ),
      trailing: Icon(
        Icons.arrow_forward_ios,
        size: 20,
        color: AppColors.gray,
      ),
      onTap: () {
        widget.onTap();
      },
    );
  }
}
