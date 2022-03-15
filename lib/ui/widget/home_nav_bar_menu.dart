import 'package:flutter/material.dart';
import 'package:test_ordo/ui/misc/dp.dart';

class HomeNavBarMenu extends StatelessWidget {
  final Color background;
  final Color textColor;
  final IconData icon;
  final Function? onTap;

  const HomeNavBarMenu({
    Key? key,
    required this.icon,
    this.background = Colors.blue,
    this.textColor = Colors.white,
    this.onTap,
  }) : super(key: key);

  void _onTap() {
    if (onTap != null) onTap!();
  }

  @override
  Widget build(BuildContext context) {
    DP dp = DP(context);
    return InkWell(
      onTap: () => _onTap(),
      child: Container(
        padding: EdgeInsets.all(dp.size(18)),
        decoration: BoxDecoration(
          color: background,
          borderRadius: BorderRadius.all(Radius.circular(dp.size(13))),
        ),
        child: Icon(
          icon,
          size: dp.size(30),
          color: textColor,
        ),
      ),
    );
  }
}
