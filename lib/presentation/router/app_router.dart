import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_11/presentation/router/routes.dart';
import 'package:task_11/presentation/screens/drive_tour_screen.dart';
import 'package:task_11/presentation/screens/without_pop_tour_order_screen.dart';

import '../../businessLogic/bloc/bottomSheetBloc/bottom_sheet_bloc.dart';

class AppRouter {
  Route? generateRoute(RouteSettings routeSettings) {
    String route = const RouteSettings().name ?? "";
    switch (route) {
      case DRIVE_TOUR_SCREEN_ROUTE:
        {
          return MaterialPageRoute(
            builder: (context) => MultiBlocProvider(
                providers: [], child: const DriveTourScreen()),
          );
        }
      case WITHOUT_POP_TOUR_ORDER_SCREEN_ROUTE:
        {
          return MaterialPageRoute(
            builder: (context) => MultiBlocProvider(providers: [
              BlocProvider(create: (context) => BottomSheetBloc()),
            ], child: const WithOutPopupTourOrderScreen()),
          );
        }
    }
    return null;
  }
}
