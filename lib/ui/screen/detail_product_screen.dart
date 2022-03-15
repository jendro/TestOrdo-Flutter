import 'package:flutter/material.dart';
import 'package:test_ordo/model/product.dart';
import 'package:test_ordo/model/review.dart';
import 'package:test_ordo/ui/layouts/app_bar_home.dart';
import 'package:test_ordo/ui/layouts/app_bar_main.dart';
import 'package:test_ordo/ui/misc/colors_app.dart';
import 'package:test_ordo/ui/misc/dp.dart';
import 'package:test_ordo/ui/widget/bottom_navigation_custom.dart';
import 'package:test_ordo/ui/widget/image_slider.dart';
import 'package:test_ordo/ui/widget/item_product.dart';
import 'package:test_ordo/ui/widget/item_review.dart';

class DetailProductScreen extends StatefulWidget {
  Product? product;
  DetailProductScreen({
    Key? key,
    this.product,
  }) : super(key: key);

  static const String id = 'detail_product_screen';

  @override
  _DetailProductScreenState createState() => _DetailProductScreenState();
}

class _DetailProductScreenState extends State<DetailProductScreen> {
  late DP dp;

  @override
  Widget build(BuildContext context) {
    dp = DP(context);
    return Scaffold(
      backgroundColor: ColorsApp.background,
      appBar: AppBarMain(
        title: 'PRODUK DETAIL',
      ).build(context),
      bottomNavigationBar: BottomNavigationCustom(context: context).build(),
      body: SafeArea(
        child: ListView(
          children: [
            dp.sh(20),
            ImageSlider(
              height: 500,
              imgList: [
                'assets/images/product.png',
                'assets/images/product.png',
              ],
            ),
            dp.sh(104),
            Container(
              padding: EdgeInsets.only(top: dp.size(35)),
              decoration: BoxDecoration(
                color: ColorsApp.red,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(dp.size(131)),
                ),
              ),
              child: Container(
                constraints: BoxConstraints(
                  minHeight: 420,
                ),
                padding: EdgeInsets.symmetric(
                  horizontal: dp.size(65),
                  vertical: dp.size(63),
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(dp.size(131)),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              widget.product!.name,
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                                color: ColorsApp.green,
                                fontSize: dp.size(36),
                              ),
                            ),
                            dp.sh(11),
                            Text(
                              'Rp. ${widget.product?.price}',
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                                color: ColorsApp.blue2,
                                fontSize: dp.size(40),
                                decoration: TextDecoration.lineThrough,
                                decorationThickness: 2,
                              ),
                            ),
                            Text(
                              'Rp. ${(widget.product!.price - (widget.product!.price * widget.product!.discount! / 100)).toInt()}',
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                                color: ColorsApp.blue1,
                                fontSize: dp.size(34),
                              ),
                            )
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Row(
                              children: [
                                Container(
                                  padding: EdgeInsets.symmetric(
                                    vertical: dp.size(10),
                                    horizontal: dp.size(22),
                                  ),
                                  decoration: BoxDecoration(
                                    color: ColorsApp.yellow,
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(dp.size(31)),
                                    ),
                                  ),
                                  child: Text(
                                    'Barang Bekas',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: dp.size(22),
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                                dp.sw(22),
                                Container(
                                  padding: EdgeInsets.symmetric(
                                    vertical: dp.size(10),
                                    horizontal: dp.size(22),
                                  ),
                                  decoration: BoxDecoration(
                                    color: ColorsApp.blue2,
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(dp.size(31)),
                                    ),
                                  ),
                                  child: Text(
                                    'Stok 100',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: dp.size(22),
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                )
                              ],
                            ),
                            dp.sh(25),
                            Container(
                              padding: EdgeInsets.symmetric(
                                vertical: dp.size(10),
                                horizontal: dp.size(22),
                              ),
                              decoration: BoxDecoration(
                                color: ColorsApp.blue1,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(dp.size(31)),
                                ),
                              ),
                              child: Text(
                                'Diskon 10%',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: dp.size(22),
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                    Divider(height: dp.size(60)),
                    Text(
                      'Vendor',
                      style: TextStyle(
                        color: ColorsApp.green,
                        fontWeight: FontWeight.w600,
                        fontSize: dp.size(29),
                      ),
                    ),
                    dp.sh(20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            CircleAvatar(
                              backgroundColor: Colors.red,
                              backgroundImage: AssetImage(
                                'assets/images/profile_1.png',
                              ),
                            ),
                            dp.sw(30),
                            Text(
                              'Eiger Store',
                              style: TextStyle(
                                fontSize: dp.size(29),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  color: ColorsApp.blue1,
                                ),
                                dp.sw(5),
                                Text(
                                  '5.0',
                                  style: TextStyle(
                                    fontSize: dp.size(29),
                                    color: ColorsApp.blue1,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                dp.sw(15),
                                Text(
                                  '|',
                                  style: TextStyle(
                                    fontSize: dp.size(29),
                                    color: ColorsApp.blue1,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                dp.sw(15),
                                Text(
                                  '200 Terjual',
                                  style: TextStyle(
                                    fontSize: dp.size(29),
                                    color: ColorsApp.blue1,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                    dp.sh(30),
                    Text(
                      'Deskripsi',
                      style: TextStyle(
                        color: ColorsApp.green,
                        fontWeight: FontWeight.w600,
                        fontSize: dp.size(29),
                      ),
                    ),
                    dp.sh(20),
                    Text(
                      'In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available.',
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        color: ColorsApp.green,
                        fontWeight: FontWeight.w400,
                        fontSize: dp.size(29),
                      ),
                    ),
                    dp.sh(30),
                    Text(
                      'Ulasan dan Penilaian',
                      style: TextStyle(
                        color: ColorsApp.green,
                        fontWeight: FontWeight.w600,
                        fontSize: dp.size(29),
                      ),
                    ),
                    dp.sh(20),
                    ItemReview(),
                    dp.sh(20),
                    ItemReview(),
                    dp.sh(20),
                    ItemReview(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
