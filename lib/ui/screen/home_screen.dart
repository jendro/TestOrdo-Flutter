import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:test_ordo/ui/layouts/app_bar_home.dart';
import 'package:test_ordo/ui/misc/colors_app.dart';
import 'package:test_ordo/ui/misc/dp.dart';
import 'package:test_ordo/ui/widget/image_slider.dart';
import 'package:test_ordo/ui/widget/search_bar_input.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  static const String id = 'home_screen';

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late DP dp;

  @override
  Widget build(BuildContext context) {
    dp = DP(context);
    return Scaffold(
      backgroundColor: ColorsApp.background,
      appBar: AppBarHome().build(dp),
      body: SafeArea(
        child: ListView(
          children: [
            dp.sh(32),
            ImageSlider(),
          ],
        ),
      ),
    );
  }
}
