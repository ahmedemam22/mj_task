import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:mj_task/constant/assets_manager.dart';
import 'package:mj_task/presentation/screens/home/widget/points_shape/personal/personal_details_item.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import '../../../../../../data/model/product_model.dart';
class PersonalDetailsItems extends StatelessWidget {
   PersonalDetailsItems({Key? key}) : super(key: key);
final List<ProductModel>items=[ProductModel('SHEIN VCAY Kjol', ImageAssets.item1Img, '-11'),ProductModel('Boho Clanning', ImageAssets.item2Img, '-11'),ProductModel('Slat Enkel', ImageAssets.item2Img, '-14')];
  @override
  Widget build(BuildContext context) {
    return
      GridView.custom(
        gridDelegate: SliverWovenGridDelegate.count(
          crossAxisCount: 2,
          mainAxisSpacing: 4,

          crossAxisSpacing: 4,
          pattern: [
            WovenGridTile(6 / 7,alignment: AlignmentDirectional.topEnd),
            WovenGridTile(
              4 / 7,
              crossAxisRatio: 0.9,
              alignment: AlignmentDirectional.centerEnd,
            ),

          ],
        ),
        childrenDelegate: SliverChildBuilderDelegate(
          childCount: 3,
              (context, index) => PersonalDetailsItem(productModel: items[index],),
        ),
      );

  }
}
