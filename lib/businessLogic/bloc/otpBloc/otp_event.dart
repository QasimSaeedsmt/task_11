import 'package:flutter/material.dart';

abstract class OTPVerificationEvent {}

class OTPVerificationButtonPressed extends OTPVerificationEvent {
  final String otp;
  final BuildContext context;

  OTPVerificationButtonPressed({required this.context, required this.otp});
}
