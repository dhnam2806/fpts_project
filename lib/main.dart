import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fpts_product/bloc/bloc/select_navbar_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fpts_product/ui/screens/screen_mode/screen_mode.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return BlocProvider(
          create: (context) => SelectNavbarBloc(),
          child: MaterialApp(
              debugShowCheckedModeBanner: false,
              title: 'First Method',
              home: child,
              builder: (context, child) {
                return MediaQuery(
                  data: MediaQuery.of(context).copyWith(
                    textScaler: TextScaler.linear(1.0),
                  ),
                  child: child!,
                );
              }),
        );
      },
      child: ScreenMode(),
    );
  }
}
