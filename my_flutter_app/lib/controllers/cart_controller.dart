import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:my_flutter_app/models/product.dart';


class CartContorller extends GetxController {
  var cartItems = List<Product>.empty(growable: true).obs;
  int get count => cartItems.length;
  double get totalPrice => cartItems.fold(0, (sum,item) => sum+item.price);


  addToCart(Product product) {
    cartItems.add(product);
  }

  //----------------------------------------------------------------------------//
  //Use case for GetBuilder
  var testAmount = 0.0;


  /*addToCart(Product product) {
    cartItems.add(product);
    testAmount = totalPrice;
    update();
  }*/

  //----------------------------------------------------------------------------//


}