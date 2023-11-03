import 'package:ecommerce_flutter_app/models/shoe.dart';
import 'package:flutter/material.dart';

class ShoeTile extends StatelessWidget {
  Shoe shoe;
  ShoeTile({super.key, required this.shoe});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 25),
      width: 280,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(12)),
      child:
          Column(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Image.asset(
            shoe.imagePath,
          ),
        ),
        Text(
          shoe.discription,
          style: TextStyle(color: Colors.grey.shade600),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 25),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    shoe.name,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text('\$' + shoe.price, style: TextStyle(color: Colors.grey))
                ],
              ),
              Container(
                  padding: EdgeInsets.all(25),
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(12),
                          topLeft: Radius.circular(12))),
                  child: Icon(
                    Icons.add,
                    color: Colors.white,
                  ))
            ],
          ),
        )
      ]),
    );
  }
}
