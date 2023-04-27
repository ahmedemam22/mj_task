import 'package:flutter/material.dart';
import 'package:mj_task/constant/colors.dart';
import 'package:mj_task/constant/text_styles_manager.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mj_task/presentation/screens/home/widget/points_shape/rewards_shape/header_rewards_shape.dart';
import 'package:mj_task/presentation/screens/home/widget/points_shape/rewards_shape/home_rewards_shape.dart';
import 'package:mj_task/presentation/screens/home/widget/points_shape/rewards_shape/rewards_card_shape.dart';

import '../../../../../../config/routes/app_routes.dart';

class RewardsShape extends StatelessWidget {
  const RewardsShape({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(vertical: 20.h),
      child: Column(
        children: [
         HeaderRewardsShape(),
          10.verticalSpace,
          InkWell(
              onTap: ()=>Navigator.pushNamed(context, Routes.rewardsRoute),child: HomeRewardsCardShape())

            ],
          )


    );
  }
}
