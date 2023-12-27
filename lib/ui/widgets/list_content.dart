// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:fpts_product/const/app_colors.dart';

// ignore: must_be_immutable
class ListContent extends StatefulWidget {
  final title;
  final isSelected;
  final onTap;
  ListContent({
    Key? key,
    this.title,
    this.isSelected = false,
    this.onTap,
  }) : super(key: key);

  @override
  State<ListContent> createState() => _ListContentState();
}

class _ListContentState extends State<ListContent> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      overlayColor: MaterialStateProperty.all(Colors.transparent),
      splashFactory: NoSplash.splashFactory,
      onTap: () => widget.onTap(),
      child: Column(
        children: [
          Container(
              height: 48,
              padding: EdgeInsets.symmetric(horizontal: 12),
              decoration: BoxDecoration(
                border: widget.isSelected
                    ? Border.all(
                        color: AppColors.green,
                        width: 1,
                      )
                    : null,
                color: AppColors.surface_02,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 24,
                    height: 24,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.fitHeight,
                        image: AssetImage('assets/icons/three-dots.png'),
                      ),
                    ),
                  ),
                  Center(
                    child: Text(
                      widget.title,
                      style: TextStyle(
                        color: AppColors.green,
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  widget.isSelected
                      ? Container(
                          width: 24,
                          height: 24,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                      'assets/icons/check_circle.png'))))
                      : Container(
                          width: 24,
                          height: 24,
                        ),
                ],
              )),
          SizedBox(
            height: 12,
          )
        ],
      ),
    );
  }
}
