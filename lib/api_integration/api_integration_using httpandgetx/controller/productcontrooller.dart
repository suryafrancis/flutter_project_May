import 'package:flutter_project_may/api_integration/api_integration_using%20httpandgetx/services/httpservice.dart';
import 'package:get/get.dart';

class productcontroller extends GetxController {
 /// RxBool vari =true.obs;
  var isLoading = true.obs; /// obs=observable .isloading is now in observable state
  var productlist =[].obs;

  @override
  void onInit() {
    loadproducts(); /// to fetch data from service class
    super.onInit();
  }
  
  void loadproducts()async {
    try{
      isLoading(true);
      var products = await httpservices.fetchproducts();
      if(products!=null){
        productlist.value=products;
      }
    }catch(e){
      print(e);
    }finally{
      isLoading(false);
    }
  }

}
