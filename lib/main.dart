import 'package:flutter/material.dart';
import 'package:task_11/presentation/router/routes.dart';
import 'package:task_11/presentation/screens/drive_tour_screen.dart';

import 'constants/color_resources.dart';
import 'constants/constants_resources.dart';
import 'constants/dimension_resources.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: DRIVE_TOUR_SCREEN_ROUTE,
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
      home: const DriveTourScreen(),
    );
  }
}
