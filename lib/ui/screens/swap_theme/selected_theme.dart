import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class SelectedTheme extends StatefulWidget {
  const SelectedTheme({super.key});

  @override
  State<SelectedTheme> createState() => _SelectedThemeState();
}

class _SelectedThemeState extends State<SelectedTheme> {
  int activeIndex = 0;

  final listTheme = [
    Container(
      height: 400,
      decoration: BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.circular(8),
      ),
    ),
    Container(
      height: 400,
      decoration: BoxDecoration(
        color: Colors.green,
        borderRadius: BorderRadius.circular(8),
      ),
    ),
    Container(
      height: 400,
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(8),
      ),
    ),
    Container(
      height: 400,
      decoration: BoxDecoration(
        color: Colors.orange,
        borderRadius: BorderRadius.circular(8),
      ),
    ),
    Container(
      height: 400,
      decoration: BoxDecoration(
        color: Colors.teal,
        borderRadius: BorderRadius.circular(8),
      ),
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider.builder(
          itemCount: listTheme.length,
          itemBuilder: (BuildContext context, int index, int realIndex) {
            return listTheme[index];
          },
          options: CarouselOptions(
            enlargeFactor: 0.5,
            aspectRatio: 1,
            viewportFraction: 0.5,
            enableInfiniteScroll: true,
            reverse: false,
            autoPlay: false,
            autoPlayInterval: Duration(seconds: 3),
            autoPlayAnimationDuration: Duration(milliseconds: 800),
            autoPlayCurve: Curves.fastOutSlowIn,
            enlargeCenterPage: true,
            scrollDirection: Axis.horizontal,
            onPageChanged: (index, reason) {
              setState(() {
                activeIndex = index;
              });
            },
          ),
        ),
        SizedBox(height: 16.h),
        _buildIndicator(),
      ],
    );
  }

  Widget _buildIndicator() {
    return AnimatedSmoothIndicator(
      activeIndex: activeIndex,
      count: listTheme.length,
      effect: ExpandingDotsEffect(
        activeDotColor: Color(0xFF00B36F),
        dotColor: Color(0xFF272B30),
        dotHeight: 8,
        dotWidth: 8,
        spacing: 8,
      ),
    );
  }
}
