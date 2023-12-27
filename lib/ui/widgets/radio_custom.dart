// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: must_be_immutable
import 'package:flutter/material.dart';

import 'package:fpts_product/const/app_colors.dart';

class RadioCustom extends StatefulWidget {
  final value;
  final groupValue;
  final title;
  final description;
  final onChanged;

  const RadioCustom({
    Key? key,
    this.value,
    this.groupValue,
    this.title,
    this.description,
    this.onChanged,
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
          horizontal: 12,
        ),
        decoration: BoxDecoration(
          color: AppColors.bg_02,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          children: [
            Container(
              width: 16,
              height: 16,
              margin: EdgeInsets.all(8),
              decoration: BoxDecoration(
                border: Border.all(
                  color: isSelected ? AppColors.green : AppColors.gray,
                  width: isSelected ? 3.5 : 0,
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
            SizedBox(
              width: 12,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.title,
                    style: TextStyle(
                      fontFamily: 'Manrope',
                      fontSize: 14,
                      color: AppColors.header,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Container(
                    child: Text(
                      widget.description,
                      style: TextStyle(
                        fontFamily: 'Manrope',
                        fontSize: 12,
                        color: AppColors.secondary,
                        fontWeight: FontWeight.w500,
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
