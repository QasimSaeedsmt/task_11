import 'package:bloc/bloc.dart';

import 'bottom_sheet_event.dart';
import 'bottom_sheet_state.dart';

class BottomSheetBloc extends Bloc<BottomSheetEvent, BottomSheetState> {
  BottomSheetBloc() : super(BottomSheetInitial()) {
    on<YesConsentEvent>((event, emit) => emit(YesConsentState()));

    on<NoConsentEvent>((event, emit) => emit(NoConsentState()));
  }
}
