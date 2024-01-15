import 'package:flutter/material.dart';
import 'package:task_11/presentation/router/routes.dart';

import '../../constants/string_resources.dart';
import '../screens/order_item_deletion_screen.dart';
import '../screens/route_customer_three_screen.dart';

class AppRouter {
  Route? generateRoute(RouteSettings routeSettings) {
    String route = routeSettings.name ?? StringResources.EMPTY_STRING;
    switch (route) {
      case ROUTE_CUSTOMER_THREE_SCREEN_ROUTE:
        {
          return MaterialPageRoute(
            builder: (context) => const RouteCustomerThreeScreen(),
          );
        }
      case ORDER_ITEM_DELETION_SCREEN_ROUTE:
        {
          return MaterialPageRoute(
            builder: (context) => const OrderItemDeletionScreen(),
          );
        }
    }
    return null;
  }
}
