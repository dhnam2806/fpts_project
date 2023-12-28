// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: must_be_immutable
import 'package:flutter/material.dart';

import 'package:fpts_product/const/app_colors.dart';

class RadioButtonCustom extends StatefulWidget {
  final value;
  final groupValue;
  final title;
  final onChanged;

  const RadioButtonCustom({
    Key? key,
    this.value,
    this.groupValue,
    this.title,
    this.onChanged,
  }) : super(key: key);

  @override
  State<RadioButtonCustom> createState() => _RadioButtonCustomState();
}

class _RadioButtonCustomState extends State<RadioButtonCustom> {
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
        child: Row(
          children: [
            Container(
              width: 16,
              height: 16,
              decoration: BoxDecoration(
                border: Border.all(
                  color:
                      isSelected ? AppColors.green : AppColors.border_default,
                  width: isSelected ? 3.5 : 0.5,
                ),
                shape: BoxShape.circle,
              ),
              child: Container(
                decoration: BoxDecoration(
                  color: isSelected
                      ? AppColors.white
                      : AppColors.bg_uncheck_default,
                  shape: BoxShape.circle,
                ),
              ),
            ),
            SizedBox(
              width: 8,
            ),
            Expanded(
              child: Text(
                widget.title,
                style: TextStyle(
                  fontFamily: 'Manrope',
                  fontSize: 16,
                  color: AppColors.header,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
