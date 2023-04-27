import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:percent_indicator/percent_indicator.dart';
import '../../../../../../constant/colors.dart';

class LinearProgressStopShape extends StatelessWidget {
  const LinearProgressStopShape({Key? key,  this.value=0}) : super(key: key);
final double value;
  @override
  Widget build(BuildContext context) {
    return LinearPercentIndicator(
      padding: EdgeInsets.zero,
      width: 210.w,
      lineHeight: 4.h,
      barRadius: Radius.circular(5.w),
      percent: value,
      backgroundColor: lightGray,
      progressColor:primaryColor,
    );
  }
}
