import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mj_task/constant/media_query_values.dart';
import 'package:mj_task/constant/text_styles_manager.dart';
import 'package:mj_task/presentation/screens/home/widget/offers_shape/offer_items_shape.dart';
import 'package:mj_task/presentation/screens/home/widget/points_shape/points_shape.dart';

import '../../../../constant/colors.dart';
class TabBarShape extends StatefulWidget {
   TabBarShape({Key? key}) : super(key: key);

  @override
  State<TabBarShape> createState() => _TabBarShapeState();
}

class _TabBarShapeState extends State<TabBarShape> with SingleTickerProviderStateMixin {


  late TabController _tabController;
  @override
  void initState() {
  _tabController = new TabController(length: 4, vsync: this);
  super.initState();
  }
  @override
  void dispose() {
  _tabController.dispose();
  super.dispose();
  }

  @override
  Widget build(BuildContext context) {
  return Column(
    children: [
      TabBar(
        unselectedLabelColor: black,
        labelColor: primaryColor,
        indicatorColor: primaryColor,
        tabs: [
          Tab(
            child: Text(
              "Points",
              style: TextStylesManager.semiBoldStyle(fontSize: 12.sp),
              overflow: TextOverflow.clip,
              maxLines: 1,
            ),

          ),
          Tab(

            child: FittedBox(
              fit: BoxFit.fitWidth,

              child: Text( 'Personal Offers',
    style: TextStylesManager.semiBoldStyle(fontSize: 12.sp),

    maxLines: 1,
                overflow: TextOverflow.visible,
              ),
            ),
          ),
          Tab(
            child: Text( 'Coupons',
              style: TextStylesManager.semiBoldStyle(fontSize: 12.sp),

              maxLines: 1,
              overflow: TextOverflow.visible,
            ),
          ),
          Tab(
            child: Text(
              "Reciepts",
              style: TextStylesManager.semiBoldStyle(fontSize: 12.sp),

              overflow: TextOverflow.clip,
              maxLines: 1,
            ),
          ),
        ],
        controller: _tabController,
        indicatorSize: TabBarIndicatorSize.label,
      ),
      Expanded(
        child: SingleChildScrollView(
          child: Padding(
            padding:  EdgeInsets.symmetric(horizontal: 16.w),
            child: SizedBox(
              height: context.height,
              child: TabBarView(
                children: [
                  PointsShape(),
                 OffersItemShape(),
                  Container(),
                  Container(),

                ],
                controller: _tabController,
              ),
            ),
          ),
        ),
      ),
    ],
  );
  }


}