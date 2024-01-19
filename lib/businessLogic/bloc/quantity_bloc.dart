import 'package:bloc/bloc.dart';
import 'package:task_11/businessLogic/bloc/quantity_event.dart';
import 'package:task_11/businessLogic/bloc/quantity_state.dart';
import 'package:task_11/constants/constants_resources.dart';

class QuantityBloc extends Bloc<QuantityEvent, QuantityState> {
  QuantityBloc() : super(QuantityInitial()) {
    on<AddIteToListEvent>((event, emit) {
      emit(ItemAddedState(quantity: ++event.quantity));
    });

    on<RemoveItemFromListEvent>((event, emit) {
      if (event.quantity > ConstantsResources.INITIAL_QUANTITY) {
        emit(ItemRemovedState(quantity: --event.quantity));
      }
    });
  }
}
