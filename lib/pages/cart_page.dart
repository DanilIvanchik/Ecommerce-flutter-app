import 'package:ecommerce_flutter_app/components/cart_item.dart';
import 'package:ecommerce_flutter_app/models/cart.dart';
import 'package:ecommerce_flutter_app/models/shoe.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  void checkOur() {
    showDialog(
        context: context,
        builder: (context) => const AlertDialog(
              title: Text('Zzz...'),
              content: Text('Not implemented yet!'),
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
        builder: (context, value, child) => Padding(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "My Cart",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Expanded(
                      child: ListView.builder(
                          itemCount: value.getUserCart().length,
                          itemBuilder: (context, index) {
                            Shoe cartItems = value.getUserCart()[index];
                            return CartItem(shoe: cartItems);
                          })),
                  SizedBox(
                    height: 10,
                  ),
                  GestureDetector(
                    onTap: checkOur,
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.grey.shade900,
                          borderRadius: BorderRadius.circular(12)),
                      padding: EdgeInsets.all(25),
                      child: Center(
                        child: Text(
                          "CHECK OUT",
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ));
  }
}
