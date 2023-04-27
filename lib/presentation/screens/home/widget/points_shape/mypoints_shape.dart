import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mj_task/constant/colors.dart';
import 'package:mj_task/constant/text_styles_manager.dart';

class MyPointsShape extends StatelessWidget {
  const MyPointsShape({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
    Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.w),
        color: simpleLightGrey,

      ),
      child: Padding(
        padding:  EdgeInsets.only(left: 16.w,right: 12.w,top: 15.h,bottom: 15.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('12 300 p',style: TextStylesManager.boldStyle(fontSize: 30.sp,color: primaryColor),),
            Container(

              decoration: BoxDecoration(
                  color: simpledarkGrey,
                  borderRadius: BorderRadius.circular(20.w)),
              child:  Padding(
                padding:  EdgeInsets.symmetric(horizontal: 5.w,vertical: 2.h),
                child: Text('Read more',style: TextStylesManager.regularStyle(fontSize: 12.sp),),
              ),),
          ],
        ),
      ),
    
    );
  }
}
