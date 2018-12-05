import 'package:flutter_redux_shopping_list/model/CartItem.dart';

class AddItemAction {
  final CartItem item;

  AddItemAction(this.item);
}


class ToggleItemStateAction {
  final CartItem item;

  ToggleItemStateAction(this.item);
}