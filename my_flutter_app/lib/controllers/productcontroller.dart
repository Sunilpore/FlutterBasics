import 'package:get/get.dart';
import '../models/product.dart';
import '../services/RemoteServices.dart';


class ProductController extends GetxController {
  var isLoading = true.obs;
  var productList = List<Product>.empty().obs;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    fetchProducts();

  }

  void fetchProducts() async {
    try {
      isLoading(true);
      var products = await RemoteServices.fetchPorducts();
      if(products != null) {
        productList.value = products;
      }
    } finally {
      isLoading(false);
    }

  }

}