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
    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            enlargeFactor: 0.4,
            enlargeCenterPage: true,
            aspectRatio: 1,
            enableInfiniteScroll: true,
            viewportFraction: 0.6,
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
      ],
    );
  }

  Widget _buildIndicator() {
    return AnimatedSmoothIndicator(
      activeIndex: activeIndex,
      count: listTheme.length,
      effect: ExpandingDotsEffect(
        activeDotColor: AppColors.green,
        dotColor: Color(0xFF272B30),
        dotHeight: 8,
        dotWidth: 8,
        spacing: 8,
      ),
    );
  }
}
