// Define the LoginBloc

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:task_11/constants/constants_resources.dart';

import '../../../presentation/router/routes.dart';
import '../../../repositories/data_manager.dart';
import '../../../sessionManager/auth_service.dart';
import 'login_event.dart';
import 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  DataManager dataManager;

  LoginBloc({required this.dataManager}) : super(InitialLoginState()) {
    on<LoginButtonPressed>((event, emit) async {
      Future<void> navigate() async {
        await Navigator.pushReplacementNamed(
            event.context, UNDER_DEVELOPMENT_SCREEN_ROUTE);
      }

      emit(LoadingLoginState());
      try {
        await Future.delayed(
            const Duration(seconds: ConstantsResources.LOADING_TIME));
        bool signInSuccess =
            await dataManager.signIn(event.emailAddress, event.password);
        if (signInSuccess) {
          AuthService().login(event.emailAddress, event.password);
          navigate();
        } else {
          emit(LoginFailureState());
        }

        emit(LoginSuccessState());
      } catch (e) {
        throw Exception(e);
      }
    });
  }
}
