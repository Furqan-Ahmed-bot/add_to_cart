// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_cart/controllers/cart_controller.dart';
import 'package:getx_cart/model/product.dart';


class CatalogProductCart extends StatefulWidget {
  const CatalogProductCart({ Key? key }) : super(key: key);

  @override
  State<CatalogProductCart> createState() => _CatalogProductCartState();
}

class _CatalogProductCartState extends State<CatalogProductCart> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: Product.products.length,
      itemBuilder: (context , index) => 
      CatalogProduct(index: index,));
  }
}


class CatalogProduct extends StatelessWidget {
  final cartController = Get.put(CartController());
  final int index;
  CatalogProduct({ Key? key, required this.index }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.symmetric(
      horizontal: 20,
      vertical: 10,
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CircleAvatar(
          radius: 40,
          backgroundImage: NetworkImage(Product.products[index].imageUrl),
        ),
        SizedBox(width: 20,),
        Expanded(child: Text(Product.products[index].name)),
        Expanded(child: Text('${Product.products[index].price}')),
        IconButton(onPressed: (){
          cartController.addProduct(Product.products[index]);
        },
        icon: Icon(Icons.add_circle)),

      ],
    ),);
  }
}