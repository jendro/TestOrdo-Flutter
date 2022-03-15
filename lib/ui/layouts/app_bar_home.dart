import 'package:flutter/material.dart';
import 'package:test_ordo/ui/misc/colors_app.dart';
import 'package:test_ordo/ui/misc/dp.dart';
import 'package:test_ordo/ui/screen/checkout_screen.dart';
import 'package:test_ordo/ui/widget/home_nav_bar_menu.dart';
import 'package:test_ordo/ui/widget/search_bar_input.dart';

class AppBarHome {
  const AppBarHome();

  void _goToCheckoutScreen(context) {
    Navigator.pushNamed(context, CheckoutScreen.id);
  }

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
              HomeNavBarMenu(
                icon: Icons.tune,
                onTap: () => _goToCheckoutScreen(context),
              ),
              HomeNavBarMenu(
                icon: Icons.shopping_bag,
                background: ColorsApp.yellow,
                onTap: () => _goToCheckoutScreen(context),
              ),
              HomeNavBarMenu(
                icon: Icons.notifications_none,
                background: ColorsApp.red,
                onTap: () => _goToCheckoutScreen(context),
              )
            ],
          ),
        ),
      ),
    );
  }
}
