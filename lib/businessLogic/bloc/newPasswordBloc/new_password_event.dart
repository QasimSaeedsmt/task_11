import 'package:flutter/material.dart';

abstract class NewPasswordEvent {}

class NewPasswordButtonPressed extends NewPasswordEvent {
  final String newPassword;
  final BuildContext context;

  NewPasswordButtonPressed({required this.context, required this.newPassword});
}
