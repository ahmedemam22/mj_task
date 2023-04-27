
import 'package:flutter/material.dart';

import 'package:mj_task/presentation/screens/home/home_screen.dart';
import 'package:mj_task/presentation/screens/rewards/rewards_screen.dart';

import 'app_routes.dart';
class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings settings) {
    switch (settings.name) {
      ////splash
      case Routes.homeRoute:
        return MaterialPageRoute(builder: (_) =>     const HomeScreen());

      case Routes.rewardsRoute:
        return MaterialPageRoute(builder: (_) =>     const RewardsScreen());


      default:
        return MaterialPageRoute(builder: (_) =>     const HomeScreen());
    }
  }

  static Route<dynamic> unDefinedRoute() {
    return MaterialPageRoute(
        builder: (_) => Scaffold(
          appBar: AppBar(
            title: const Text('no found'),
          ),
          body: const Center(child: Text('no found')),
        ));
  }}