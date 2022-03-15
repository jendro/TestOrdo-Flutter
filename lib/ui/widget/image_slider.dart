import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:test_ordo/ui/misc/colors_app.dart';
import 'package:test_ordo/ui/misc/dp.dart';

class ImageSlider extends StatefulWidget {
  int height;
  List<String> imgList;
  ImageSlider({
    Key? key,
    required this.imgList,
    this.height = 404,
  }) : super(key: key);

  @override
  State<ImageSlider> createState() => _ImageSliderState();
}

class _ImageSliderState extends State<ImageSlider> {
  late DP dp;
  final CarouselController _controller = CarouselController();
  int _current = 0;

  @override
  Widget build(BuildContext context) {
    dp = DP(context);

    return Container(
      child: Column(
        children: [
          CarouselSlider(
            carouselController: _controller,
            items: _listImage(),
            options: CarouselOptions(
              autoPlay: true,
              height: dp.size(widget.height),
              viewportFraction: 0.88,
              enlargeCenterPage: true,
              onPageChanged: (index, reason) {
                setState(() {
                  _current = index;
                });
              },
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: widget.imgList.asMap().entries.map(
              (entry) {
                return GestureDetector(
                  onTap: () => _controller.animateToPage(entry.key),
                  child: Container(
                    width: dp.size(_current == entry.key ? 45 : 65),
                    height: dp.size(15),
                    margin: EdgeInsets.symmetric(
                      vertical: 8.0,
                      horizontal: 4.0,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(dp.size(10)),
                      ),
                      color: _current == entry.key
                          ? ColorsApp.blue2
                          : ColorsApp.blue1,
                    ),
                  ),
                );
              },
            ).toList(),
          ),
        ],
      ),
    );
  }

  List<Widget> _listImage() {
    return widget.imgList
        .map(
          (item) => Container(
            child: Container(
              margin: EdgeInsets.all(5.0),
              child: ClipRRect(
                borderRadius: BorderRadius.all(
                  Radius.circular(dp.size(20)),
                ),
                child: Image.asset(
                  item,
                  fit: BoxFit.cover,
                  width: dp.full(),
                ),
              ),
            ),
          ),
        )
        .toList();
  }
}
