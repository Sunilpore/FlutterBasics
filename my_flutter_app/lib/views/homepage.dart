import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:my_flutter_app/controllers/productcontroller.dart';
import 'package:my_flutter_app/views/product_tile.dart';

class HomePage extends StatelessWidget {
  final ProductController productController = Get.put(ProductController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: Icon(Icons.arrow_back),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              children: [
                Expanded(
                    child: Text('ShopX',
                        style: TextStyle(
                            fontFamily: 'avenir',
                            fontSize: 32,
                            fontWeight: FontWeight.w900))),
                IconButton(
                  icon: Icon(Icons.view_list_rounded),
                  onPressed: () {},
                ),
                IconButton(
                  icon: Icon(Icons.grid_view),
                  onPressed: () {},
                )
              ],
            ),
          ),
          Expanded(
            child: Obx(() {
              //Show Loader
              if (productController.isLoading.value) {
                return Center(child: CircularProgressIndicator());
              }
              else {
                //Hide the Loader, and show data
                return AlignedGridView.count(
                    crossAxisCount: 2,
                    itemCount: productController.productList.length,
                    mainAxisSpacing: 16,
                    crossAxisSpacing: 16,
                    itemBuilder: (context, index) {
                      return ProductTile(productController.productList[index]);
                    });
              }
            }),
          )
        ],
      ),
    );
  }
}
