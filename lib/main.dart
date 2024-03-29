import 'dart:io';

import 'package:flutter/material.dart';
import 'package:task_11/presentation/router/app_router.dart';
import 'package:task_11/presentation/router/routes.dart';
import 'package:task_11/sessionManager/session_manager.dart';

import 'constants/color_resources.dart';
import 'constants/constants_resources.dart';
import 'constants/dimension_resources.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  bool isLoggedIn = await SessionManager.isLoggedIn();
  HttpOverrides.global = MyHttpOverrides();

  runApp(MyApp(isLoggedIn: isLoggedIn));
}

class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
  }
}

class MyApp extends StatelessWidget {
  final bool isLoggedIn;

  const MyApp({super.key, required this.isLoggedIn});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: AppRouter().generateRoutes,
      initialRoute: isLoggedIn ? DRIVE_TOUR_SCREEN_ROUTE : LOGIN_SCREEN_ROUTE,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
            iconTheme: IconThemeData(color: ColorResources.WHITE_COLOR),
            titleTextStyle: TextStyle(
                color: ColorResources.WHITE_COLOR,
                fontSize: DimensionResources.D_18,
                fontFamily: ConstantsResources.REGULAR_FAMILY),
            backgroundColor: ColorResources.PRIMARY_COLOR),
      ),
    );
  }
}
