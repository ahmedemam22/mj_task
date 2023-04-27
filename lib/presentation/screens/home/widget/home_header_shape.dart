import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:mj_task/constant/assets_manager.dart';
import 'package:mj_task/constant/media_query_values.dart';
import 'package:mj_task/presentation/widgets/buttons/back_button_shape.dart';
class HomeHeaderShape extends StatelessWidget {
  const HomeHeaderShape({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(ImageAssets.headerImg,width: context.width,fit: BoxFit.fill,),
        Align(
          alignment: Alignment.topLeft,

            child: BackButtonShape(),
          )

      ],
    );
  }
}
