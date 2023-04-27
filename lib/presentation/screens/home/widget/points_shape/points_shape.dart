import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:mj_task/presentation/screens/home/widget/points_shape/mypoints_shape.dart';
import 'package:mj_task/presentation/screens/home/widget/points_shape/personal/personal_shape.dart';
import 'package:mj_task/presentation/screens/home/widget/points_shape/rewards_shape/rewards_shape.dart';
class PointsShape extends StatelessWidget {
  const PointsShape({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(top: 10.w),
      child: Column(
        children: [
          MyPointsShape(),
          RewardsShape(),
          Expanded(child: PersonalShape())

        ],
      ),
    );
  }
}
