import 'package:get/get.dart';
import 'package:sept1_batch/api/api_http&getx/service/httpservice.dart';

class ProductController extends GetxController{
 // bool isloading=true;
  RxBool isLoading=true.obs;//to monitor or to make observable
  var productList=[].obs;
  @override
  void onInit() {
    load_product();// to fetch data from service class
    super.onInit();
  }

  void load_product() async{
    try{
      isLoading(true);
      var products=await Httpservice.fetchProducts();
      if(products !=null)
        {
        productList.value=products;
        }
    }
    catch(e){
      print(e);
    }
    finally{
      isLoading(false);
    }
  }

}