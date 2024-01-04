import 'package:bloc/bloc.dart';

part 'text_field_event.dart';
part 'text_field_state.dart';

class TextFieldBloc extends Bloc<TextFieldEvent, TextFieldState> {
  TextFieldBloc() : super(TextFieldInitial()) {
    on<ShowPassEvent>((event, emit) => emit(PasswordShownState()));

    on<HidePassEvent>((event, emit) => emit(PasswordHiddenState()));

    on<EnterValueEvent>((event, emit) => emit(ValueEnteredState()));
    on<ShowConfirmPassEvent>((event, emit) {
      emit(ConfirmPassShownState());
    });
    on<HideConfirmPassEvent>((event, emit) {
      emit(ConfirmPassHiddenState());
    });
  }
}
