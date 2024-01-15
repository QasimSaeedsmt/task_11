abstract class NewPasswordState {}

class InitialNewPasswordState extends NewPasswordState {}

class LoadingNewPasswordState extends NewPasswordState {}

class NewPasswordSuccessState extends NewPasswordState {}

class NewPasswordFailureState extends NewPasswordState {
  final String error;

  NewPasswordFailureState({required this.error});
}
