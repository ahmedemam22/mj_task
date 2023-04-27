import 'package:flutter/material.dart';
import 'package:mj_task/constant/text_styles_manager.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PersonalHeader extends StatelessWidget {
  const PersonalHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text('Personal deals',style: TextStylesManager.mediumStyle(fontSize: 20.sp),);
  }
}
