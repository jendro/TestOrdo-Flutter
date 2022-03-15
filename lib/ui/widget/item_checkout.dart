import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:test_ordo/ui/misc/colors_app.dart';
import 'package:test_ordo/ui/misc/dp.dart';
import 'package:test_ordo/ui/widget/input_text_1.dart';

class ItemCheckout extends StatelessWidget {
  const ItemCheckout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    DP dp = DP(context);
    TextEditingController _catatanController = TextEditingController();
    return Slidable(
      key: const ValueKey(0),
      endActionPane: const ActionPane(
        motion: ScrollMotion(),
        children: [
          SlidableAction(
            flex: 2,
            onPressed: null,
            backgroundColor: Colors.white,
            foregroundColor: ColorsApp.blue2,
            icon: Icons.delete,
            label: 'Delete',
          ),
        ],
      ),
      child: Container(
        child: Column(
          children: [
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
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.grey[100],
                        radius: dp.size(90),
                      ),
                      dp.sw(30),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Tas Gucci',
                            style: TextStyle(
                              fontSize: dp.size(34),
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          dp.sh(25),
                          Text(
                            'Rp. 75.000',
                            style: TextStyle(
                              fontSize: dp.size(34),
                              color: ColorsApp.blue2,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(
                          vertical: dp.size(5),
                          horizontal: dp.size(30),
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(dp.size(68)),
                          ),
                          color: ColorsApp.blue1,
                        ),
                        child: Text(
                          '- 2 +',
                          style: TextStyle(
                            fontSize: dp.size(29),
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      dp.sh(25),
                      Container(
                        padding: EdgeInsets.symmetric(
                          vertical: dp.size(5),
                          horizontal: dp.size(30),
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(dp.size(68)),
                          ),
                          color: ColorsApp.blue2,
                        ),
                        child: Row(
                          children: [
                            Icon(
                              Icons.edit,
                              color: Colors.white,
                              size: dp.size(27),
                            ),
                            dp.sw(10),
                            Text(
                              'Edit Catatan',
                              style: TextStyle(
                                fontSize: dp.size(27),
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            dp.sh(22),
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
                    'Catatan Item',
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
          ],
        ),
      ),
    );
  }
}
