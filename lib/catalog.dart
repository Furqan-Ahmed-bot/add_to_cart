// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_cart/cart_screen.dart';

import 'cart_product.dart';
import 'widgets/catalog_products.dart';
class CatalogScreen extends StatefulWidget {
  const CatalogScreen({ Key? key }) : super(key: key);

  @override
  State<CatalogScreen> createState() => _CatalogScreenState();
}

class _CatalogScreenState extends State<CatalogScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        
      ),
       body: Column(children: [
        CatalogProductCart(),

        ElevatedButton(onPressed: (){ Get.to(Cart()); }, 
        child: Text('GoTo Cart'))
       ],)

    );
  }
}