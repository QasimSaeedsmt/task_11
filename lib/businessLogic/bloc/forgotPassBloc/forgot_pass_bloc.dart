import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:task_11/constants/common_keys.dart';
import 'package:task_11/constants/constants_resources.dart';
import 'package:task_11/presentation/router/routes.dart';

import '../../../repositories/data_manager.dart';
import 'forgot_pass_event.dart';
import 'forgot_pass_state.dart';

class ForgotPasswordBloc
    extends Bloc<ForgotPasswordEvent, ForgotPasswordState> {
  DataManager dataManager;

  ForgotPasswordBloc({required this.dataManager})
      : super(InitialForgotPasswordState()) {
    on<ForgotPasswordButtonPressed>((event, emit) async {
      Future<void> navigate() async {
        Navigator.pushNamed(event.context, VERIFICATION_SCREEN_ROUTE);
      }

      emit(LoadingForgotPasswordState());
      try {
        await Future.delayed(
            const Duration(seconds: ConstantsResources.LOADING_TIME));
        await dataManager.sendOTP(event.emailAddress);
        SharedPreferences sp = await SharedPreferences.getInstance();
        sp.setString(CommonKeys.EMAIL_KEY, event.emailAddress);
        navigate();
        emit(ForgotPasswordSuccessState());
      } catch (e) {
        emit(ForgotPasswordFailureState(error: e.toString()));
      }
    });
  }
}
