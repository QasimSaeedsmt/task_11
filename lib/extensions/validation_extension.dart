extension EmailValidationExtension on String {
  bool get isValidEmail {
    final regExp = RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
    return regExp.hasMatch(this);
  }
}

extension PasswordValidator on String {
  bool isValidPassword() {
    final RegExp passwordRegex = RegExp(
        r'^(?=.*[A-Z])(?=.*[a-z])(?=.*[0-9])(?=.*[!@#\$%^&*(),.?":{}|<>])[A-Za-z\d!@#\$%^&*(),.?":{}|<>]{8,}$');
    return passwordRegex.hasMatch(this);
  }
}
