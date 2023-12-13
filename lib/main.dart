import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fpts_product/bloc/bloc/select_navbar_bloc.dart';
import 'package:fpts_product/ui/screens/nav_bar_setting.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return BlocProvider(
          create: (context) => SelectNavbarBloc(),
          child: MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'First Method',
            home: child,
          ),
        );
      },
      child: NavBarSettingScreen(),
    );
  }
}
