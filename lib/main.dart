import 'package:flutter/material.dart';
import 'package:task_11/presentation/router/app_router.dart';
import 'package:task_11/presentation/router/routes.dart';

import 'constants/color_resources.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: ROUTE_CUSTOMER_THREE_SCREEN_ROUTE,
      onGenerateRoute: AppRouter().generateRoute,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          appBarTheme:
              const AppBarTheme(backgroundColor: ColorResources.PRIMARY_COLOR)),
    );
  }
}
