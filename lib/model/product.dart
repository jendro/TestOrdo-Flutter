import 'package:test_ordo/model/review.dart';
import 'package:test_ordo/model/vendor.dart';

class Product {
  final String thumbnail;
  final String name;
  final Vendor vendor;
  final String? description;
  final int? stock;
  final int? sales;
  final int? discount;
  final double? ratting;
  final int? rattingCount;
  final bool isUsed;
  final List<Review>? review;

  Product({
    required this.thumbnail,
    required this.name,
    required this.vendor,
    this.description,
    this.stock,
    this.sales,
    this.discount,
    this.ratting,
    this.rattingCount,
    this.isUsed = false,
    this.review,
  });
}
