import 'package:sept1_batch/api/api_http&getx/model/productmodel.dart';
import 'package:http/http.dart'as http;
class Httpservice{
  static Future<List<Products>>fetchProducts()async{
    var response=await http.get(Uri.parse("https://fakestoreapi.com/products"));
    if(response.statusCode==200){ //success
      var data=response.body;
      return productsFromJson(data);
    }
    else{
      throw Exception();
    }
  }
}