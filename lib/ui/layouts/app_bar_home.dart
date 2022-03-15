import 'package:flutter/material.dart';
import 'package:test_ordo/ui/misc/colors_app.dart';
import 'package:test_ordo/ui/misc/dp.dart';
import 'package:test_ordo/ui/widget/home_nav_bar_menu.dart';
import 'package:test_ordo/ui/widget/search_bar_input.dart';

class AppBarHome {
  const AppBarHome();

  PreferredSize build(BuildContext context) {
    DP dp = DP(context);
    return PreferredSize(
      preferredSize: Size(0, 129),
      child: Container(
        decoration: BoxDecoration(
          color: ColorsApp.background,
          borderRadius: BorderRadius.only(bottomRight: Radius.circular(35)),
        ),
        padding: EdgeInsets.symmetric(
          vertical: dp.size(27),
          horizontal: dp.size(56),
        ),
        child: SafeArea(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: dp.size(552),
                child: SearchBar(hint: 'Cari dengan mengetik barang'),
              ),
              HomeNavBarMenu(icon: Icons.tune),
              HomeNavBarMenu(
                icon: Icons.shopping_bag,
                background: ColorsApp.yellow,
              ),
              HomeNavBarMenu(
                icon: Icons.notifications_none,
                background: ColorsApp.red,
              )
            ],
          ),
        ),
      ),
    );
  }
}
