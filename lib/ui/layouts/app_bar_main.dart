import 'package:flutter/material.dart';
import 'package:test_ordo/ui/misc/colors_app.dart';
import 'package:test_ordo/ui/misc/dp.dart';
import 'package:test_ordo/ui/screen/checkout_screen.dart';

class AppBarMain {
  final String title;
  final bool iconShoppingBag;
  final bool iconNotification;
  const AppBarMain({
    required this.title,
    this.iconShoppingBag = true,
    this.iconNotification = true,
  });

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
          vertical: dp.size(56),
          horizontal: dp.size(56),
        ),
        child: SafeArea(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: Icon(
                      Icons.arrow_circle_left,
                      color: ColorsApp.blue2,
                    ),
                  ),
                  dp.sw(34),
                  Text(
                    title,
                    style: TextStyle(
                      color: ColorsApp.blue2,
                      fontWeight: FontWeight.w700,
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  if (iconShoppingBag)
                    GestureDetector(
                      onTap: () => _goToCheckoutScreen(context),
                      child: Icon(
                        Icons.shopping_bag,
                        color: ColorsApp.blue1,
                      ),
                    ),
                  dp.sw(20),
                  if (iconNotification)
                    GestureDetector(
                      onTap: () => {},
                      child: Icon(
                        Icons.notifications,
                        color: ColorsApp.red,
                      ),
                    ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
