import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fpts_product/const/app_colors.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class SelectedTheme extends StatefulWidget {
  const SelectedTheme({super.key});

  @override
  State<SelectedTheme> createState() => _SelectedThemeState();
}

class _SelectedThemeState extends State<SelectedTheme> {
  int activeIndex = 0;

  final listTheme = [
    'assets/images/birthday.png',
    'assets/images/giangsinh.png',
    'assets/images/halloween.png',
    'assets/images/nammoi.png',
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          CarouselSlider(
            options: CarouselOptions(
              enlargeFactor: 0.5,
              enlargeCenterPage: true,
              aspectRatio: 1,
              enableInfiniteScroll: true,
              viewportFraction: 0.5,
              onPageChanged: (index, reason) {
                setState(() {
                  activeIndex = index;
                });
              },
            ),
            items: listTheme.map((imagePath) {
              return Builder(
                builder: (BuildContext context) {
                  return Container(
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.0),
                      image: DecorationImage(
                        image: AssetImage(imagePath),
                        fit: BoxFit.cover,
                      ),
                    ),
                  );
                },
              );
            }).toList(),
          ),
          SizedBox(
            height: 16.h,
          ),
          _buildIndicator(),
          SizedBox(
            height: 12.h,
          ),
          Text(
            'Bản hoà sắc mang hơi hướng tương lai',
            style: TextStyle(
              fontFamily: 'Manrope',
              color: AppColors.secondary,
              fontSize: 12.sp,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildIndicator() {
    return AnimatedSmoothIndicator(
      activeIndex: activeIndex,
      count: listTheme.length,
      effect: SlideEffect(
        dotHeight: 8.h,
        dotWidth: 8.w,
        spacing: 8.w,
        dotColor: AppColors.surface_04,
        activeDotColor: AppColors.green,
      ),
    );
  }
}
