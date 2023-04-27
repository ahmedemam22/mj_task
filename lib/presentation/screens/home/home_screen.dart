import 'package:flutter/material.dart';

import 'package:mj_task/presentation/screens/home/widget/home_header_shape.dart';


import 'package:mj_task/presentation/screens/home/widget/tabbar_shape.dart';

import '../../../utils/bottom_bar.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        return Future.value(false) ;},
      child: Scaffold(
        bottomNavigationBar:       BottomBar().bottomNavBarShape(),

        body: Column(
          children: [
            HomeHeaderShape(),
          Expanded(child: TabBarShape()),
          ],
        ),

      ),
    );
  }
}
