import 'package:flutter/material.dart';

abstract class LoginEvent {}

class LoginButtonPressed extends LoginEvent {
  final String emailAddress;
  final String password;
  final BuildContext context;

  LoginButtonPressed(
      {required this.emailAddress,
      required this.context,
      required this.password});
}
