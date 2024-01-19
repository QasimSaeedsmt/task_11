abstract class QuantityEvent {}

class AddIteToListEvent extends QuantityEvent {
  int quantity;

  AddIteToListEvent({required this.quantity});
}

class RemoveItemFromListEvent extends QuantityEvent {
  int quantity;

  RemoveItemFromListEvent({required this.quantity});
}
