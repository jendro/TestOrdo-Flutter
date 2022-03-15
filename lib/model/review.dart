import 'package:test_ordo/model/user.dart';
import 'package:test_ordo/model/vendor.dart';

class Review {
  final User user;
  final String review;
  final String? timeElapse;
  final double? ratting;

  Review({
    required this.user,
    required this.review,
    this.timeElapse,
    this.ratting,
  });
}
