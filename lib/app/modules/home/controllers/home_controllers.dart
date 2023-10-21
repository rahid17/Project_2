import 'package:get/get.dart';

import 'package:http/http.dart' as http;

class HomeController extends GetxController{
  var arguData ;
  @override
  void onInit() {
    isLoading.value=false;
    
    super.onInit();
  }

  RxBool isLoading =false.obs;
  RxBool gridview = false.obs;

}