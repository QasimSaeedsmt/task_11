import 'package:flutter/material.dart';

abstract class ForgotPasswordEvent {}

class ForgotPasswordButtonPressed extends ForgotPasswordEvent {
  final String emailAddress;
  final BuildContext context;

  ForgotPasswordButtonPressed(
      {required this.context, required this.emailAddress});
}
