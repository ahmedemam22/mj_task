import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../constant/assets_manager.dart';
import '../constant/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constant/text_styles_manager.dart';

class BottomBar{
  BottomNavigationBar bottomNavBarShape(){
   return BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: 1,
        selectedItemColor: primaryColor,
        unselectedItemColor: black,

        unselectedFontSize: 10.sp,
        selectedLabelStyle: TextStylesManager.semiBoldStyle(fontSize: 12.sp),
        unselectedLabelStyle: TextStylesManager.semiBoldStyle(fontSize: 10.sp,color: black),
        items: [
    BottomNavigationBarItem(
    icon: SvgPicture.asset(ImageAssets.homeIcon),
    label: 'Home',
    ),
    BottomNavigationBarItem(
    icon: SvgPicture.asset(ImageAssets.brandIcon),
    label: 'My brands',
    ),
    BottomNavigationBarItem(
    icon: SvgPicture.asset(ImageAssets.scanIcon),
    label: 'Scann',
    ),
    BottomNavigationBarItem(
    icon: SvgPicture.asset(ImageAssets.idIcon),
    label: 'My ID',
    ),
    BottomNavigationBarItem(
    icon: SvgPicture.asset(ImageAssets.moreIcon),
    label: 'More',



    )]);
  }
}