import 'package:flutter/material.dart';
import 'package:mj_task/bloc/cubit/reward/reward_cubit.dart';
import 'package:mj_task/constant/media_query_values.dart';
import 'package:mj_task/constant/text_styles_manager.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mj_task/presentation/screens/home/widget/points_shape/rewards_shape/reached_card_shape.dart';
import 'package:mj_task/presentation/screens/home/widget/points_shape/rewards_shape/rewards_card_shape.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gif/flutter_gif.dart';
import '../../../../constant/assets_manager.dart';
import '../../../widgets/timline_shape.dart';

class RewardsStepperShape extends StatefulWidget {
   RewardsStepperShape({Key? key}) : super(key: key);

  @override
  State<RewardsStepperShape> createState() => _RewardsStepperShapeState();
}

class _RewardsStepperShapeState extends State<RewardsStepperShape>  with TickerProviderStateMixin{
  late  FlutterGifController controller;
  @override
  void initState() {
    // TODO: implement initState
  controller = FlutterGifController(vsync: this);

    super.initState();

  }


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 16.w),
      child: BlocBuilder<RewardCubit, RewardState>(
          builder: (context, state) {
            return Stack(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Rewards',
                      style: TextStylesManager.semiBoldStyle(fontSize: 20.sp),),
                    Expanded(
                      child:
                      Row(
                        children: [
                          TimeLineShape(),
                          Expanded(
                            child: ListView.builder(
                                itemCount: context
                                    .read<RewardCubit>()
                                    .itemLength,
                                itemBuilder: (BuildContext context, int index) {
                                  return Column(children: [
                                    index == 0
                                        ? ReachedCardShape()
                                        :index==1? RewardsCardShape(isStop:false,title: '24 000',imagePath: ImageAssets.rewardsImg,isReached:context.read<RewardCubit>().itemLength==3):RewardsCardShape(isStop:true,title: '50 000',imagePath: ImageAssets.rewards5kImg),
                                    10.verticalSpace,

                                  ]);
                                }),
                          ),
                        ],

                      ),
                    )
                  ],
                ),
                if(state is PlayGif)   Image.network('https://media2.giphy.com/media/v1.Y2lkPTc5MGI3NjExMGRhYmM3NDhjOTZhZTg5ZTIzNTA3MWJlNGY3Y2NkZTY0YzQzYmFiYSZlcD12MV9pbnRlcm5hbF9naWZzX2dpZklkJmN0PXM/yzGUP05ruqIrOx6fll/giphy.gif',width: context.width,height: context.height,)
              ],
            );
          }),
    );
  }
}
