import 'package:flutter/material.dart';
import 'package:test_ordo/ui/misc/colors_app.dart';
import 'package:test_ordo/ui/misc/dp.dart';
import 'package:test_ordo/ui/screen/detail_product_screen.dart';

class ItemProduct extends StatelessWidget {
  const ItemProduct({Key? key}) : super(key: key);

  void _gotoDetailProduct(context) {
    Navigator.pushNamed(context, DetailProductScreen.id);
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
                        image: NetworkImage(
                          'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
                        ),
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
                            '5.0 | 200 + Rating',
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
                        'Rp. 15000',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: dp.size(25),
                          color: ColorsApp.blue2,
                          decoration: TextDecoration.lineThrough,
                          decorationThickness: 3,
                        ),
                      ),
                      Text(
                        'Rp. 10000',
                        style: TextStyle(
                          fontWeight: FontWeight.w800,
                          fontSize: dp.size(25),
                          color: ColorsApp.blue1,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.all(dp.size(11)),
                    decoration: BoxDecoration(
                      color: ColorsApp.blue1,
                      borderRadius: BorderRadius.all(
                        Radius.circular(18),
                      ),
                    ),
                    child: Text(
                      'diskon 10%',
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
                'Nama Barang Lumayan Panjang',
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
