// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:package_info_plus/package_info_plus.dart';
//
// class AppRouter {
//   AppRouter() {
//     // dataManager = DataManager(
//     //     mockApiClient: MockApiClient(),
//     //     networkApiClient: NetworkApiClient(Dio(
//     //       (BaseOptions(
//     //           contentType: ConstantsResource.CONTENT_TYPE,
//     //           headers: {
//     //             "Accept": ConstantsResource.CONTENT_TYPE,
//     //             "api-key": FlavorConfig.instance?.values.apiKey,
//     //           },
//     //           baseUrl: FlavorConfig.instance?.values.apiBaseUrl ?? "")),
//     //     )));
//   }
//
//   // late DataManager dataManager;
//
//   Route? generateRoute(RouteSettings routeSettings) {
//     String route = routeSettings.name ?? "";
//     switch (route) {
//       case ON_BOARDING_SCREEN_ROUTE:
//         {
//           return MaterialPageRoute(
//               builder: (_) => BlocProvider(
//                 create: (context) =>
//                     OnBoardingBloc(dataManager: dataManager),
//                 child: const OnBoardingScreen(),
//               ));
//         }
//       case AGREEMENT_SCREEN_ROUTE:
//         final argmnts = routeSettings.arguments as AgreementScreenArgument;
//         return MaterialPageRoute(
//             builder: (_) => BlocProvider(
//               create: (context) => AgreementBloc(),
//               child: AgreementScreen(
//                 agreementScreenArgument: argmnts,
//               ),
//             ));
//
//       case TERMS_CONDITION_SCREEN_ROUTE:
//         return MaterialPageRoute(
//             builder: (_) => const TermsAndConditionScreen());
//
//       case ADD_PHONE_NUMBER_SCREEN_ROUTE:
//         final argmnts = routeSettings.arguments as AgreementScreenArgument;
//         {
//           return MaterialPageRoute(
//               builder: (_) => BlocProvider(
//                 create: (context) => SignUpPhoneNumberBloc(dataManager),
//                 child: AddPhoneScreen(
//                   arguments: argmnts,
//                 ),
//               ));
//         }
//       case VERIFY_CODE_SCREEN_ROUTE:
//         final argmnts = routeSettings.arguments as VerificationData;
//         {
//           return MaterialPageRoute(
//               builder: (_) => BlocProvider(
//                 create: (context) => VerifyOtpBloc(dataManager),
//                 child: VerifyCodeScreen(
//                   verificationData: argmnts,
//                 ),
//               ));
//         }
//
//       case EMAIL_SCREEN_ROUTE:
//         final argmnts = routeSettings.arguments as SignUpBodyModel;
//         {
//           return MaterialPageRoute(
//               builder: (_) => BlocProvider(
//                 create: (context) => SignUpEmailBloc(dataManager),
//                 child: EmailScreen(
//                   argmnts: argmnts,
//                 ),
//               ));
//         }
//       case ASK_LOCATION_SCREEN_ROUTE:
//         final argmnts = routeSettings.arguments as SocialSiteDataModel;
//         {
//           return MaterialPageRoute(
//               builder: (_) => BlocProvider(
//                 create: (context) => LocationScreenBloc(),
//                 child: AskLocationScreen(
//                   arguments: argmnts,
//                 ),
//               ));
//         }
//
//
//       case SIGNUP_PROFILE_SCREEN_ROUTE:
//         final argmnts = routeSettings.arguments as SignUpBodyModel;
//         {
//           return MaterialPageRoute(
//               builder: (_) => MultiBlocProvider(
//                 providers: [
//                   BlocProvider(
//                     create: (context) => SignUpProfileBloc(),
//                   ),
//                   BlocProvider(
//                     create: (context) => AddNameBloc(),
//                   ),
//                   BlocProvider(
//                     create: (context) => AddBirthdayBloc(),
//                   ),
//                   BlocProvider(
//                     create: (context) => GenderBloc(),
//                   ),
//                   BlocProvider(
//                     create: (context) => OrientationBloc(),
//                   ),
//                   BlocProvider(
//                     create: (context) => EthnicityBloc(),
//                   ),
//                   BlocProvider(
//                     create: (context) => InterestBloc(),
//                   ),
//                   BlocProvider(
//                     create: (context) => BioScreenBloc(),
//                   ),
//                   BlocProvider(
//                     create: (context) => AddPicturesScreenBloc(),
//                   ),
//                 ],
//                 child: SignUpProfileHome(
//                   signUpBodyModel: argmnts,
//                 ),
//               ));
//         }
//       case HOME_SCREEN_ROUTE:
//         {
//           return MaterialPageRoute(
//               builder: (_) => MultiBlocProvider(
//                 providers: [
//                   BlocProvider(
//                     create: (context) => NavigationBarCubit(),
//                   ),
//                   BlocProvider(
//                     create: (context) => CounterCubit(),
//                   ),
//                   BlocProvider(
//                     create: (context) => FindMatchBloc(dataManager),
//                   ),
//                   BlocProvider(
//                     create: (context) => SwoopMatchesBloc(dataManager),
//                   ),
//                   BlocProvider(
//                     create: (context) => LogoutBloc(dataManager),
//                   ),
//                   BlocProvider(
//                     create: (context) => MessagesBloc(dataManager),
//                   ),
//                 ],
//                 child: const MyHomePage(),
//               ));
//         }
//       case UNDERDEVELOPMENT_SCREEN_ROUTE:
//         return MaterialPageRoute(builder: (_) => UnderdevelopmentScreen());
//       case SERVER_SETTINGS:
//         return MaterialPageRoute(builder: (_) => PageTwo());
//       case SELECT_MATCH:
//         return MaterialPageRoute(
//             builder: (_) => BlocProvider(
//               create: (context) => SearchMatchesBloc(dataManager),
//               child: const SelectMatch(),
//             ));
//       case CHAT_SCREEN:
//         {
//           ChatArgs chatArgs = routeSettings.arguments as ChatArgs;
//           return MaterialPageRoute(
//               builder: (_) => BlocProvider(
//                 create: (context) => ChatBloc(dataManager),
//                 child: ChatScreen(
//                   chatArgs: chatArgs,
//                 ),
//               ));
//         }
//       case SIGN_IN_SCREEN:
//         {
//           return MaterialPageRoute(
//               builder: (_) => BlocProvider(
//                 create: (context) => SignInBloc(dataManager),
//                 child: UnderdevelopmentScreen(),
//               ));
//         }
//       default:
//         return null;
//     }
//   }
//
//   void dispose() {}
// }
