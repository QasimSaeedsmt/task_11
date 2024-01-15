abstract class ForgotPasswordState {}

class InitialForgotPasswordState extends ForgotPasswordState {}

class LoadingForgotPasswordState extends ForgotPasswordState {}

class ForgotPasswordSuccessState extends ForgotPasswordState {}

class ForgotPasswordFailureState extends ForgotPasswordState {
  final String error;

  ForgotPasswordFailureState({required this.error});
}
