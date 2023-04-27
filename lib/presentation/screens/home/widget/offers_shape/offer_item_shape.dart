import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:mj_task/constant/assets_manager.dart';
class OfferItemShape extends StatelessWidget {
  const OfferItemShape({Key? key, required this.imagePath}) : super(key: key);
final String imagePath;
  @override
  Widget build(BuildContext context) {
    return Container(         decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.w)),
    child: ClipRRect(

        borderRadius: BorderRadius.circular(20.w),
        child: Image.asset(

          imagePath,
          fit: BoxFit.fill,
          height: 120.h,

        ),
      ),
    );
  }
}
