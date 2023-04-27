import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mj_task/constant/assets_manager.dart';
import 'package:mj_task/constant/text_styles_manager.dart';
import 'package:mj_task/presentation/screens/home/widget/points_shape/rewards_shape/reached_shape.dart';
import 'package:percent_indicator/percent_indicator.dart';
import '../../../../../../constant/colors.dart';

class ReachedCardShape extends StatelessWidget {
  const ReachedCardShape({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.w),
          color: white
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(children:[ Image.asset(ImageAssets.rewards1kImg,height: 80.h,width: 80.w,),
            Column(
              children: [
                Text('Reward',style: TextStylesManager.regularStyle(fontSize: 12.sp,color: gray)),
                Text('10 000',style: TextStylesManager.semiBoldStyle(fontSize: 18.sp)),



              ],),
          ]),
         ReachedShape(date: '2022-10-17',)




        ],
      ),
    );
  }
}
