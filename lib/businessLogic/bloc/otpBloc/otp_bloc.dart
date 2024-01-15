import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:task_11/constants/common_keys.dart';
import 'package:task_11/constants/constants_resources.dart';

import '../../../presentation/router/routes.dart';
import '../../../repositories/data_manager.dart';
import 'otp_event.dart';
import 'otp_state.dart';

class OTPVerificationBloc
    extends Bloc<OTPVerificationEvent, OTPVerificationState> {
  DataManager dataManager;

  OTPVerificationBloc({required this.dataManager})
      : super(InitialOTPVerificationState()) {
    on<OTPVerificationButtonPressed>((event, emit) async {
      emit(LoadingOTPVerificationState());

      Future<void> navigate() async {
        Navigator.pushReplacementNamed(event.context, NEW_PASS_SCREEN_ROUTE);
      }

      try {
        await Future.delayed(
            const Duration(seconds: ConstantsResources.LOADING_TIME));
        SharedPreferences prefs = await SharedPreferences.getInstance();
        await prefs.setString(CommonKeys.OTP_KEY, event.otp);

        navigate();
        await dataManager.sendOTP(event.otp);
        emit(OTPVerificationSuccessState());
      } catch (e) {
        emit(OTPVerificationFailureState(error: e.toString()));
      }
    });
  }
}
