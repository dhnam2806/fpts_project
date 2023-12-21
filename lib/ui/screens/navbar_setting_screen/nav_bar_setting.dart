import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fpts_product/bloc/bloc/select_navbar_bloc.dart';
import 'package:fpts_product/ui/bottom_navbar.dart';
import 'package:fpts_product/ui/screens/navbar_setting_screen/nav_bar_style.dart';
import 'package:fpts_product/ui/widgets/list_tittle_navbar_setting.dart';

class NavBarSettingScreen extends StatefulWidget {
  const NavBarSettingScreen({super.key});

  @override
  State<NavBarSettingScreen> createState() => _NavBarSettingScreenState();
}

class _NavBarSettingScreenState extends State<NavBarSettingScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    context.read<SelectNavbarBloc>().add(SelectNavbarEventInitial());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFF101315),
        appBar: AppBar(
          centerTitle: true,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.grey[600],
            ),
            onPressed: () {},
          ),
          backgroundColor: Color(0xFF101315),
          title: Text(
            'Thanh điều hướng',
            style: TextStyle(
              letterSpacing: 1,
              fontSize: 18.sp,
              color: Colors.white,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        body: BlocBuilder<SelectNavbarBloc, SelectNavbarState>(
          builder: (context, state) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 4,
                  ),
                  decoration: BoxDecoration(
                    color: Color(0xFF191D1F),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(children: [
                    ListTittleCustom(
                        title: "Kiểu thanh điều hướng",
                        icon: Icons.more_horiz,
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => NavBarStyle()));
                        }),
                    ListTittleCustom(
                        title: "Chỉnh thanh điều hướng",
                        icon: Icons.swap_horizontal_circle_outlined,
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => NavBarStyle()));
                        }),
                  ]),
                ),
                BottomNavBar(),
              ],
            );
          },
        ));
  }
}
