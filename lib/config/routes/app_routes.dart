import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:page_transition/page_transition.dart';
import 'package:route/injection_container.dart' as di;

import '../../core/utils/app_strings.dart';
import '../../features/home/presentation/view/home_view.dart';

class Routes {
  static const String initialRoute = '/';
  static const String layoutRoute = '/layout';
  static const String homeRoute = '/home';
  static const String addPhotoRoute = '/home/addPhoto';
  static const String accessoriesRoute = '/home/accessories';
  static const String drugsRoute = '/home/drugs';
  static const String detailsRoute = '/home/details';
  static const String favouriteRoute = '/favourite';
  static const String cartRoute = '/cart';
  static const String logInRoute = '/login';
  static const String registerRoute = '/register';
}


class AppRoutes {
  static Route? onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case Routes.initialRoute:
        return PageTransition(child:const HomeView(),type: PageTransitionType.rightToLeft);

      default:
        return undefinedRoute();
    }
  }

  static Route<dynamic> undefinedRoute() {
    return MaterialPageRoute(
        builder: ((context) =>
        const Scaffold(
          body: Center(
            child: Text(AppStrings.noRouteFound),
          ),
        )));
  }
}
