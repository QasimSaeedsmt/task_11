abstract class QuantityState {}

class QuantityInitial extends QuantityState {}

class ItemRemovedState extends QuantityState {
  int quantity;

  ItemRemovedState({required this.quantity});
}

class ItemAddedState extends QuantityState {
  int quantity;

  ItemAddedState({required this.quantity});
}
