import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fpts_product/bloc/bloc/select_navbar_bloc.dart';
import 'package:fpts_product/ui/widgets/navbar_style/classic_navbar.dart';
import 'package:fpts_product/ui/widgets/navbar_style/modern_navbar.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SelectNavbarBloc, SelectNavbarState>(
      builder: (context, state) {
        return Container(
          child: state.index == 1
              ? ClassicNavbar()
              : state.index == 0
                  ? ModernNavbar()
                  : Container(
                      child: Text('Error'),
                  ),
        );
      },
    );
  }
}
