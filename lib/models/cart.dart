import 'package:flutter/foundation.dart';

import 'shoe.dart';

class Cart extends ChangeNotifier {
  List<Shoe> shoeShop= [
    Shoe(
        name: 'Zoom freak',
        description: 'The forward-thinking design of his latest signature shoe',
        price: '16000',
        image:'assets/images/zoomfreak.png'
    ),Shoe(
        name: 'Air jordan',
        description: 'you\'ve got the hope and the speed-laces up in the shoe that enhance what you bring to the cart',
        price: '12000',
        image:'assets/images/airjorden1.png'
    ),Shoe(
        name: 'KD Treys',
        description: 'Lightweight, durable, and designed for speed and agility on the court.',
        price: '19000',
        image:'assets/images/KD_Treys.png'
    ),Shoe(
        name: 'Air Force 1',
        description: 'TWhere style meets timeless innovation',
        price: '21000',
        image:'assets/images/airForce1.png'
    ),
  ];
  // add to cart
   List<Shoe> userCart = [];
   // get list for sale
  List<Shoe> getShoeList() {
    return shoeShop;
  }

  // get cart
  List<Shoe> getUserCart() {
    return userCart;
  }

  // add to cart
  void addToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }
  // remove from cart
  void removeFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }

}