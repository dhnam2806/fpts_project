import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fpts_product/bloc/bloc/select_navbar_bloc.dart';
import 'package:fpts_product/ui/widgets/navbar_style/classic_navbar.dart';
import 'package:fpts_product/ui/widgets/navbar_style/modern_navbar.dart';

class NavBarStyle extends StatefulWidget {
  const NavBarStyle({super.key});

  @override
  State<NavBarStyle> createState() => _NavBarStyleState();
}

class _NavBarStyleState extends State<NavBarStyle> {
  int? _selectedIndex;

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
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          backgroundColor: Color(0xFF101315),
          title: Text(
            'Kiểu thanh điều hướng',
            style: TextStyle(
              letterSpacing: 1,
              fontSize: 18.sp,
              color: Colors.white,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        body: BlocConsumer<SelectNavbarBloc, SelectNavbarState>(
          listener: (context, state) {
            if (state.index == 0) {
              _selectedIndex = 0;
            }
            if (state.index == 1) {
              _selectedIndex = 1;
            }
          },
          builder: (context, state) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  // color: Colors.amberAccent,
                  child: Column(
                    children: [
                      RadioListTile(
                        value: 0,
                        activeColor: Color(0xFF00B36F),
                        groupValue: _selectedIndex,
                        onChanged: (value) {
                          setState(() {
                            _selectedIndex = value as int;
                          });
                          context.read<SelectNavbarBloc>().add(
                                SelectNavbarEventChange(index: value as int),
                              );
                        },
                        title: Text(
                          'Hiện đại',
                          style: TextStyle(
                            fontSize: 14.sp,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      ModernNavbar(),
                      SizedBox(
                        height: 20.h,
                      ),
                      RadioListTile(
                        value: 1,
                        activeColor: Color(0xFF00B36F),
                        groupValue: _selectedIndex,
                        onChanged: (value) {
                          setState(() {
                            _selectedIndex = value as int;
                          });
                          context.read<SelectNavbarBloc>().add(
                                SelectNavbarEventChange(index: value as int),
                              );
                        },
                        title: Text(
                          'Cổ điển',
                          style: TextStyle(
                            fontSize: 14.sp,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      ClassicNavbar(),
                    ],
                  ),
                ),
                Container(
                  child: state.index == 1
                      ? ClassicNavbar()
                      : state.index == 0
                          ? ModernNavbar()
                          : Container(
                              child: Text('Error'),
                            ),
                )
              ],
            );
          },
        ));
  }
}
