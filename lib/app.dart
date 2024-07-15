import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'config/routes/app_routes.dart';
import 'config/themes/app_theme.dart';
import 'features/home/presentation/view/home_view.dart';
import 'injection_container.dart' as di;


class RouteApp extends StatelessWidget {
  // const PharmacyApp({super.key});
  RouteApp._internal();
  static final _instance=RouteApp._internal();
  factory RouteApp()=>_instance;
  // ThemeManager themeManager=ThemeManager(bool);
  // ThemeManager themeManager=


  @override
  Widget build(BuildContext context) {

    return MaterialApp(

        debugShowCheckedModeBanner: false,
        theme: themeLight,

        onGenerateRoute: AppRoutes.onGenerateRoute,
        home: ScreenUtilInit(
          designSize: const Size(360, 690),
          minTextAdapt: true,
          splitScreenMode: true,
          // Use builder only if you need to use library outside ScreenUtilInit context
          builder: (_, child) {
            return const HomeView();
          },
        ));
  }

}
