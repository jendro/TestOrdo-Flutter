import 'package:flutter/material.dart';
import 'package:test_ordo/model/product.dart';
import 'package:test_ordo/model/vendor.dart';
import 'package:test_ordo/ui/layouts/app_bar_home.dart';
import 'package:test_ordo/ui/misc/colors_app.dart';
import 'package:test_ordo/ui/misc/dp.dart';
import 'package:test_ordo/ui/widget/bottom_navigation_custom.dart';
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

  List<Product> products = [
    Product(
      vendor: Vendor(thumbnail: 'assets/images/profile_1', name: 'Eiger'),
      thumbnail: 'assets/images/product_1.png',
      name: 'Handphone',
      price: 10000,
      discount: 25,
      ratting: 4.5,
      sales: 5,
    ),
    Product(
      vendor: Vendor(thumbnail: 'assets/images/profile_2', name: 'Penjual'),
      thumbnail: 'assets/images/product_2.png',
      name: 'Speaker',
      price: 15000,
      discount: 10,
      ratting: 3.9,
    ),
    Product(
      vendor: Vendor(thumbnail: 'assets/images/profile_3', name: 'Pedagang'),
      thumbnail: 'assets/images/product_3.png',
      name: 'Speaker',
      price: 25000,
      discount: 45,
      ratting: 5,
    ),
    Product(
      vendor: Vendor(thumbnail: 'assets/images/profile_3', name: 'Pedagang'),
      thumbnail: 'assets/images/product_4.png',
      name: 'Speaker',
      price: 25000,
      discount: 45,
      ratting: 5,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    dp = DP(context);
    return Scaffold(
      backgroundColor: ColorsApp.background,
      appBar: AppBarHome().build(context),
      bottomNavigationBar: BottomNavigationCustom(context: context).build(),
      body: SafeArea(
        child: ListView(
          children: [
            dp.sh(10),
            ImageSlider(
              height: 404,
              imgList: [
                'assets/images/slider.png',
                'assets/images/slider.png',
                'assets/images/slider.png',
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
                  ItemProduct(product: products[0]),
                  ItemProduct(product: products[1]),
                  ItemProduct(product: products[2]),
                  ItemProduct(product: products[1]),
                  ItemProduct(product: products[3]),
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
