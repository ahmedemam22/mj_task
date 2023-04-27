import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../constant/assets_manager.dart';
class BackButtonShape extends StatelessWidget {
  const BackButtonShape({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(top:50.h,left: 10.w),
      child: InkWell(
      onTap: ()=>Navigator.pop(context),
          child: SvgPicture.asset(ImageAssets.backIcon)),
    );
  }
}
