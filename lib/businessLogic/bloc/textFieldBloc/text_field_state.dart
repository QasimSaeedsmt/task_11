part of 'text_field_bloc.dart';

abstract class TextFieldState {}

class TextFieldInitial extends TextFieldState {}

class PasswordShownState extends TextFieldState {}

class PasswordHiddenState extends TextFieldState {}

class ValueEnteredState extends PasswordShownState {}

class ConfirmPassShownState extends TextFieldState {}

class ConfirmPassHiddenState extends TextFieldState {}
