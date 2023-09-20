import '../model/productmodells.dart';
import 'package:http/http.dart'as http;

class httpservices{
  static Future<List<Productmodel>>fetchproducts()async{
    var response =await http.get(Uri.parse("https://fakestoreapi.com/products"));
    if(response.statusCode == 200){
      var data =response.body;
      return productmodelFromJson(data);
    }else{
      throw Exception();
    }
    
  }
}