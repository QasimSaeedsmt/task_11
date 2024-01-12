import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:task_11/businessLogic/bloc/newPasswordBloc/new_password_state.dart';
import 'package:task_11/constants/common_keys.dart';
import 'package:task_11/constants/constants_resources.dart';
import 'package:task_11/presentation/router/routes.dart';

import '../../../repositories/data_manager.dart';
import 'new_password_event.dart';

class NewPasswordBloc extends Bloc<NewPasswordEvent, NewPasswordState> {
  DataManager dataManager;

  NewPasswordBloc({required this.dataManager})
      : super(InitialNewPasswordState()) {
    on<NewPasswordButtonPressed>((event, emit) async {
      emit(LoadingNewPasswordState());
      Future<void> navigate() async {
        Navigator.pushReplacementNamed(event.context, LOGIN_SCREEN_ROUTE);
      }

      try {
        await Future.delayed(
            const Duration(seconds: ConstantsResources.LOADING_TIME));
        SharedPreferences prefs = await SharedPreferences.getInstance();
        String? otp = prefs.getString(CommonKeys.OTP_KEY);
        String? email = prefs.getString(CommonKeys.EMAIL_KEY);

        await dataManager.verifyPassword(email, otp, event.newPassword);

        navigate();

        emit(NewPasswordSuccessState());
      } catch (e) {
        emit(NewPasswordFailureState(error: e.toString()));
      }
    });
  }
}
