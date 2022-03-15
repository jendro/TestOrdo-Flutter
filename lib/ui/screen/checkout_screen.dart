import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:test_ordo/ui/layouts/app_bar_main.dart';
import 'package:test_ordo/ui/misc/colors_app.dart';
import 'package:test_ordo/ui/misc/dp.dart';
import 'package:test_ordo/ui/widget/image_slider.dart';
import 'package:test_ordo/ui/widget/input_text_1.dart';
import 'package:test_ordo/ui/widget/item_checkout.dart';
import 'package:test_ordo/ui/widget/item_review.dart';

class CheckoutScreen extends StatefulWidget {
  CheckoutScreen({Key? key}) : super(key: key);

  static const String id = 'checkout_screen';

  @override
  _CheckoutScreenState createState() => _CheckoutScreenState();
}

class _CheckoutScreenState extends State<CheckoutScreen> {
  late DP dp;
  TextEditingController _catatanController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    dp = DP(context);
    return Scaffold(
      backgroundColor: ColorsApp.background2,
      appBar: AppBarMain(
        title: 'Checkout',
        iconNotification: false,
        iconShoppingBag: false,
      ).build(context),
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(
            horizontal: dp.size(65),
          ),
          children: [
            ItemCheckout(),
            dp.sh(30),
            ItemCheckout(),
            dp.sh(30),
            Divider(),
            dp.sh(30),
            Container(
              width: dp.full(),
              padding: EdgeInsets.symmetric(
                horizontal: dp.size(27),
                vertical: dp.size(40),
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(dp.size(45)),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Catatan Pesanan',
                    style: TextStyle(
                      fontSize: dp.size(27),
                      color: Colors.black.withOpacity(0.5),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  dp.sh(10),
                  InputText(
                    controller: _catatanController,
                    hint: 'Ketik disini...',
                  ),
                ],
              ),
            ),
            dp.sh(30),
            Text(
              'Detail Pembayaran',
              style: TextStyle(
                fontSize: dp.size(29),
                fontWeight: FontWeight.w600,
              ),
            ),
            dp.sh(22),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Tas Eiger',
                      style: TextStyle(
                        fontSize: dp.size(29),
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      '(Qty. 1)',
                      style: TextStyle(
                        fontSize: dp.size(29),
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
                Text(
                  'Rp. 75.000',
                  style: TextStyle(
                    fontSize: dp.size(29),
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            dp.sh(22),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Tas Gucci',
                      style: TextStyle(
                        fontSize: dp.size(29),
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      '(Qty. 1)',
                      style: TextStyle(
                        fontSize: dp.size(29),
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
                Text(
                  'Rp. 75.000',
                  style: TextStyle(
                    fontSize: dp.size(29),
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            dp.sh(22),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Ongkos Kirim',
                  style: TextStyle(
                    fontSize: dp.size(29),
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Text(
                  'Rp. 10.000',
                  style: TextStyle(
                    fontSize: dp.size(29),
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            Divider(height: dp.size(60)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Sub Total',
                  style: TextStyle(
                    fontSize: dp.size(29),
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  'Rp. 160.000',
                  style: TextStyle(
                    fontSize: dp.size(29),
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            dp.sh(71),
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: dp.size(36),
                vertical: dp.size(20),
              ),
              decoration: BoxDecoration(
                color: ColorsApp.blue1,
                borderRadius: BorderRadius.all(
                  Radius.circular(dp.size(52)),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Waktu Pengantaran',
                    style: TextStyle(
                      fontSize: dp.size(30),
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                  Icon(
                    Icons.arrow_forward_ios_rounded,
                    color: Colors.white,
                    size: dp.size(30),
                  ),
                ],
              ),
            ),
            dp.sh(52),
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: dp.size(36),
                vertical: dp.size(20),
              ),
              decoration: BoxDecoration(
                color: ColorsApp.blue1,
                borderRadius: BorderRadius.all(
                  Radius.circular(dp.size(52)),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Alamat Pengiriman',
                    style: TextStyle(
                      fontSize: dp.size(30),
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                  Icon(
                    Icons.arrow_forward_ios_rounded,
                    color: Colors.white,
                    size: dp.size(30),
                  ),
                ],
              ),
            ),
            dp.sh(52),
            Container(
              width: dp.full(),
              padding: EdgeInsets.symmetric(
                horizontal: dp.size(27),
                vertical: dp.size(40),
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(dp.size(45)),
                ),
              ),
              child: Text(
                'Tolong pastikan semua pesanan anda sudah benar dan tidak kurang',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: dp.size(31),
                  color: ColorsApp.green,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            dp.sh(52),
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: dp.size(36),
                vertical: dp.size(30),
              ),
              decoration: BoxDecoration(
                color: ColorsApp.blue1,
                borderRadius: BorderRadius.all(
                  Radius.circular(dp.size(52)),
                ),
              ),
              child: Text(
                'Bayar Sekarang',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: dp.size(43),
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
            ),
            dp.sh(50),
          ],
        ),
      ),
    );
  }
}
