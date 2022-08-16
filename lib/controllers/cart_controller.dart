// ignore_for_file: unused_import, prefer_final_fields

import 'package:get/get.dart';
import 'package:getx_cart/catalog.dart';
import 'package:getx_cart/model/product.dart';

class CartController extends GetxController{
 var _products = {}.obs;

 void addProduct(Product product){
   if(_products.containsKey(product)){
    _products[product] +=1;
   }
   else{
     _products[product] =1;
   }

   Get.snackbar("Product Added" ,  "You Have Added the ${product.name} to the cart",
   snackPosition: SnackPosition.BOTTOM,
   duration: Duration(seconds: 2),
   );
 }

 get products => _products;

}


