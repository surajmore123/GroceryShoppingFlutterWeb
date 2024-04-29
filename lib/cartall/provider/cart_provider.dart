
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ls/cartall/model/cart_items.dart';
import 'package:flutter_ls/modelfile/productmodel.dart';




class CartProvider extends ChangeNotifier {
  final List<CartItem> _cartItems = [];

  List<CartItem> get cartItems => _cartItems;

  void addToCart(Produ pro, int quantity, String selectedVariant) {
    var existingCartItem = _cartItems.firstWhereOrNull(
      (item) => item.pduct.id == pro.id,
    );

    if (existingCartItem != null) {
      existingCartItem.quantity += quantity;
    } else {
      _cartItems.add(CartItem(pduct: pro, quantity: quantity));
    }

    notifyListeners();
  }

  int getProductQuantity(int productId) {
    int quantity = 0;
    for (CartItem item in _cartItems) {
      if (item.pduct.id == productId) {
        quantity += item.quantity;
      }
    }
    return quantity;
  }

  int get cartCount {
    return _cartItems.fold(0, (sum, item) => sum + item.quantity);
  }

  // double get totalPrice {
  //   return _cartItems.fold(
  //       0.0, (sum, item) => sum + (item.pduct.price! * item.quantity));
  // }

  void updateCartItemQuantity(int index, int newQuantity) {
    if (index >= 0 && index < _cartItems.length) {
      _cartItems[index].quantity = newQuantity;
      notifyListeners();
    }
  }

  void increaseCartItemQuantity(int index) {
    if (index >= 0 && index < _cartItems.length) {
      _cartItems[index].quantity++;
      notifyListeners();
    }
  }

  void decreaseCartItemQuantity(int index) {
    if (index >= 0 && index < _cartItems.length) {
      if (_cartItems[index].quantity > 1) {
        _cartItems[index].quantity--;
        notifyListeners();
      } else {
        // If the quantity is 1, remove the item from the cart
        _cartItems.removeAt(index);
        notifyListeners();
      }
    }
  }

  void removeCartItem(int index) {
    if (index >= 0 && index < _cartItems.length) {
      _cartItems.removeAt(index);
      notifyListeners();
    }
  }

  void clearCart() {
    _cartItems.clear();
    notifyListeners();
  }

  List<CartItem> getCartItemsList() {
    return List<CartItem>.from(_cartItems);
  }
}
