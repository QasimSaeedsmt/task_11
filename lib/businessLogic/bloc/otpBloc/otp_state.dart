abstract class OTPVerificationState {}

class InitialOTPVerificationState extends OTPVerificationState {}

class LoadingOTPVerificationState extends OTPVerificationState {}

class OTPVerificationSuccessState extends OTPVerificationState {}

class OTPVerificationFailureState extends OTPVerificationState {
  final String error;

  OTPVerificationFailureState({required this.error});
}
