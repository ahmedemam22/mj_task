import 'package:flutter/material.dart';
import 'package:mj_task/presentation/screens/rewards/widget/rewards_shape.dart';
import 'package:mj_task/presentation/widgets/buttons/back_button_shape.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../utils/bottom_bar.dart';

class RewardsScreen extends StatelessWidget {
  const RewardsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar:
       BottomBar().bottomNavBarShape(),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          BackButtonShape(),
          10.verticalSpace,
          Expanded(child: RewardsStepperShape())
          
        ],
      ),
    );
  }
}
