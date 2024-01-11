// Define the LoginBloc

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:task_11/constants/constants_resources.dart';

import '../../../presentation/router/routes.dart';
import '../../../reposatories/data_manager.dart';
import 'login_event.dart';
import 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  DataManager dataManager;

  LoginBloc({required this.dataManager}) : super(InitialLoginState()) {
    on<LoginButtonPressed>((event, emit) async {
      Future<void> navigate() async {
        Navigator.pushReplacementNamed(
            event.context, UNDER_DEVELOPMENT_SCREEN_ROUTE);
      }

      emit(LoadingLoginState());
      try {
        await Future.delayed(
            const Duration(seconds: ConstantsResources.LOADING_TIME));
        dataManager.signIn(event.emailAddress, event.password);
        navigate();

        emit(LoginSuccessState());
      } catch (e) {
        throw Exception(e);
      }
    });
  }
}
