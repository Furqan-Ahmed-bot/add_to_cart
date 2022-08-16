// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_cart/controllers/cart_controller.dart';
import 'package:getx_cart/model/product.dart';



class CartProducts extends StatefulWidget {

  CartProducts({ Key? key }) : super(key: key);

  @override
  State<CartProducts> createState() => _CartProductsState();
}

class _CartProductsState extends State<CartProducts> {
  final CartController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 600,
      child: ListView.builder(
        
        itemCount: controller.products.length,
        itemBuilder: (context , index) =>
        CartProductCard(
          controller: controller,
          product: controller.products.keys.toList()[index],
          quantity: controller.products.values.toList()[index],
          index: index,
        ),
        ),
    );
  }
}


class CartProductCard extends StatelessWidget {

  final CartController controller;
  final Product product;
  final int quantity;
  final int index;
  const CartProductCard({ Key? key, required this.controller, required this.product, required this.quantity, required this.index,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // CircleAvatar(
        //   radius: 40,
        //   backgroundImage: NetworkImage(
        //     product.imageUrl
        //   ),
        // ),

        SizedBox(width: 20,),

        Expanded(child: Text(product.name)),
        IconButton(onPressed: (){},
        icon: Icon(Icons.remove_circle_outline)),
        Expanded(child: Text('${quantity}'),),
        IconButton(onPressed: (){},
        icon: Icon(Icons.add_circle_outline_sharp)),
      ]);
    
  }
}
 