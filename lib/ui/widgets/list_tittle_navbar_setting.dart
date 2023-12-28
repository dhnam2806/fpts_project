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
      leading: widget.icon,
      title: Text(
        widget.title,
        style: TextStyle(
          fontFamily: 'Manrope',
          fontSize: 14,
          color: AppColors.white,
          fontWeight: FontWeight.w500,
        ),
      ),
      trailing: Image.asset(
        'assets/icons/arrow_right.png',
      ),
      onTap: () {
        widget.onTap();
      },
    );
  }
}
