import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:flutter_redux_shopping_list/model/CartItem.dart';
import 'package:flutter_redux_shopping_list/shoping_cart_app.dart';
import 'package:flutter_redux_shopping_list/redux/reducers.dart';
import 'package:redux_dev_tools/redux_dev_tools.dart';



void main() {
  final store = new DevToolsStore<List<CartItem>>(cartItemsReducer,
      initialState: new List());
  
  runApp(new FlutterReduxApp(store));
}


class FlutterReduxApp extends StatelessWidget {
  final DevToolsStore<List<CartItem>> store;

  FlutterReduxApp(this.store);

  @override
  Widget build(BuildContext context) {
    return StoreProvider<List<CartItem>>(
      store: store,
      child: new ShoppingCartApp(store)
    );
  }
}
