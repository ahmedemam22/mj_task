import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mj_task/bloc/cubit/reward/reward_cubit.dart';
import 'package:mj_task/constant/colors.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../constant/assets_manager.dart';
class TimeLineShape extends StatelessWidget {
  const TimeLineShape({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
         Padding(
           padding:  EdgeInsets.only(top: 25.h,right: 5.h),
           child: Column(
             children: [
               SvgPicture.asset(ImageAssets.checkIcon),
              Container(
                   width: 2.w,
                   height: 60.h,
                   color: primaryColor,
                 ),
               Container(
                 width: 2.w,
                 height: 60.h,
                 color:context.read<RewardCubit>().itemLength==3? primaryColor:lightGray,
               ),

               SvgPicture.asset(ImageAssets.checkIcon,color:context.read<RewardCubit>().itemLength==3? primaryColor:lightGray,),
if(context.read<RewardCubit>().itemLength==3) Column(
  children: [
        Container(

      width: 2.w,

      height: 60.h,

      color: lightGray,

    ),
    SvgPicture.asset(ImageAssets.checkIcon,color: lightGray,),

  ],
),

             ],
           ),
         );
  }
}
