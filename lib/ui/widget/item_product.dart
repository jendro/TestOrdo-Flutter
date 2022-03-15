import 'package:flutter/material.dart';
import 'package:test_ordo/model/product.dart';
import 'package:test_ordo/ui/misc/colors_app.dart';
import 'package:test_ordo/ui/misc/dp.dart';
import 'package:test_ordo/ui/screen/detail_product_screen.dart';

class ItemProduct extends StatelessWidget {
  final Product product;
  const ItemProduct({
    Key? key,
    required this.product,
  }) : super(key: key);

  void _gotoDetailProduct(context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => DetailProductScreen(
          product: product,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    DP dp = DP(context);
    return Container(
      padding: EdgeInsets.all(dp.size(25)),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(dp.size(36)),
        ),
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.all(
            Radius.circular(dp.size(36)),
          ),
          onTap: () => _gotoDetailProduct(context),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Container(
                    height: dp.size(295),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(product.thumbnail),
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(dp.size(18)),
                      ),
                    ),
                  ),
                  Positioned(
                    child: Container(
                      padding: EdgeInsets.all(dp.size(5)),
                      width: dp.size(200),
                      decoration: BoxDecoration(
                        color: ColorsApp.yellow,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(dp.size(15)),
                          topRight: Radius.circular(dp.size(15)),
                          bottomRight: Radius.circular(dp.size(15)),
                        ),
                      ),
                      child: Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: Colors.white,
                            size: dp.size(20),
                          ),
                          dp.sw(5),
                          Text(
                            '${product.ratting} | 200 + Rating',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w700,
                              fontSize: dp.size(17),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              dp.sh(10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      Text(
                        'Rp. ${product.price}',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: dp.size(25),
                          color: ColorsApp.blue2,
                          decoration: TextDecoration.lineThrough,
                          decorationThickness: 3,
                        ),
                      ),
                      Text(
                        'Rp. ${(product.price - (product.discount! * product.price / 100)).toInt()}',
                        style: TextStyle(
                          fontWeight: FontWeight.w800,
                          fontSize: dp.size(25),
                          color: ColorsApp.blue1,
                        ),
                      ),
                    ],
                  ),
                  if (product.discount != null)
                    Container(
                      padding: EdgeInsets.all(dp.size(11)),
                      decoration: BoxDecoration(
                        color: ColorsApp.blue1,
                        borderRadius: BorderRadius.all(
                          Radius.circular(18),
                        ),
                      ),
                      child: Text(
                        'diskon ${product.discount ?? 0}%',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                          fontSize: dp.size(15),
                        ),
                      ),
                    )
                ],
              ),
              dp.sh(10),
              Text(
                product.name,
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: dp.size(27),
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
