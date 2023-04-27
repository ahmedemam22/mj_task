import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../constant/colors.dart';
import '../../constant/fonts_manager.dart';



ThemeData appTheme() {
return ThemeData(
fontFamily: FontFamilyManager.fontFamily,
useMaterial3: true,
primaryColor: primaryColor,
scaffoldBackgroundColor:backgroundColor ,
colorScheme: ColorScheme.light(primary: blue),


textTheme: TextTheme(bodyText2: TextStyle(fontSize: 30.sp)),
);}