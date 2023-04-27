import 'package:flutter/material.dart';

import 'colors.dart';
import 'fonts_manager.dart';

class TextStylesManager {

   static TextStyle lightStyle({double fontSize= 14,Color? color=black}){
    return  TextStyle(
      fontFamily: FontFamilyManager.fontFamily,
      fontWeight: FontWeightManager.light,
      fontSize: fontSize,
      color: color,

    );
  }
   static TextStyle regularStyle({double fontSize= 14,Color? color=black}){
    return  TextStyle(
      fontFamily: FontFamilyManager.fontFamily,
      fontWeight: FontWeightManager.regular,
      fontSize: fontSize,
      color: color,

    );
  }
   static TextStyle mediumStyle({double fontSize= 14,Color? color=black,String fontFamily= FontFamilyManager.fontFamily}){
    return  TextStyle(
      fontFamily:fontFamily,
      fontWeight: FontWeightManager.medium,
      fontSize: fontSize,
      color: color,




    );
  }
   static TextStyle textColorStyle({double fontSize= 14,Color? color=black,backgroundColor=red}){
     return  TextStyle(
         fontFamily: FontFamilyManager.fontFamily,
         fontWeight: FontWeightManager.medium,
         color: color,
         backgroundColor: backgroundColor



     );
   }
   static TextStyle semiBoldStyle({double fontSize= 14,Color? color=black,String fontFamily= FontFamilyManager.fontFamily}){
    return  TextStyle(
      fontFamily: fontFamily,
      fontWeight: FontWeightManager.semiBold,
      fontSize: fontSize,
      color: color,

    );
  }
   static TextStyle boldStyle({double fontSize= 14,Color? color=black}){
    return  TextStyle(
      fontFamily: FontFamilyManager.fontFamily,
      fontWeight: FontWeightManager.bold,
      fontSize: fontSize,
      color: color,

    );
  }

}



