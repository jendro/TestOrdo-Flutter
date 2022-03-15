import 'package:flutter/material.dart';

//Density Pixel
class DP {
  double mainDp = 910;
  final context;
  DP(this.context);

  double size(dp) {
    double size = ((dp == null) ? mainDp : dp) /
        mainDp *
        MediaQuery.of(context).size.width;
    return size;
  }

  double full() {
    return MediaQuery.of(context).size.width;
  }

  /** SizedBox Height */

  //spacing height
  Widget sh(double size) {
    return SizedBox(
      height: this.size(size),
    );
  }

  //spacing width
  Widget sw(double size) {
    return SizedBox(
      width: this.size(size),
    );
  }
}
