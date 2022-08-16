import 'package:flutter/material.dart';
import 'package:getx_cart/widgets/catalog_products.dart';

import 'cart_product.dart';


class Cart extends StatefulWidget {
  const Cart({ Key? key }) : super(key: key);

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),

      body: CartProducts(),
    );
  }
}