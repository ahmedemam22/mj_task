import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mj_task/constant/colors.dart';
import 'package:mj_task/constant/text_styles_manager.dart';

class DiscountShape extends StatelessWidget {
  const DiscountShape({Key? key, required this.discount}) : super(key: key);
final String discount;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.w),
        color: Colors.orange
      ),
      child: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 5.w,vertical: 0.h),
        child: Text('$discount%',style: TextStylesManager.regularStyle(fontSize: 12.sp,color: white),),
      ),
    );
  }
}
