import 'package:flutter/material.dart';
import 'package:test_ordo/ui/misc/colors_app.dart';
import 'package:test_ordo/ui/misc/dp.dart';

class BottomNavigationCustom {
  final BuildContext context;
  BottomNavigationCustom({required this.context});

  BottomNavigationBar build() {
    DP dp = DP(context);
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.assignment),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.swap_horiz),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.home_filled),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.assessment),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: '',
        ),
      ],
      currentIndex: 2,
      unselectedItemColor: ColorsApp.grey,
      selectedItemColor: ColorsApp.green,
      backgroundColor: Colors.white,
      iconSize: dp.size(45),
      onTap: (int id) => {},
    );
  }
}
