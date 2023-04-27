import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mj_task/constant/assets_manager.dart';
import 'package:mj_task/constant/media_query_values.dart';
import 'package:mj_task/constant/text_styles_manager.dart';
import 'package:mj_task/presentation/widgets/discount_shape.dart';

import '../../../../../../constant/colors.dart';
import '../../../../../../data/model/product_model.dart';

class PersonalDetailsItem extends StatelessWidget {
  const PersonalDetailsItem({Key? key, required this.productModel,}) : super(key: key);
final ProductModel productModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: white,
        borderRadius: BorderRadius.circular(20.w)
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        Expanded(
          flex: 4,
            child:  ClipRRect(

              borderRadius: BorderRadius.only(topRight:Radius.circular(20.w),topLeft: Radius.circular(20.w)),
              child: Image.asset(productModel.imagePath,fit: BoxFit.fill,width: context.width,height: 173.h,))),
       Flexible(
         flex: 1,
         child: Padding(
           padding:  EdgeInsets.symmetric(horizontal: 12.w),
           child: Column(
             crossAxisAlignment: CrossAxisAlignment.start,
             children: [
               8.verticalSpace,
        Flexible(child: DiscountShape(discount: productModel.discount,)),
               Flexible(child: FittedBox(

                 fit: BoxFit.contain,
                   child: Text(productModel.title,style: TextStylesManager.regularStyle(fontSize: 16.sp),)))

             ],
           ),
         ),
       ),


      ],),
    );
  }
}
