import 'package:flutter/material.dart';
import 'package:mj_task/constant/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bloc/cubit/reward/reward_cubit.dart';

class ProgressIndicatorShape extends StatefulWidget {

  @override
  _ProgressIndicatorShapeState createState() =>
      new _ProgressIndicatorShapeState();
}

class _ProgressIndicatorShapeState extends State<ProgressIndicatorShape>
    with SingleTickerProviderStateMixin {
 late AnimationController controller;
 late Animation<double> animation;
 late RewardCubit _rewardCubit;

  @override
  void didChangeDependencies() {
    _rewardCubit=context.read<RewardCubit>();
    _rewardCubit.decreaseItems();
    controller = AnimationController(
        duration: const Duration(milliseconds: 2000), vsync: this);
    animation = Tween(begin: 0.0, end: 1.0).animate(controller)
      ..addListener(() {
        setState(() {
          if(controller.value==1)_rewardCubit.increaseItems();
          // the state that has changed here is the animation object’s value
        });
      });
    controller.animateTo(1);
    super.didChangeDependencies();

  }


  @override
  void dispose() {
    controller.stop();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return
        SizedBox(
          width: 210.w,
          height: 4.h,

          child:  LinearProgressIndicator(
            backgroundColor: lightGray,
            color: primaryColor,
            value:  animation.value,),


    );
  }}