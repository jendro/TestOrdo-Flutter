import 'package:flutter/material.dart';
import 'package:test_ordo/ui/misc/colors_app.dart';
import 'package:test_ordo/ui/misc/dp.dart';

class ItemReview extends StatelessWidget {
  const ItemReview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    DP dp = DP(context);
    return Container(
      width: dp.full(),
      padding: EdgeInsets.all(dp.size(36)),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(dp.size(18)),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 2,
            offset: Offset(0, 2), // Shadow position
          ),
        ],
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.red,
                  ),
                  dp.sw(30),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Name',
                        style: TextStyle(
                          fontSize: dp.size(30),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        '14 Min',
                        style: TextStyle(
                          fontSize: dp.size(25),
                          color: ColorsApp.grey,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  )
                ],
              ),
              Row(
                children: [
                  Icon(
                    Icons.star,
                    color: ColorsApp.orange,
                  ),
                  dp.sw(5),
                  Text(
                    '5.0',
                    style: TextStyle(
                      fontSize: dp.size(30),
                      fontWeight: FontWeight.w500,
                    ),
                  )
                ],
              )
            ],
          ),
          dp.sh(20),
          Text(
            'That\'s a fantastic new app feature. You and your team did an excellent job of incorporating user testing feedback.',
            style: TextStyle(fontSize: dp.size(27)),
          )
        ],
      ),
    );
  }
}
