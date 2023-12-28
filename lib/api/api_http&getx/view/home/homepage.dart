import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sept1_batch/api/api_http&getx/controller/product_controller.dart';
import 'package:sept1_batch/api/api_http&getx/view/home/widgets/product_tile.dart';
void main(){
  runApp(GetMaterialApp(home: Homepage(),));
}
class Homepage extends StatelessWidget {

  final productController = Get.put(ProductController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Api..")),
      body: SizedBox(
        child: Obx(() {
          if (productController.isLoading.value) {
            return
            Center(child: CircularProgressIndicator());
          }
          else {
            return GridView.builder(
              itemCount: productController.productList.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4), itemBuilder: (context,index){
            return ProductTile(productController.productList[index]); });
          }
        }),
      ),
    );
  }
}
