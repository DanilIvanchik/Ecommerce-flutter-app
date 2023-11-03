import 'package:flutter/material.dart';

import 'shoe.dart';

class Cart extends ChangeNotifier {
  List<Shoe> shoeShop = [
    Shoe(
        name: 'Nike Air Force',
        price: '85',
        imagePath: 'lib/images/nike-air-force-1-07-triple-white-1000x1000.jpg',
        discription:
            'Introducing the iconic Nike Air Force sneakers, a timeless classic in the world of footwear.'),
    Shoe(
        name: 'Nike Air Zoom',
        price: '240',
        imagePath:
            'lib/images/nike-air-zoom-vomero-5-light-iron-ore-1000x1000.jpg',
        discription:
            'Elevate your running experience with Nike Air Zoom Vomero, the pinnacle of comfort and performance.'),
    Shoe(
        name: 'Nike Dunk',
        price: '300',
        imagePath: 'lib/images/nike-dunk-low-pro-sb-bart-simpson-1000x1000.jpg',
        discription:
            'Discover the timeless style and versatility of Nike Dunk sneakers. With their iconic design and premium craftsmanship, Nike Dunks are a must-have addition to your sneaker collection. '),
  ];

  List<Shoe> userCart = [];

  List<Shoe> getShoeList() {
    return shoeShop;
  }

  List<Shoe> getUserCart() {
    return userCart;
  }

  void addShoeToTheCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  void removeShoeFromTheCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}
