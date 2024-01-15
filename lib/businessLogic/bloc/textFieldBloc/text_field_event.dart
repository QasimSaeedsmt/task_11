part of 'text_field_bloc.dart';

abstract class TextFieldEvent {}

class ShowPassEvent extends TextFieldEvent {}

class HidePassEvent extends TextFieldEvent {}

class EnterValueEvent extends TextFieldEvent {}

class ShowConfirmPassEvent extends TextFieldEvent {}

class HideConfirmPassEvent extends TextFieldEvent {}
