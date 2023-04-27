import 'package:flutter/material.dart';

import '../../../../../constant/assets_manager.dart';
import 'offer_item_shape.dart';
class OffersItemShape extends StatelessWidget {
  const OffersItemShape({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: 10,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 11.0,
          mainAxisSpacing: 11.0,
        childAspectRatio: 1.4
      ),
      itemBuilder: (BuildContext context, int index){
        return OfferItemShape(imagePath:index%2==0? ImageAssets.offer1Img:ImageAssets.offer2Img,);
      },
    );
  }
}
