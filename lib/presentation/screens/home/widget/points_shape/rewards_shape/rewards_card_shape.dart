import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mj_task/constant/assets_manager.dart';
import 'package:mj_task/constant/media_query_values.dart';
import 'package:mj_task/constant/text_styles_manager.dart';
import 'package:mj_task/presentation/screens/home/widget/points_shape/rewards_shape/reached_shape.dart';
import 'package:mj_task/presentation/widgets/linear_progress_stop_shape.dart';
import 'package:percent_indicator/percent_indicator.dart';
import '../../../../../../bloc/cubit/reward/reward_cubit.dart';
import '../../../../../../constant/colors.dart';
import '../../../../../widgets/linear_progress_indicator.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RewardsCardShape extends StatelessWidget {
  const RewardsCardShape({Key? key, required this.isStop, required this.title, required this.imagePath,  this.isReached=false}) : super(key: key);
final bool isStop;
final String title;
final bool isReached;
final String imagePath;
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
          Image.asset(imagePath,height: 80.h,width: 80.w,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            SizedBox(
              width: 220.w,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Text('Next reward',style: TextStylesManager.regularStyle(fontSize: 12.sp,color: gray)),
                      Text(title,style: TextStylesManager.semiBoldStyle(fontSize: 18.sp)),

                    ],
                  ),
                  if(isReached)ReachedShape(date: '2023-01-20')

                ],
              ),
            ),
              Flexible(child:isStop?LinearProgressStopShape(): ProgressIndicatorShape()),
            Text('2500 left',style: TextStylesManager.regularStyle(fontSize: 10.sp,color: gray),)


          ],)
        ],
      ),
    );
  }
}
