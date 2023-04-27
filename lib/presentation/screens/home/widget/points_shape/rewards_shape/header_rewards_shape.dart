import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../config/routes/app_routes.dart';
import '../../../../../../constant/colors.dart';
import '../../../../../../constant/text_styles_manager.dart';
class HeaderRewardsShape extends StatelessWidget {
  const HeaderRewardsShape({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
        Text('Rewards',style: TextStylesManager.semiBoldStyle(fontSize:20.sp,)),
    InkWell(
      onTap: ()=>Navigator.pushNamed(context, Routes.rewardsRoute),
      child: Row(
      children: [
      Text('More',style: TextStylesManager.semiBoldStyle(fontSize:14.sp,color: primaryColor),),
      Icon(Icons.arrow_forward_ios_outlined,color: primaryColor,)
      ],
      ),
    )]);
  }
}
