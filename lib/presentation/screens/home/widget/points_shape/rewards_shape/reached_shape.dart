import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../constant/colors.dart';
import '../../../../../../constant/text_styles_manager.dart';
class ReachedShape extends StatelessWidget {
  const ReachedShape({Key? key, required this.date}) : super(key: key);
final String date;
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding:  EdgeInsets.symmetric(horizontal: 10.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Reached',style: TextStylesManager.mediumStyle(fontSize: 12.sp,color: primaryColor)),
          Text(date,style: TextStylesManager.mediumStyle(fontSize: 12.sp)),



        ],),
    );
  }
}
