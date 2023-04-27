import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mj_task/bloc/cubit/reward/reward_cubit.dart';
import 'bloc/observer/app_bloc_observer.dart';
import 'config/routes/app_generator.dart';
import 'config/routes/app_routes.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'config/theme/app_theme.dart';

void main() {
  Bloc.observer = MyBlocObserver();
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MJTask());
}

class MJTask extends StatelessWidget {
  const MJTask({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return    ScreenUtilInit(
        useInheritedMediaQuery: true,
        builder: (_, child) {
          return  MultiBlocProvider(
              providers: [

          BlocProvider<RewardCubit>(
          create: (BuildContext context) => RewardCubit (),
          )],
            child: MaterialApp(

                debugShowCheckedModeBanner: false,
                useInheritedMediaQuery: true,
                theme: appTheme(),
                initialRoute: Routes.homeRoute,
                onGenerateRoute: RouteGenerator.getRoute,


            ),
          );
        });
  }
}


