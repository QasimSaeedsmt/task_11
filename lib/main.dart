import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_11/businessLogic/bloc/textFieldBloc/text_field_bloc.dart';
import 'package:task_11/constants/color_resources.dart';
import 'package:task_11/constants/constants_resources.dart';
import 'package:task_11/constants/dimension_resources.dart';
import 'package:task_11/presentation/router/app_router.dart';
import 'package:task_11/presentation/router/routes.dart';
import 'package:task_11/sessionManager/session_manager.dart';

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
    return MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => TextFieldBloc(),
          ),
        ],
        child: MaterialApp(
          onGenerateRoute: AppRouter().generateRoutes,
          initialRoute:
          isLoggedIn ? UNDER_DEVELOPMENT_SCREEN_ROUTE : LOGIN_SCREEN_ROUTE,
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            appBarTheme: const AppBarTheme(
                iconTheme: IconThemeData(color: Colors.white),
                titleTextStyle: TextStyle(
                    color: Colors.white,
                    fontSize: DimensionResources.D_18,
                    fontFamily: ConstantsResources.REGULAR_FAMILY),
                backgroundColor: ColorResources.PRIMARY_COLOR),
          ),
        ));
  }
}
