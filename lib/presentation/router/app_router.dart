import 'package:flutter/material.dart';
import 'package:task_11/constants/string_resources.dart';
import 'package:task_11/presentation/router/routes.dart';
import 'package:task_11/presentation/screens/drive_tour_screen.dart';
import 'package:task_11/presentation/screens/without_pop_tour_order_screen.dart';


class AppRouter {
  Route? generateRoute(RouteSettings routeSettings) {
    String route = routeSettings.name ?? StringResources.EMPTY_STRING;
    switch (route) {
      case DRIVE_TOUR_SCREEN_ROUTE:
        {
          return MaterialPageRoute(
            builder: (context) => const DriveTourScreen(),
          );
        }
      case WITHOUT_POP_TOUR_ORDER_SCREEN_ROUTE:
        {
          return MaterialPageRoute(
            builder: (context) => const WithOutPopupTourOrderScreen(),
          );
        }
    }
    return null;
  }
}
