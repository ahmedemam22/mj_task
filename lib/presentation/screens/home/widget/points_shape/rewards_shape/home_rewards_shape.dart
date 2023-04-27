import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mj_task/constant/assets_manager.dart';
import 'package:mj_task/constant/media_query_values.dart';
import 'package:mj_task/constant/text_styles_manager.dart';
import 'package:mj_task/presentation/widgets/linear_progress_stop_shape.dart';
import 'package:percent_indicator/percent_indicator.dart';
import '../../../../../../constant/colors.dart';
import '../../../../../widgets/linear_progress_indicator.dart';

class HomeRewardsCardShape extends StatelessWidget {
  const HomeRewardsCardShape({Key? key, }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.h,
      width: context.width,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.w),
          color: white
      ),
      child: Row(
        children: [
          Image.asset(ImageAssets.rewardsImg),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Next reward',style: TextStylesManager.regularStyle(fontSize: 12.sp,color: gray)),
              Text('24 000',style: TextStylesManager.semiBoldStyle(fontSize: 18.sp)),
              Flexible(child: LinearProgressStopShape(value: 0.8,)),
              Text('2500 left',style: TextStylesManager.regularStyle(fontSize: 10.sp,color: gray),)


            ],)
        ],
      ),
    );
  }
}
