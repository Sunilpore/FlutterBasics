import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_flutter_app/controllers/cart_controller.dart';
import 'package:my_flutter_app/controllers/shopping_controller.dart';


class ShoopingPage extends StatelessWidget {
  final shoppingController = Get.put(ShoppingController());
  final cartController = Get.put(CartContorller());


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
                child: GetX<ShoppingController>(
                  builder: (controller) {
                    return ListView.builder(
                        itemCount: controller.products.length,
                        itemBuilder: (context,index) {
                          return Card(
                            margin: const EdgeInsets.all(12),
                            child: Padding(
                              padding:  EdgeInsets.all(16.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text('${controller.products[index].productName}',
                                          style: TextStyle(fontSize: 24)),
                                          Text('${controller.products[index].productDescription}')
                                        ],
                                      ),
                                      Text('\$${controller.products[index].price}',
                                      style: TextStyle(fontSize: 24)),
                                    ],
                                  ),
                                  ElevatedButton(
                                      onPressed: () {
                                        cartController.addToCart(controller.products[index]);
                                      },
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.blue,
                                        textStyle: TextStyle(color: Colors.white,)
                                      ),
                                      child: Text('Add to Cart')),
                                ],
                              ),
                            ),
                          );
                        });
                  }
                )),
            //Update "Total Amount" Using GetBuilder method
            GetBuilder<CartContorller>(
              builder: (controller) {
                return Text('Total amount: \$ ${controller.testAmount}',
                    style: TextStyle(fontSize: 32, color: Colors.white));
              },
            ),
            /*GetX<CartContorller>(builder: (controller) {
              return Text('Total amount: \$ ${controller.totalPrice}',
                  style: TextStyle(fontSize: 32, color: Colors.white));
            }),*/
            SizedBox(height: 100)
          ],
        ),
      ),
      floatingActionButton:  FloatingActionButton.extended(
          onPressed: () {},
          backgroundColor: Colors.amber,
          icon: Icon(
              Icons.shopping_cart,
              color: Colors.black,),
          label: GetX<CartContorller>(
            builder: (controller) {
              return Text(
                  controller.count.toString(),
                  style: TextStyle(color: Colors.black, fontSize: 24),);
            }
          )
      ),
    );
  }

}
