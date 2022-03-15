import 'package:flutter/material.dart';
import 'package:test_ordo/ui/layouts/app_bar_home.dart';
import 'package:test_ordo/ui/misc/colors_app.dart';
import 'package:test_ordo/ui/misc/dp.dart';
import 'package:test_ordo/ui/widget/image_slider.dart';
import 'package:test_ordo/ui/widget/item_product.dart';

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
      appBar: AppBarHome().build(context),
      body: SafeArea(
        child: ListView(
          children: [
            dp.sh(10),
            ImageSlider(
              height: 404,
              imgList: [
                'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
                'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
                'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
              ],
            ),
            dp.sh(56),
            Container(
              padding: EdgeInsets.symmetric(horizontal: dp.size(65)),
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: dp.size(56),
                mainAxisSpacing: dp.size(56),
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                childAspectRatio: 0.7,
                children: [
                  ItemProduct(),
                  ItemProduct(),
                  ItemProduct(),
                  ItemProduct(),
                  ItemProduct(),
                  ItemProduct(),
                ],
              ),
            ),
            dp.sh(30),
          ],
        ),
      ),
    );
  }
}
