import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_11/businessLogic/bloc/newPasswordBloc/new_password_bloc.dart';
import 'package:task_11/businessLogic/bloc/otpBloc/otp_bloc.dart';
import 'package:task_11/businessLogic/bloc/textFieldBloc/text_field_bloc.dart';
import 'package:task_11/constants/string_resources.dart';
import 'package:task_11/presentation/router/routes.dart';
import 'package:task_11/presentation/screens/forget_password_screen.dart';
import 'package:task_11/presentation/screens/new_pass_screen.dart';
import 'package:task_11/presentation/screens/under_development_screen.dart';
import 'package:task_11/presentation/screens/verification_screen.dart';

import '../../businessLogic/bloc/forgotPassBloc/forgot_pass_bloc.dart';
import '../../businessLogic/bloc/loginBloc/login_bloc.dart';
import '../../repositories/data_manager.dart';
import '../../repositories/mock_api_client.dart';
import '../screens/login_screen.dart';

class AppRouter {
  final dataManager = DataManager(
    mockApiClient: MockApiClient(),
  );

  Route? generateRoutes(RouteSettings routeSettings) {
    String route = routeSettings.name ?? StringResources.EMPTY_STRING;

    switch (route) {
      case LOGIN_SCREEN_ROUTE:
        {
          return MaterialPageRoute(
            builder: (context) => MultiBlocProvider(
              providers: [
                BlocProvider(create: (context) => TextFieldBloc()),
                BlocProvider(
                    create: (context) => LoginBloc(dataManager: dataManager)),
              ],
              child: const LoginScreen(),
            ),
          );
        }
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
      case NEW_PASS_SCREEN_ROUTE:
        {
          return MaterialPageRoute(
              builder: (context) => MultiBlocProvider(
                    providers: [
                      BlocProvider(
                        create: (context) =>
                            NewPasswordBloc(dataManager: dataManager),
                      ),
                      BlocProvider(
                        create: (context) => TextFieldBloc(),
                      ),
                    ],
                    child: const NewPasswordScreen(),
                  ));
        }
      case FORGET_PASS_SCREEN_ROUTE:
        {
          return MaterialPageRoute(
            builder: (context) => BlocProvider(
              create: (context) => ForgotPasswordBloc(dataManager: dataManager),
              child: const ForgetPasswordScreen(),
            ),
          );
        }
      case UNDER_DEVELOPMENT_SCREEN_ROUTE:
        {
          return MaterialPageRoute(
            builder: (context) => const UnderDevelopmentScreen(),
          );
        }
      case VERIFICATION_SCREEN_ROUTE:
        {
          return MaterialPageRoute(
              builder: (context) => MultiBlocProvider(
                    providers: [
                      BlocProvider(
                        create: (context) => TextFieldBloc(),
                      ),
                      BlocProvider(
                        create: (context) =>
                            OTPVerificationBloc(dataManager: dataManager),
                      )
                    ],
                    child: const VerificationScreen(),
                  ));
        }
    }
    return null;
  }

  void dispose() {}
}
